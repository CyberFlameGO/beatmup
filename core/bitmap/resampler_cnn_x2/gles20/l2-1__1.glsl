/*
    Beatmup image and signal processing library
    Copyright (C) 2020, lnstadrum

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/
STRINGIFY(
    uniform sampler2D images[3];
    varying highp vec2 texCoord;
    uniform highp vec2 d1;

    lowp vec4 fetch(sampler2D image, highp float x, highp float y) {
        return texture2D(image, vec2(x, y));
    }

    void main() {
            
        highp float
            x0 = texCoord.x - d1.x,
            x1 = texCoord.x,
            x2 = texCoord.x + d1.x,

            y0 = texCoord.y - d1.y,
            y1 = texCoord.y,
            y2 = texCoord.y + d1.y;

        mediump vec4 sum = vec4(0.460099, -0.520221, -0.069695, 0.102129);
    
        sum += fetch(images[0], x0, y0) * mat4(0.216337,0.048585,0.172845,-0.050494,0.253294,0.361434,0.197293,0.179859,0.995393,-0.104728,0.401546,-0.069335,1.011840,-0.104586,-0.382295,-0.177238);
        sum += fetch(images[0], x1, y0) * mat4(0.049970,-0.041870,0.393968,-0.072097,0.475503,-0.394527,0.155615,0.043286,-0.086905,-0.096064,0.894219,0.181769,-0.565969,0.286126,1.020070,-0.071555);
        sum += fetch(images[0], x2, y0) * mat4(0.007487,-0.006732,0.033530,-0.014374,0.505555,0.018485,-0.248171,-0.099009,-0.092396,0.027009,0.326420,0.187202,-0.312347,0.233754,-0.013766,0.052438);
        sum += fetch(images[0], x0, y1) * mat4(-0.178298,0.168293,0.167854,0.057444,-2.149040,0.092159,-0.395030,0.209075,-0.017940,-0.236226,0.100066,-0.478428,0.820060,0.039786,-0.221191,0.010293);
        sum += fetch(images[0], x1, y1) * mat4(0.007780,-0.682679,0.489358,0.073525,0.246790,-0.048951,0.791693,0.177727,0.134333,0.083849,0.437384,-0.174209,-0.030412,-0.168321,-0.304344,0.038380);
        sum += fetch(images[0], x2, y1) * mat4(0.039058,-0.046418,0.236698,0.037203,0.298576,-0.008442,-0.201355,-0.115490,-0.162417,-0.119439,0.114369,-0.278161,-0.369594,-0.363753,-0.069861,0.062643);
        sum += fetch(images[0], x0, y2) * mat4(0.099392,0.068265,0.040707,-0.014473,0.818130,0.211728,-0.225101,0.540891,-0.384480,0.083533,-0.093370,-0.288248,-1.326077,0.120363,0.013561,-0.049548);
        sum += fetch(images[0], x1, y2) * mat4(-0.038482,0.003558,0.025008,-0.010625,0.718983,-0.104005,0.552564,0.431369,-0.199013,-0.114110,-0.519449,-0.061229,-0.243926,-0.011086,-1.160394,-0.034629);
        sum += fetch(images[0], x2, y2) * mat4(0.021847,-0.082117,0.033217,0.004408,0.538851,-0.151082,-0.097170,0.326111,-0.144409,0.098716,-0.095031,-0.115523,-0.392142,0.003221,0.164104,0.039619);
        sum += fetch(images[1], x0, y0) * mat4(-0.088887,0.037001,0.064464,0.092301,0.257329,0.175136,-0.019480,0.135528,-0.187182,-0.040015,0.164349,0.137540,0.179568,-0.120709,-0.068559,-0.181547);
        sum += fetch(images[1], x1, y0) * mat4(-0.137492,0.066403,0.031708,-0.028940,0.354320,0.230254,0.044575,0.023942,-0.092952,0.158083,0.045233,-0.097951,0.436569,0.364473,0.025669,-0.148698);
        sum += fetch(images[1], x2, y0) * mat4(-0.112866,0.040426,0.070446,0.140225,0.255112,-0.001466,-0.105461,0.209053,-0.133968,-0.006685,0.207958,0.351137,0.068874,-0.059504,-0.147777,0.754369);
        sum += fetch(images[1], x0, y1) * mat4(-0.044903,0.014725,0.115984,0.070818,0.142738,0.212857,-0.036317,0.003351,-0.035928,0.043742,0.334446,0.128989,0.021434,-0.024893,-0.046049,-0.253425);
        sum += fetch(images[1], x1, y1) * mat4(-0.028980,-0.050842,0.141153,-0.123490,0.028551,-2.185515,0.254771,-0.348771,0.003483,-0.156829,0.299197,-0.298249,-0.008165,-0.427374,-0.395879,-0.272429);
        sum += fetch(images[1], x2, y1) * mat4(-0.061080,-0.038029,0.135690,0.108717,0.049773,0.252207,-0.120056,-0.030395,-0.011449,-0.095508,0.279250,-0.174369,0.129465,0.100941,-0.009256,1.117848);
        sum += fetch(images[1], x0, y2) * mat4(-0.201932,0.029218,0.114031,0.054205,-0.400468,0.105571,0.023376,0.227269,0.082624,0.003432,0.070738,0.070999,-0.020063,-0.038993,-0.043082,-0.168214);
        sum += fetch(images[1], x1, y2) * mat4(-0.050700,0.089391,0.081779,0.040186,0.213405,-0.933343,-0.142433,-0.051500,0.349526,0.439309,0.133896,-0.051927,-0.357804,0.652575,-0.261470,-0.128877);
        sum += fetch(images[1], x2, y2) * mat4(0.036317,0.005680,0.101723,0.044844,0.587338,0.065356,-0.156355,-0.190124,-0.132299,0.015101,0.098583,-0.050650,-0.607149,-0.116578,-0.105282,-0.059752);
        sum += fetch(images[2], x0, y0) * mat4(-0.028495,-0.068262,-0.655322,-0.135846,-0.246587,-0.040980,1.029267,0.507758,0.578828,-0.076105,-2.142297,-0.084519,0.264019,0.273096,-0.377106,-0.114988);
        sum += fetch(images[2], x1, y0) * mat4(0.053310,-0.246752,0.106765,-0.318484,-0.019584,0.041988,-0.601575,-0.141876,0.374410,-1.335218,1.038050,0.042439,0.058901,-2.344080,0.519761,0.134494);
        sum += fetch(images[2], x2, y0) * mat4(-0.343542,-0.092017,-0.049315,-0.208097,0.415919,0.067627,0.501075,0.038104,-0.062881,-0.304355,0.932894,0.060659,0.269899,-0.617005,0.166857,0.070046);
        sum += fetch(images[2], x0, y1) * mat4(-0.061508,-0.127056,0.315372,-0.120212,-0.706477,0.716278,0.124710,0.162060,0.292575,-0.021003,0.414078,-0.234194,0.154364,0.089228,0.216695,-0.017033);
        sum += fetch(images[2], x1, y1) * mat4(0.146304,-0.159126,-0.194502,-0.071946,-0.336137,0.503155,-0.199874,-0.044229,0.408487,-0.026307,-0.023950,-0.115183,0.162889,0.443254,0.240476,0.105390);
        sum += fetch(images[2], x2, y1) * mat4(-0.014627,-0.007522,0.094848,-0.046513,0.253139,0.276502,-0.347338,0.015925,-0.605942,-0.226253,0.588600,-0.063858,-0.952103,-0.070302,0.196558,0.054469);
        sum += fetch(images[2], x0, y2) * mat4(-0.063790,-0.021644,0.039549,-0.139082,-0.414963,0.640510,-0.098269,0.179821,0.209192,-0.047371,-0.002895,-0.123964,-0.015227,-0.429315,-0.664657,0.049100);
        sum += fetch(images[2], x1, y2) * mat4(0.112118,-0.096221,0.068950,-0.126502,-1.091185,-1.128189,-1.034084,0.180318,0.298741,0.920988,0.144341,0.092457,0.615032,2.260427,0.933517,0.197750);
        sum += fetch(images[2], x2, y2) * mat4(-0.028048,0.074114,-0.050716,-0.125478,-0.385325,0.259018,-0.323618,0.184731,-0.049549,0.141019,0.272995,-0.056016,-0.021812,-0.591534,0.113132,0.082434);
        gl_FragColor = sum;
    
    }
    )