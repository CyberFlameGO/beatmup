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
    uniform sampler2D[3] inFeatures;
    layout(binding = 0, std430) writeonly buffer outFeatures_ { highp uint data[][4]; } outFeatures;
    void main() {
        lowp vec4 i0, i1, i2, i3, i4, i5, i6, i7, i8;
        mediump vec4 sum0 = vec4(-0.001787, -1.631857, 0.001839, -0.145884);
        mediump vec4 sum1 = vec4(-0.031441, -0.010613, -0.012751, -0.051503);
        i0 = texelFetch(inFeatures[0], ivec2(gl_GlobalInvocationID.xy) + ivec2(-1, -1), 0);
        i1 = texelFetch(inFeatures[0], ivec2(gl_GlobalInvocationID.xy) + ivec2(0, -1), 0);
        i2 = texelFetch(inFeatures[0], ivec2(gl_GlobalInvocationID.xy) + ivec2(1, -1), 0);
        i3 = texelFetch(inFeatures[0], ivec2(gl_GlobalInvocationID.xy) + ivec2(-1, 0), 0);
        i4 = texelFetch(inFeatures[0], ivec2(gl_GlobalInvocationID.xy) + ivec2(0, 0), 0);
        i5 = texelFetch(inFeatures[0], ivec2(gl_GlobalInvocationID.xy) + ivec2(1, 0), 0);
        i6 = texelFetch(inFeatures[0], ivec2(gl_GlobalInvocationID.xy) + ivec2(-1, 1), 0);
        i7 = texelFetch(inFeatures[0], ivec2(gl_GlobalInvocationID.xy) + ivec2(0, 1), 0);
        i8 = texelFetch(inFeatures[0], ivec2(gl_GlobalInvocationID.xy) + ivec2(1, 1), 0);
        sum0 += i0 * mat4(0.022103,0.006185,-0.013747,0.033513,-0.455075,-0.312960,0.344244,-0.786658,0.289927,0.152770,-0.370019,-0.078073,0.287015,-0.025133,-0.222779,-0.019618);
        sum0 += i1 * mat4(0.082610,0.024055,-0.009168,0.021802,-0.794572,-0.587673,0.999626,-0.307345,0.662918,0.574445,-0.432675,-0.058937,1.215070,0.104305,-0.033080,0.277091);
        sum0 += i2 * mat4(-0.006958,-0.007587,0.004300,0.009476,-0.416207,0.053640,-0.318513,-0.996960,0.397725,-0.212866,0.392945,-0.031735,0.257564,-0.033781,0.099618,0.045767);
        sum0 += i3 * mat4(0.163440,-0.063671,0.020729,0.021342,-0.656360,0.006136,0.105371,-0.299311,0.625436,-0.318150,-0.045326,-0.885546,-0.201537,-0.185726,0.494729,-0.243585);
        sum0 += i4 * mat4(0.112237,0.102528,-0.069617,-0.116817,1.099781,-2.815953,-1.415465,-1.139701,0.626439,0.310302,-1.143503,0.025105,-0.784690,-0.542247,1.112435,0.126108);
        sum0 += i5 * mat4(-0.003155,-0.032416,0.010291,0.035596,-0.600765,-0.233971,-0.153363,-0.207162,0.659606,0.233885,-0.321572,-0.584508,-0.091132,0.124211,0.370977,-0.327254);
        sum0 += i6 * mat4(0.024822,-0.005831,-0.004334,0.018215,-0.406780,0.152997,0.556092,-0.767033,0.502326,-0.054610,-0.607127,0.345659,-0.043195,-0.275050,0.298546,-0.150498);
        sum0 += i7 * mat4(0.078862,-0.019738,0.028520,0.014951,-0.704846,0.551221,0.176480,-0.111745,0.606475,-0.263124,0.352454,-0.049562,-1.968547,0.519382,-0.247623,-0.369210);
        sum0 += i8 * mat4(-0.001671,-0.010996,-0.016087,-0.013984,-0.360909,0.516112,-0.766663,-0.908942,0.340368,-0.452719,0.449560,0.424079,-0.061064,0.011620,-0.358897,-0.115086);
        sum1 += i0 * mat4(-0.160608,-0.099572,0.177323,-0.005505,-0.015994,-0.019998,0.032436,-0.005495,0.208567,0.186288,-0.075618,0.164693,0.248607,-0.130713,0.091201,0.238700);
        sum1 += i1 * mat4(-0.654068,-0.807715,0.419663,0.227368,0.085241,-0.003818,-0.030183,0.063206,0.579518,0.368072,-0.412402,-0.294923,0.086025,0.147656,-0.032053,0.132987);
        sum1 += i2 * mat4(-0.141288,-0.027294,-0.223389,-0.013889,0.035366,0.003488,-0.001219,0.041728,0.226543,0.033076,-0.112068,0.165451,-0.266840,-0.205063,0.131053,-0.062626);
        sum1 += i3 * mat4(0.196747,0.104342,0.215669,0.201286,-0.136378,0.071389,-0.064887,0.047669,0.125433,0.112546,0.173818,0.122688,0.479584,-0.505831,0.143145,-0.247322);
        sum1 += i4 * mat4(-2.210140,0.832064,-0.080324,-0.019415,0.105519,-0.234579,0.174820,-0.081376,-2.508358,0.263553,0.590829,-0.201919,-2.688199,0.626725,0.053312,-0.130296);
        sum1 += i5 * mat4(-0.035441,0.083986,0.282131,0.165500,0.330247,0.198087,-0.069487,-0.019126,0.145822,0.118065,0.219200,0.168951,-0.303579,-0.738099,0.024538,0.418419);
        sum1 += i6 * mat4(0.211399,0.035517,-0.053672,0.116474,-0.023892,-0.006434,0.008754,-0.032132,-0.184893,-0.030457,0.029267,0.096395,0.225346,-0.149914,0.186787,0.191579);
        sum1 += i7 * mat4(0.921547,-0.121638,0.294507,-0.348647,0.115289,0.000985,-0.013587,0.020941,-0.325563,0.029510,-0.398100,0.288854,0.061816,0.048925,-0.045264,0.006985);
        sum1 += i8 * mat4(0.062654,0.038827,0.245832,0.121237,0.049172,-0.012440,0.025896,0.034928,-0.189239,0.217706,-0.014461,0.048788,-0.247745,-0.059293,-0.222308,-0.003553);
        i0 = texelFetch(inFeatures[1], ivec2(gl_GlobalInvocationID.xy) + ivec2(-1, -1), 0);
        i1 = texelFetch(inFeatures[1], ivec2(gl_GlobalInvocationID.xy) + ivec2(0, -1), 0);
        i2 = texelFetch(inFeatures[1], ivec2(gl_GlobalInvocationID.xy) + ivec2(1, -1), 0);
        i3 = texelFetch(inFeatures[1], ivec2(gl_GlobalInvocationID.xy) + ivec2(-1, 0), 0);
        i4 = texelFetch(inFeatures[1], ivec2(gl_GlobalInvocationID.xy) + ivec2(0, 0), 0);
        i5 = texelFetch(inFeatures[1], ivec2(gl_GlobalInvocationID.xy) + ivec2(1, 0), 0);
        i6 = texelFetch(inFeatures[1], ivec2(gl_GlobalInvocationID.xy) + ivec2(-1, 1), 0);
        i7 = texelFetch(inFeatures[1], ivec2(gl_GlobalInvocationID.xy) + ivec2(0, 1), 0);
        i8 = texelFetch(inFeatures[1], ivec2(gl_GlobalInvocationID.xy) + ivec2(1, 1), 0);
        sum0 += i0 * mat4(-0.010597,0.003060,-0.003411,0.011847,0.347654,-0.688249,-0.307770,-0.110482,-0.451252,-0.040414,0.386703,-0.190575,-0.269684,0.255937,0.021081,-0.215296);
        sum0 += i1 * mat4(-0.002238,-0.005117,0.005766,-0.006209,0.069466,-0.805198,-0.376285,-0.647337,-0.141125,0.077909,0.280249,0.346754,-0.122916,0.357813,0.091870,-0.190199);
        sum0 += i2 * mat4(-0.003948,0.000645,-0.001762,-0.002780,0.420898,-0.704666,-0.452252,-0.014967,-0.402475,-0.103698,0.421412,-0.008092,-0.262531,0.241050,0.066453,-0.454631);
        sum0 += i3 * mat4(-0.028296,-0.030263,0.017920,0.026762,0.372433,-0.357293,-0.482231,0.413903,-0.523608,-1.000112,0.344313,-0.140204,-0.056195,0.037876,-0.016685,-0.186531);
        sum0 += i4 * mat4(0.021363,-0.003594,-0.004220,-0.052982,-0.005824,-0.043049,-0.738465,-0.529234,0.791340,-0.227094,0.055711,0.454847,-0.281468,0.398771,-0.168935,-0.104714);
        sum0 += i5 * mat4(0.011350,0.013286,-0.009951,0.020804,0.564908,-0.935621,-0.544477,0.498363,-0.411895,-0.277967,0.614222,-0.743859,-0.195816,0.143476,0.000522,-0.068821);
        sum0 += i6 * mat4(-0.011737,-0.012808,-0.000766,0.016909,0.545221,-0.364319,-0.280633,-1.015837,-0.570591,-0.379193,0.321171,-0.079770,-0.103373,0.388025,-0.079586,-0.250500);
        sum0 += i7 * mat4(-0.014635,-0.004720,0.002223,-0.033203,0.138351,-0.626782,-0.281613,-0.570029,-0.249748,-0.899883,0.281783,-0.135376,-0.140706,-0.277112,-0.047077,-0.412648);
        sum0 += i8 * mat4(-0.002501,0.000760,-0.003880,0.009762,0.415341,0.045509,-0.339575,-0.109761,-0.511253,-0.574210,0.382713,-0.147214,-0.053577,0.128751,-0.156688,-0.008596);
        sum1 += i0 * mat4(0.066499,0.115361,-0.010719,-0.126971,0.005102,0.011498,0.002263,-0.039607,-0.141880,-0.078614,0.094886,-0.061619,-0.186259,-0.027988,0.038202,0.282182);
        sum1 += i1 * mat4(0.115707,0.240576,-0.119460,-0.291740,0.002890,0.009270,0.005231,0.046727,-0.324075,-0.168078,0.196653,0.142681,-0.092373,-0.108980,0.009295,0.014956);
        sum1 += i2 * mat4(-0.030565,0.014136,0.026416,-0.162595,-0.012254,0.013497,-0.006492,0.025820,-0.092813,-0.014697,0.046959,-0.035877,0.101740,-0.045095,-0.043834,0.238909);
        sum1 += i3 * mat4(-0.107499,-0.100821,0.056119,-0.002806,0.045238,0.050869,-0.031763,-0.020434,-0.042550,0.051857,0.064961,0.002156,-0.335789,-0.479282,0.215746,0.232664);
        sum1 += i4 * mat4(-0.078865,-0.461638,-0.167304,-0.072744,0.032343,0.017518,-0.022964,0.106702,-0.353553,0.359897,-0.279174,-0.105352,-0.639166,-0.371603,-0.415886,-0.453145);
        sum1 += i5 * mat4(0.019714,0.006327,-0.047019,-0.062801,-0.071816,-0.053353,0.042543,-0.126030,0.054526,0.010832,-0.010919,0.029518,0.229374,0.249512,-0.195635,0.530278);
        sum1 += i6 * mat4(-0.151947,-0.071713,0.015743,-0.190134,0.003037,0.019625,0.002576,-0.034908,0.091297,-0.019406,0.007911,0.003111,-0.141060,-0.321790,0.080186,0.328682);
        sum1 += i7 * mat4(-0.370042,0.218496,0.162820,-0.095259,-0.017337,0.005131,0.011239,0.089209,0.230756,-0.399303,-0.171432,-0.080968,-0.080076,-0.413437,-0.038481,-0.390486);
        sum1 += i8 * mat4(-0.051201,-0.116232,0.034829,-0.130034,-0.014815,-0.032132,-0.001426,-0.045966,0.117005,-0.066419,0.031915,-0.148782,0.122457,0.178909,-0.057564,0.275499);
        i0 = texelFetch(inFeatures[2], ivec2(gl_GlobalInvocationID.xy) + ivec2(-1, -1), 0);
        i1 = texelFetch(inFeatures[2], ivec2(gl_GlobalInvocationID.xy) + ivec2(0, -1), 0);
        i2 = texelFetch(inFeatures[2], ivec2(gl_GlobalInvocationID.xy) + ivec2(1, -1), 0);
        i3 = texelFetch(inFeatures[2], ivec2(gl_GlobalInvocationID.xy) + ivec2(-1, 0), 0);
        i4 = texelFetch(inFeatures[2], ivec2(gl_GlobalInvocationID.xy) + ivec2(0, 0), 0);
        i5 = texelFetch(inFeatures[2], ivec2(gl_GlobalInvocationID.xy) + ivec2(1, 0), 0);
        i6 = texelFetch(inFeatures[2], ivec2(gl_GlobalInvocationID.xy) + ivec2(-1, 1), 0);
        i7 = texelFetch(inFeatures[2], ivec2(gl_GlobalInvocationID.xy) + ivec2(0, 1), 0);
        i8 = texelFetch(inFeatures[2], ivec2(gl_GlobalInvocationID.xy) + ivec2(1, 1), 0);
        sum0 += i0 * mat4(0.009886,-0.011740,-0.002816,0.015019,-0.019187,0.352395,0.714150,0.078341,-0.118016,-0.162430,-0.515202,-0.268666,0.101091,-0.019654,0.004124,0.140452);
        sum0 += i1 * mat4(-0.011505,0.002192,-0.023103,0.039678,-0.689487,0.668986,-1.293609,-0.325427,-0.217707,-0.745210,-0.313092,0.183576,0.137774,-0.368331,-0.152271,-0.429389);
        sum0 += i2 * mat4(-0.001211,0.008954,0.015833,-0.003828,0.031543,-0.128020,0.210631,0.105078,-0.081914,-0.130697,-0.312470,-0.038429,-0.208380,0.034458,0.035638,0.152321);
        sum0 += i3 * mat4(0.080802,0.001634,-0.020547,0.054696,-0.304470,-0.691827,0.396198,0.102368,0.432922,0.002699,-0.297940,-0.102854,-0.163094,0.634526,-0.007032,0.066479);
        sum0 += i4 * mat4(-0.167106,-0.019339,0.036052,0.724240,-1.449202,-0.838388,-1.094259,2.658470,0.328854,-0.018653,-0.142716,-10.866259,-0.394008,0.878369,0.184898,-0.205512);
        sum0 += i5 * mat4(0.022182,0.005645,-0.015520,0.039655,0.354596,-0.242731,-0.249333,0.137924,-0.191675,0.454394,0.409164,-0.106524,-0.543893,0.158697,-0.205993,-0.167306);
        sum0 += i6 * mat4(0.004520,0.013730,-0.006397,0.022405,-0.213952,-0.913279,0.006708,0.107941,0.017771,1.108734,0.277613,-0.133116,-0.647548,-0.809719,-0.011624,-0.082519);
        sum0 += i7 * mat4(-0.038249,-0.005642,-0.011084,0.074432,-0.941741,-0.775895,-0.091562,-0.388311,-0.599360,0.411140,-0.263865,0.245313,0.077948,0.264976,-0.359187,0.440421);
        sum0 += i8 * mat4(0.008717,0.007825,0.000702,0.020414,0.586195,0.398244,-0.183908,0.093256,-0.237092,-0.405363,-0.008131,-0.099774,0.046379,0.211037,0.115421,0.092018);
        sum1 += i0 * mat4(-0.085694,-0.243475,0.054398,0.113842,-0.015701,0.007561,0.012882,-0.002954,-0.060709,-0.396906,-0.033476,-0.073137,0.063893,-0.158933,-0.096935,0.072241);
        sum1 += i1 * mat4(-0.205530,0.005176,0.147164,-0.147187,0.049117,-0.008079,0.033607,0.028374,-0.021227,-0.223636,-0.399007,0.201499,0.043702,0.187811,0.160621,0.009254);
        sum1 += i2 * mat4(0.014937,-0.111621,0.152334,-0.052157,0.005408,-0.013796,-0.052202,0.024533,0.068176,0.010762,-0.288498,0.065484,0.020751,-0.122231,-0.002512,-0.123270);
        sum1 += i3 * mat4(0.072457,-0.211894,-0.028410,0.035829,-0.093419,0.022601,0.034615,0.025986,0.196243,0.379121,0.016230,-0.069788,0.341241,0.025569,-0.180052,0.011504);
        sum1 += i4 * mat4(0.196217,0.172450,0.180646,0.193471,0.411245,0.006052,-0.063782,0.697410,0.251429,0.443924,-0.236015,-0.090836,0.588776,0.034560,0.671239,0.031074);
        sum1 += i5 * mat4(0.074440,0.060847,0.053794,0.036744,-0.164393,-0.031326,0.056777,0.057577,-0.081085,-0.078481,-0.166011,0.028406,0.157746,-0.214200,-0.695935,0.013593);
        sum1 += i6 * mat4(0.024339,0.132090,0.077492,-0.035798,-0.004197,-0.025864,0.013492,-0.021227,-0.089434,-0.114011,0.001814,0.007507,0.048599,0.411535,-0.034425,0.115794);
        sum1 += i7 * mat4(0.041168,-0.028175,-0.338109,-0.115401,0.079133,0.054451,0.013281,0.075409,-0.244926,-0.334446,0.226499,-0.122978,0.143592,-0.336636,0.196010,-0.105503);
        sum1 += i8 * mat4(-0.134714,-0.203708,-0.145832,-0.054891,-0.036981,-0.021661,-0.035964,0.020017,-0.038885,0.052254,0.219713,-0.005983,0.156282,-0.147494,-0.133407,-0.039087);
        highp uint bufIdx = gl_GlobalInvocationID.y * gl_NumWorkGroups.x * gl_WorkGroupSize.x + gl_GlobalInvocationID.x;
        outFeatures.data[bufIdx][2] = packUnorm4x8(sum0);
        outFeatures.data[bufIdx][3] = packUnorm4x8(sum1);
    }
    )