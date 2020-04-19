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
            
        lowp vec4 i0, i1, i2, i3, i4, i5, i6, i7, i8;
        mediump vec4 sum;
    
            i0 = fetch(images[0], x0, y0);
            i1 = fetch(images[0], x1, y0);
            i2 = fetch(images[0], x2, y0);
            i3 = fetch(images[0], x0, y1);
            i4 = fetch(images[0], x1, y1);
            i5 = fetch(images[0], x2, y1);
            i6 = fetch(images[0], x0, y2);
            i7 = fetch(images[0], x1, y2);
            i8 = fetch(images[0], x2, y2);
        
            sum = vec4(
                dot(vec4(-0.027896, -0.100592, 0.024679, -0.100503), i0)
                + dot(vec4(0.001530, 0.073489, -0.013329, 0.319300), i1)
                + dot(vec4(0.066923, 0.051562, -0.012464, -0.012136), i2)
                + dot(vec4(0.134521, 0.080986, -0.367566, -0.236504), i3)
                + dot(vec4(0.032168, 0.210544, -0.552220, -0.316454), i4)
                + dot(vec4(-0.024033, 0.014149, 0.001580, 0.014559), i5)
                + dot(vec4(-0.196370, 0.005808, 0.052983, 0.419597), i6)
                + dot(vec4(0.049106, -0.322054, 0.320041, -0.075389), i7)
                + dot(vec4(0.044538, -0.070241, 0.095220, -0.050140), i8),
                dot(vec4(-0.067180, -0.117988, 0.201368, 0.081214), i0)
                + dot(vec4(-0.097350, -0.106726, 0.101724, 0.142287), i1)
                + dot(vec4(-0.012537, 0.077513, 0.095434, -0.023111), i2)
                + dot(vec4(0.070118, 0.101449, -0.182332, -0.246950), i3)
                + dot(vec4(0.118436, 0.380028, -0.356060, -0.047223), i4)
                + dot(vec4(-0.065255, 0.080371, -0.107959, 0.026611), i5)
                + dot(vec4(-0.003169, 0.023076, -0.050818, -0.166742), i6)
                + dot(vec4(0.033098, -0.077969, 0.149768, -0.004260), i7)
                + dot(vec4(0.015588, -0.157368, 0.197049, 0.086423), i8),
                dot(vec4(0.013846, 0.143380, -0.050948, -0.176483), i0)
                + dot(vec4(0.241400, 0.286350, 0.004786, -0.316338), i1)
                + dot(vec4(0.122477, -0.069258, 0.082043, 0.245262), i2)
                + dot(vec4(0.070811, -0.026444, -0.107724, 0.277233), i3)
                + dot(vec4(-0.214570, -0.138145, 0.056149, 0.164384), i4)
                + dot(vec4(0.069378, -0.050942, 0.077909, 0.013207), i5)
                + dot(vec4(0.117957, 0.035473, 0.061275, -0.070252), i6)
                + dot(vec4(0.141497, 0.066442, 0.034624, 0.001072), i7)
                + dot(vec4(-0.019154, 0.076242, -0.062677, -0.022629), i8),
                dot(vec4(-0.026057, 0.075359, -0.052907, -0.153731), i0)
                + dot(vec4(0.059780, 0.066697, -0.211806, 0.002511), i1)
                + dot(vec4(0.124541, -0.114077, 0.031317, 0.051058), i2)
                + dot(vec4(0.030128, -0.057699, -0.375400, 0.130511), i3)
                + dot(vec4(0.130266, 0.053592, 0.141025, -0.330049), i4)
                + dot(vec4(-0.130569, -0.005847, -0.089104, 0.026834), i5)
                + dot(vec4(0.011921, -0.078682, 0.084066, 0.108067), i6)
                + dot(vec4(-0.230399, -0.011898, 0.009004, 0.269939), i7)
                + dot(vec4(0.166327, -0.097803, 0.171567, -0.083950), i8)
            );
        
            i0 = fetch(images[1], x0, y0);
            i1 = fetch(images[1], x1, y0);
            i2 = fetch(images[1], x2, y0);
            i3 = fetch(images[1], x0, y1);
            i4 = fetch(images[1], x1, y1);
            i5 = fetch(images[1], x2, y1);
            i6 = fetch(images[1], x0, y2);
            i7 = fetch(images[1], x1, y2);
            i8 = fetch(images[1], x2, y2);
        
            sum += vec4(
                dot(vec4(0.052421, 0.110811, -0.073111, -0.017463), i0)
                + dot(vec4(0.004067, -0.003592, 0.047032, -0.150780), i1)
                + dot(vec4(-0.048259, 0.099703, 0.013628, 0.095156), i2)
                + dot(vec4(-0.157695, 0.091589, 0.154828, 0.047168), i3)
                + dot(vec4(0.024727, 0.045256, 0.054774, -0.163936), i4)
                + dot(vec4(0.130539, 0.014543, -0.008560, -0.106137), i5)
                + dot(vec4(0.203011, -0.058126, -0.002382, 0.191991), i6)
                + dot(vec4(-0.194824, 0.171788, -0.145217, -0.116214), i7)
                + dot(vec4(-0.122687, -0.056702, 0.004633, 0.148046), i8),
                dot(vec4(0.013811, 0.018488, -0.046296, -0.017404), i0)
                + dot(vec4(0.033501, -0.200069, -0.037199, 0.086573), i1)
                + dot(vec4(-0.017108, 0.040040, -0.059407, -0.093181), i2)
                + dot(vec4(-0.142085, -0.055684, -0.026508, -0.072789), i3)
                + dot(vec4(-0.083103, 0.125587, 0.175775, -0.147630), i4)
                + dot(vec4(0.067980, -0.043408, -0.062603, -0.017726), i5)
                + dot(vec4(-0.123626, 0.144173, 0.036149, 0.058596), i6)
                + dot(vec4(0.119399, -0.142057, -0.058279, 0.173407), i7)
                + dot(vec4(-0.151373, 0.128879, 0.066892, -0.029619), i8),
                dot(vec4(0.049342, -0.522715, 0.217971, 0.151573), i0)
                + dot(vec4(-0.079213, 0.124174, -0.074746, -0.184905), i1)
                + dot(vec4(0.118108, -0.170001, 0.117398, 0.078238), i2)
                + dot(vec4(-0.284859, -0.080515, -0.122945, 0.065073), i3)
                + dot(vec4(-0.053153, 0.084954, 0.092189, 0.071489), i4)
                + dot(vec4(-0.094391, 0.039164, 0.156313, -0.028533), i5)
                + dot(vec4(0.072567, -0.025135, 0.105480, 0.047067), i6)
                + dot(vec4(-0.004044, 0.166567, 0.141989, -0.017727), i7)
                + dot(vec4(0.014135, -0.018881, 0.046313, -0.076883), i8),
                dot(vec4(0.060981, 0.079983, 0.078203, -0.140906), i0)
                + dot(vec4(0.079858, -0.192826, 0.289626, -0.028414), i1)
                + dot(vec4(-0.100967, 0.093258, -0.173242, -0.080683), i2)
                + dot(vec4(-0.231801, 0.128146, -0.090692, 0.187972), i3)
                + dot(vec4(0.063763, -0.070236, 0.119116, 0.058275), i4)
                + dot(vec4(-0.001718, 0.029747, -0.009222, -0.127455), i5)
                + dot(vec4(-0.225483, -0.091726, -0.063685, 0.105318), i6)
                + dot(vec4(0.393995, -0.001244, -0.097713, 0.026030), i7)
                + dot(vec4(-0.122113, 0.033951, -0.136566, 0.171022), i8)
            );
        
            i0 = fetch(images[2], x0, y0);
            i1 = fetch(images[2], x1, y0);
            i2 = fetch(images[2], x2, y0);
            i3 = fetch(images[2], x0, y1);
            i4 = fetch(images[2], x1, y1);
            i5 = fetch(images[2], x2, y1);
            i6 = fetch(images[2], x0, y2);
            i7 = fetch(images[2], x1, y2);
            i8 = fetch(images[2], x2, y2);
        
            sum += vec4(
                dot(vec4(-0.079200, 0.201709, -0.088740, 0.079219), i0)
                + dot(vec4(-0.048911, -0.265018, 0.083699, 0.136306), i1)
                + dot(vec4(0.119548, -0.004522, -0.171049, -0.021228), i2)
                + dot(vec4(0.108393, -0.272770, 0.373159, -0.180450), i3)
                + dot(vec4(0.050572, 0.083875, -0.212974, -0.323916), i4)
                + dot(vec4(0.198211, -0.115949, 0.083273, 0.016643), i5)
                + dot(vec4(0.296834, 0.041996, 0.060845, -0.065169), i6)
                + dot(vec4(0.120951, 0.030498, 0.180857, 0.119697), i7)
                + dot(vec4(-0.062342, 0.037815, -0.020529, 0.017357), i8),
                dot(vec4(0.000768, 0.074113, -0.175143, -0.044709), i0)
                + dot(vec4(0.020166, 0.000312, -0.004550, -0.198864), i1)
                + dot(vec4(-0.075561, 0.074517, 0.014884, -0.030915), i2)
                + dot(vec4(-0.035395, 0.096371, 0.226674, 0.138892), i3)
                + dot(vec4(0.229466, 0.071884, -0.082779, 0.303324), i4)
                + dot(vec4(-0.020512, 0.086229, -0.060483, 0.006464), i5)
                + dot(vec4(0.148559, 0.000506, -0.030936, 0.018802), i6)
                + dot(vec4(-0.043022, -0.016919, -0.041906, 0.046672), i7)
                + dot(vec4(0.136782, -0.057480, 0.022507, -0.073954), i8),
                dot(vec4(0.056875, -0.086214, 0.175452, -0.214672), i0)
                + dot(vec4(0.057570, 0.676004, -0.201300, -0.480813), i1)
                + dot(vec4(0.012487, -0.044573, 0.023617, -0.112486), i2)
                + dot(vec4(0.071040, 0.102973, 0.216042, 0.326023), i3)
                + dot(vec4(-0.118919, 0.044477, -0.289596, 0.266606), i4)
                + dot(vec4(0.066134, -0.004291, -0.070389, -0.017338), i5)
                + dot(vec4(-0.049673, -0.055668, -0.181639, 0.014812), i6)
                + dot(vec4(0.176952, -0.029669, -0.184676, -0.031331), i7)
                + dot(vec4(0.097227, -0.007431, -0.063351, 0.008344), i8),
                dot(vec4(0.187986, -0.069858, 0.037631, 0.039472), i0)
                + dot(vec4(0.256672, 0.360468, 0.077747, -0.069281), i1)
                + dot(vec4(0.012535, -0.073372, -0.136260, 0.034254), i2)
                + dot(vec4(-0.017291, 0.114333, 0.369938, -0.029861), i3)
                + dot(vec4(0.149454, -0.162944, 0.019601, -0.159404), i4)
                + dot(vec4(0.015539, -0.051760, -0.065440, -0.048661), i5)
                + dot(vec4(0.089328, 0.028682, -0.003465, 0.001042), i6)
                + dot(vec4(0.070714, 0.041083, 0.051163, 0.030713), i7)
                + dot(vec4(0.209639, -0.081891, 0.068586, 0.079153), i8)
            );
        
        gl_FragColor = sum + vec4(0.082469, 0.002882, -0.009159, 0.010972);
    
        }
    )
