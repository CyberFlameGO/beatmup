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
            layout(binding = 0, std430) writeonly buffer outFeatures_ { highp uint data[][8]; } outFeatures;
            void main() {
                highp ivec2
                    p0 = ivec2(gl_GlobalInvocationID.xy) + ivec2(-1, -1),
                    p1 = ivec2(gl_GlobalInvocationID.xy) + ivec2( 0, -1),
                    p2 = ivec2(gl_GlobalInvocationID.xy) + ivec2(+1, -1),
                    p3 = ivec2(gl_GlobalInvocationID.xy) + ivec2(-1,  0),
                    p4 = ivec2(gl_GlobalInvocationID.xy) + ivec2( 0,  0),
                    p5 = ivec2(gl_GlobalInvocationID.xy) + ivec2(+1,  0),
                    p6 = ivec2(gl_GlobalInvocationID.xy) + ivec2(-1, +1),
                    p7 = ivec2(gl_GlobalInvocationID.xy) + ivec2( 0, +1),
                    p8 = ivec2(gl_GlobalInvocationID.xy) + ivec2(+1, +1);
                lowp vec4 i0, i1, i2, i3, i4, i5, i6, i7, i8;
                mediump vec4 sum1 = vec4(0.168352,-0.005192,0.081526,0.081026), sum2 = vec4(0.044748,-0.000532,0.053758,0.05707);
                i0 = texelFetch(inFeatures[0], p0, 0);
                i1 = texelFetch(inFeatures[0], p1, 0);
                i2 = texelFetch(inFeatures[0], p2, 0);
                i3 = texelFetch(inFeatures[0], p3, 0);
                i4 = texelFetch(inFeatures[0], p4, 0);
                i5 = texelFetch(inFeatures[0], p5, 0);
                i6 = texelFetch(inFeatures[0], p6, 0);
                i7 = texelFetch(inFeatures[0], p7, 0);
                i8 = texelFetch(inFeatures[0], p8, 0);
                sum1 += vec4(
                    dot(vec4(-0.139366,0.095074,-0.047440,0.094433), i0) + dot(vec4(0.107059,0.283902,0.062197,-0.009525), i1) + dot(vec4(0.075559,-0.090224,0.237829,-0.045756), i2) + dot(vec4(0.030084,0.127627,-0.509676,-0.143006), i3) + dot(vec4(-0.278554,-0.243601,-0.087515,-0.032417), i4) + dot(vec4(0.087161,-0.033162,0.029038,-0.027864), i5) + dot(vec4(-0.057916,-0.219001,0.136260,-0.000539), i6) + dot(vec4(0.105140,0.390563,-0.079258,0.090428), i7) + dot(vec4(0.015395,-0.052464,0.057905,0.024839), i8),
                    dot(vec4(0.205377,-0.026621,-0.199349,-0.139147), i0) + dot(vec4(-0.193443,-0.184482,-0.060981,0.200251), i1) + dot(vec4(-0.189453,-0.002217,0.259758,-0.042836), i2) + dot(vec4(-0.328283,0.112332,-0.234526,-0.214939), i3) + dot(vec4(-1.956696,0.118474,0.093646,0.175723), i4) + dot(vec4(-0.153881,0.112467,0.447089,0.064368), i5) + dot(vec4(-0.097566,0.032367,-0.219575,-0.022215), i6) + dot(vec4(-0.108436,-0.597779,0.000967,-0.038579), i7) + dot(vec4(-0.330699,0.174290,0.043632,-0.111780), i8),
                    dot(vec4(-0.106727,-0.138018,-0.013196,-0.101762), i0) + dot(vec4(-0.269780,-0.188446,0.094326,0.278444), i1) + dot(vec4(-0.308878,-0.010460,0.047944,0.256422), i2) + dot(vec4(-0.260004,0.073176,-0.121750,0.090378), i3) + dot(vec4(-0.113633,0.056764,0.069470,0.100165), i4) + dot(vec4(-0.118557,0.121270,0.106562,0.006617), i5) + dot(vec4(-0.035879,-0.132456,-0.023937,-0.123284), i6) + dot(vec4(-0.060349,-0.099564,-0.104273,-0.089804), i7) + dot(vec4(-0.052233,0.257325,-0.019090,-0.137542), i8),
                    dot(vec4(0.006801,-0.109171,-0.029734,0.139432), i0) + dot(vec4(0.172345,-0.173756,0.139617,-0.067411), i1) + dot(vec4(0.213982,-0.021066,0.051377,-0.041880), i2) + dot(vec4(-0.016036,0.275519,-0.052273,0.035884), i3) + dot(vec4(-0.065571,0.108165,-0.133202,-0.008517), i4) + dot(vec4(0.176319,-0.247215,-0.247592,0.021958), i5) + dot(vec4(-0.034044,0.243095,-0.159949,0.057975), i6) + dot(vec4(-0.062745,-0.077011,-0.086260,0.035159), i7) + dot(vec4(0.115164,-0.092681,0.136150,-0.034307), i8)
                );
                sum2 += vec4(
                    dot(vec4(-0.088302,-0.129165,0.125743,0.112819), i0) + dot(vec4(0.154777,-0.180147,0.101379,0.028543), i1) + dot(vec4(0.256924,-0.055917,-0.012846,-0.105168), i2) + dot(vec4(0.007011,0.012471,0.029208,0.142502), i3) + dot(vec4(0.000904,0.384291,-0.025687,0.184800), i4) + dot(vec4(0.167395,-0.178654,-0.417388,0.024459), i5) + dot(vec4(0.017936,0.120635,0.086691,0.157768), i6) + dot(vec4(0.211484,0.265498,-0.049509,0.092047), i7) + dot(vec4(0.055454,-0.108370,0.261213,0.110845), i8),
                    dot(vec4(-0.248438,0.000637,0.135215,0.213098), i0) + dot(vec4(-0.241048,-0.052820,0.082973,-0.054512), i1) + dot(vec4(-0.239433,0.200549,-0.038325,-0.105303), i2) + dot(vec4(-0.121059,0.042643,0.140401,0.223244), i3) + dot(vec4(-0.370892,0.123078,-0.025971,-0.206882), i4) + dot(vec4(0.024157,0.060579,-0.120787,0.171466), i5) + dot(vec4(-0.188829,0.014991,0.048126,0.049347), i6) + dot(vec4(0.086480,-0.044341,0.076141,0.104079), i7) + dot(vec4(-0.128811,0.038457,-0.146290,-0.033033), i8),
                    dot(vec4(-0.291969,-0.120031,-0.022244,0.085847), i0) + dot(vec4(-0.082193,0.120099,-0.107902,0.059232), i1) + dot(vec4(-0.069620,0.001279,0.067689,0.052180), i2) + dot(vec4(-0.339010,0.300364,0.164986,0.107139), i3) + dot(vec4(-0.144993,-0.086256,0.031046,-0.075388), i4) + dot(vec4(0.152870,0.044552,0.152937,0.034463), i5) + dot(vec4(-0.009275,0.236048,-0.183628,0.074404), i6) + dot(vec4(0.230172,-0.126631,-0.005547,0.149466), i7) + dot(vec4(-0.046406,-0.038206,-0.049229,0.028725), i8),
                    dot(vec4(0.074871,0.241095,-0.078005,0.100706), i0) + dot(vec4(0.290178,0.000451,-0.150633,-0.291780), i1) + dot(vec4(0.089577,-0.119555,0.092580,-0.167199), i2) + dot(vec4(0.177500,0.037918,-0.023324,-0.296267), i3) + dot(vec4(-0.389947,0.133624,-0.046936,-0.285017), i4) + dot(vec4(0.150933,0.031310,0.115417,-0.057564), i5) + dot(vec4(-0.055686,0.035751,-0.025313,-0.021739), i6) + dot(vec4(0.026336,-0.015743,0.031576,-0.067538), i7) + dot(vec4(0.022116,0.144016,0.140165,-0.030599), i8)
                );
                i0 = texelFetch(inFeatures[1], p0, 0);
                i1 = texelFetch(inFeatures[1], p1, 0);
                i2 = texelFetch(inFeatures[1], p2, 0);
                i3 = texelFetch(inFeatures[1], p3, 0);
                i4 = texelFetch(inFeatures[1], p4, 0);
                i5 = texelFetch(inFeatures[1], p5, 0);
                i6 = texelFetch(inFeatures[1], p6, 0);
                i7 = texelFetch(inFeatures[1], p7, 0);
                i8 = texelFetch(inFeatures[1], p8, 0);
                sum1 += vec4(
                    dot(vec4(-0.147407,0.032930,-0.106186,0.196675), i0) + dot(vec4(-0.411581,-0.000643,0.007347,0.560744), i1) + dot(vec4(0.226118,0.025375,0.031405,0.219875), i2) + dot(vec4(-0.141226,-0.036462,-0.149128,0.264895), i3) + dot(vec4(0.328147,-0.072475,-0.036728,0.337006), i4) + dot(vec4(0.103758,-0.053413,0.044291,0.267285), i5) + dot(vec4(0.021342,-0.001857,-0.038858,0.148745), i6) + dot(vec4(-0.154372,0.005711,-0.197489,0.196448), i7) + dot(vec4(0.198836,0.022764,0.002339,0.021552), i8),
                    dot(vec4(0.062601,0.053409,0.079910,0.232216), i0) + dot(vec4(-0.205972,-0.031332,-0.064909,0.359655), i1) + dot(vec4(-0.077266,0.098270,0.110267,0.251525), i2) + dot(vec4(0.419161,0.089694,0.147458,0.156986), i3) + dot(vec4(-0.118279,0.039828,-0.018893,0.641857), i4) + dot(vec4(-0.057275,-0.028359,-0.009714,0.135866), i5) + dot(vec4(0.155369,-0.135820,-0.211305,0.008940), i6) + dot(vec4(-0.019128,-0.017586,-0.016964,0.175448), i7) + dot(vec4(0.016412,0.221958,-0.019876,0.055255), i8),
                    dot(vec4(-0.146104,-0.004702,-0.078880,0.205102), i0) + dot(vec4(-0.279987,0.015586,0.009026,0.543805), i1) + dot(vec4(-0.105048,-0.028962,0.017541,-0.027737), i2) + dot(vec4(0.111727,-0.079392,-0.004665,0.057095), i3) + dot(vec4(-0.012546,0.065825,0.024273,0.410812), i4) + dot(vec4(0.012102,0.002809,0.048013,-0.007811), i5) + dot(vec4(0.141993,-0.290008,-0.017241,0.119933), i6) + dot(vec4(0.077538,0.222898,-0.034746,0.208426), i7) + dot(vec4(0.176854,-0.058388,0.172367,0.066122), i8),
                    dot(vec4(0.104754,0.074408,-0.023322,-0.055272), i0) + dot(vec4(0.184214,0.016322,-0.054872,0.447894), i1) + dot(vec4(0.065350,0.104354,0.200909,0.288025), i2) + dot(vec4(0.017726,0.148928,-0.127823,0.156343), i3) + dot(vec4(-0.027821,-0.029951,0.003788,0.594375), i4) + dot(vec4(0.004465,-0.002628,0.170599,0.356663), i5) + dot(vec4(-0.027763,0.125784,-0.039803,0.024684), i6) + dot(vec4(-0.141296,-0.540421,-0.014537,0.222227), i7) + dot(vec4(-0.018487,-0.012533,0.330431,0.219762), i8)
                );
                sum2 += vec4(
                    dot(vec4(0.091940,0.081711,0.096370,0.091084), i0) + dot(vec4(-0.003816,0.093118,0.094565,0.524779), i1) + dot(vec4(-0.092106,0.088437,0.227159,0.211467), i2) + dot(vec4(0.129559,0.044009,-0.084700,0.216282), i3) + dot(vec4(0.216688,-0.000912,-0.094510,0.363408), i4) + dot(vec4(0.268804,-0.006782,-0.038434,0.092042), i5) + dot(vec4(-0.048266,0.035091,-0.156968,0.114631), i6) + dot(vec4(-0.153599,-0.423314,0.161058,0.089614), i7) + dot(vec4(-0.134906,0.139522,-0.068960,-0.000737), i8),
                    dot(vec4(-0.121372,-0.041460,0.041787,-0.080664), i0) + dot(vec4(0.203500,0.012765,-0.075371,-0.123308), i1) + dot(vec4(-0.061778,0.063264,0.018035,-0.304414), i2) + dot(vec4(-0.011337,0.055383,-0.003346,-0.118295), i3) + dot(vec4(-0.193046,0.129883,-0.262814,-0.060076), i4) + dot(vec4(-0.140739,-0.047225,0.036176,0.248080), i5) + dot(vec4(0.103804,0.307072,-0.016687,-0.030576), i6) + dot(vec4(0.043617,-0.351184,-0.123096,0.153709), i7) + dot(vec4(-0.161424,-0.062491,0.089589,0.010153), i8),
                    dot(vec4(-0.142502,0.062920,-0.013943,-0.083815), i0) + dot(vec4(0.253296,0.148790,0.157276,0.456326), i1) + dot(vec4(0.059765,0.069912,0.051443,-0.157958), i2) + dot(vec4(0.078232,-0.194984,0.049502,-0.050091), i3) + dot(vec4(-0.087488,-0.092684,-0.187822,0.041658), i4) + dot(vec4(0.135669,-0.044905,-0.074649,0.067018), i5) + dot(vec4(0.151985,-0.064963,0.161490,0.079656), i6) + dot(vec4(-0.098757,-0.269562,0.213480,0.054018), i7) + dot(vec4(0.215665,0.143098,0.058880,-0.059309), i8),
                    dot(vec4(0.024473,-0.013132,-0.045254,0.061002), i0) + dot(vec4(0.061330,-0.067376,-0.094721,-0.044935), i1) + dot(vec4(0.132518,0.021041,0.026594,-0.228210), i2) + dot(vec4(-0.316377,-0.057140,0.042685,0.221942), i3) + dot(vec4(0.085480,-0.117530,0.094501,-0.058037), i4) + dot(vec4(-0.090463,-0.013142,0.218815,-0.002474), i5) + dot(vec4(0.062281,-0.010048,-0.041314,0.182840), i6) + dot(vec4(-0.112348,0.291734,-0.022304,0.193469), i7) + dot(vec4(0.426959,-0.016130,0.046541,0.100881), i8)
                );
                i0 = texelFetch(inFeatures[2], p0, 0);
                i1 = texelFetch(inFeatures[2], p1, 0);
                i2 = texelFetch(inFeatures[2], p2, 0);
                i3 = texelFetch(inFeatures[2], p3, 0);
                i4 = texelFetch(inFeatures[2], p4, 0);
                i5 = texelFetch(inFeatures[2], p5, 0);
                i6 = texelFetch(inFeatures[2], p6, 0);
                i7 = texelFetch(inFeatures[2], p7, 0);
                i8 = texelFetch(inFeatures[2], p8, 0);
                sum1 += vec4(
                    dot(vec4(0.048735,-0.083311,-0.223379,0.116152), i0) + dot(vec4(0.043038,0.132049,0.086586,-0.187474), i1) + dot(vec4(0.142232,-0.029546,-0.112239,-0.007172), i2) + dot(vec4(-0.063507,0.053079,-0.158457,0.368088), i3) + dot(vec4(0.516213,-0.068392,0.202606,-0.297693), i4) + dot(vec4(-0.050940,0.239374,-0.109645,0.137138), i5) + dot(vec4(-0.625525,0.067148,-0.015460,-0.123544), i6) + dot(vec4(0.164509,0.058784,-0.241289,-0.099600), i7) + dot(vec4(0.134163,0.056386,-0.043328,0.092864), i8),
                    dot(vec4(-0.000334,-0.221445,0.115405,-0.159022), i0) + dot(vec4(-0.095107,-0.128515,-0.456772,0.235191), i1) + dot(vec4(0.056748,-0.236945,-0.267035,0.223143), i2) + dot(vec4(0.301757,-0.286937,0.181874,-0.254108), i3) + dot(vec4(-0.402038,-0.157968,0.005194,0.118927), i4) + dot(vec4(0.165943,-0.203031,-0.230695,-0.370971), i5) + dot(vec4(0.641168,-0.224242,-0.355052,0.251918), i6) + dot(vec4(-0.763640,-0.177698,-0.268718,-0.149479), i7) + dot(vec4(0.253968,-0.398267,-0.266211,0.015481), i8),
                    dot(vec4(0.108440,0.040536,0.049567,0.112488), i0) + dot(vec4(0.060637,0.005174,-0.114440,-0.083561), i1) + dot(vec4(0.138028,0.087031,0.114215,0.183726), i2) + dot(vec4(0.018351,-0.009368,0.048723,-0.127600), i3) + dot(vec4(-0.268315,0.138965,0.250905,-0.177615), i4) + dot(vec4(0.191954,0.101766,-0.022638,-0.086184), i5) + dot(vec4(0.427813,0.035336,0.040682,0.098558), i6) + dot(vec4(-0.165364,0.271818,0.047555,-0.088352), i7) + dot(vec4(0.033297,-0.032032,0.071422,0.138070), i8),
                    dot(vec4(-0.019706,-0.005986,0.082176,-0.074846), i0) + dot(vec4(0.046088,0.144517,-0.065482,0.051895), i1) + dot(vec4(-0.171775,0.082364,-0.084536,-0.067851), i2) + dot(vec4(0.701532,0.015242,0.062073,0.023477), i3) + dot(vec4(-0.284542,0.173720,0.032267,0.209214), i4) + dot(vec4(0.012005,0.025400,0.023714,-0.123014), i5) + dot(vec4(-0.370439,-0.055894,-0.175289,0.059555), i6) + dot(vec4(0.431317,0.055938,-0.176138,-0.183856), i7) + dot(vec4(-0.317103,0.198809,0.020929,0.227845), i8)
                );
                sum2 += vec4(
                    dot(vec4(0.369036,-0.188577,-0.156822,-0.466285), i0) + dot(vec4(0.018590,0.095618,-0.013271,0.127948), i1) + dot(vec4(-0.153496,-0.101507,-0.015320,0.222097), i2) + dot(vec4(0.152551,-0.121926,-0.003246,-0.121033), i3) + dot(vec4(-0.229590,0.063704,-0.056960,-0.200616), i4) + dot(vec4(0.062114,-0.092374,-0.067257,-0.025257), i5) + dot(vec4(0.514800,-0.044423,-0.112733,0.091864), i6) + dot(vec4(-0.112519,0.136511,-0.310520,0.611551), i7) + dot(vec4(-0.158352,-0.289160,-0.005076,-0.312632), i8),
                    dot(vec4(0.057211,-0.107274,-0.070607,-0.071678), i0) + dot(vec4(0.127262,0.074692,0.025553,-0.045897), i1) + dot(vec4(0.044701,-0.221968,0.066035,0.034264), i2) + dot(vec4(0.247417,-0.016340,0.191528,-0.150592), i3) + dot(vec4(0.128398,0.140400,0.424790,0.267753), i4) + dot(vec4(0.034694,0.151108,-0.211450,-0.112934), i5) + dot(vec4(-0.141566,0.036550,0.038595,0.076790), i6) + dot(vec4(0.118873,0.159079,-0.055881,0.071356), i7) + dot(vec4(0.042991,0.100862,-0.099555,-0.100958), i8),
                    dot(vec4(0.009138,-0.186469,0.015215,0.218106), i0) + dot(vec4(0.067676,0.053309,-0.087184,-0.014037), i1) + dot(vec4(0.025292,-0.229608,0.184537,-0.120972), i2) + dot(vec4(0.278313,-0.010194,-0.144211,-0.175801), i3) + dot(vec4(0.071689,0.208607,-0.008306,0.203333), i4) + dot(vec4(-0.081072,-0.009766,-0.276343,0.267480), i5) + dot(vec4(0.156870,0.119612,0.040541,-0.053959), i6) + dot(vec4(-0.274558,0.226879,-0.034186,-0.155033), i7) + dot(vec4(0.321924,-0.282956,-0.032628,0.037954), i8),
                    dot(vec4(-0.054087,0.147423,0.016219,-0.172360), i0) + dot(vec4(-0.106327,0.312858,-0.018396,0.308489), i1) + dot(vec4(0.033545,0.052327,0.018209,0.104135), i2) + dot(vec4(-0.087202,0.279387,-0.114841,-0.169907), i3) + dot(vec4(0.199792,0.254839,-0.122329,-0.221107), i4) + dot(vec4(0.111020,0.334598,0.023172,-0.072286), i5) + dot(vec4(0.286987,0.020208,0.036481,0.260893), i6) + dot(vec4(0.102155,0.235916,-0.054672,0.047657), i7) + dot(vec4(-0.148873,0.009972,0.194073,0.158218), i8)
                );
                highp uint bufIdx = gl_GlobalInvocationID.y * gl_NumWorkGroups.x * gl_WorkGroupSize.x + gl_GlobalInvocationID.x;
                outFeatures.data[bufIdx][2] = packUnorm4x8(sum1);
                outFeatures.data[bufIdx][3] = packUnorm4x8(sum2);
            }
        )
