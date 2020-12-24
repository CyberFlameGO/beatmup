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
        uniform sampler2D images[8];
        varying highp vec2 texCoord;

        void main() {
            
        lowp vec4 f[8];
        for (int i = 0; i < 8; ++i)
            f[i] = texture2D(images[i], texCoord);
    
        gl_FragColor = vec4(
            dot(vec4(-0.142662, 0.029175, 0.292268, -0.210924), f[0])
                + dot(vec4(0.225712, 0.273442, 0.165847, -0.049175), f[1])
                + dot(vec4(0.243792, 0.188194, -0.044814, -0.121869), f[2])
                + dot(vec4(-0.031255, -0.109573, 0.112486, 0.016066), f[3])
                + dot(vec4(0.033843, 0.336996, 0.018682, -0.160641), f[4])
                + dot(vec4(-0.036933, -0.073204, -0.119812, 0.070284), f[5])
                + dot(vec4(0.178934, 0.186611, -0.142801, 0.125743), f[6])
                + dot(vec4(0.125269, -0.096885, 0.031887, -0.021972), f[7]),
            dot(vec4(0.003226, 0.131354, -0.181189, 0.242710), f[0])
                + dot(vec4(0.132400, -0.228519, -0.286046, -0.132875), f[1])
                + dot(vec4(0.066407, -0.191003, 0.345487, 0.268070), f[2])
                + dot(vec4(0.016501, 0.098930, -0.157445, -0.082926), f[3])
                + dot(vec4(-0.090302, -0.005998, 0.075565, 0.132387), f[4])
                + dot(vec4(-0.125473, -0.264530, 0.264183, 0.035046), f[5])
                + dot(vec4(-0.148875, -0.356086, -0.110931, 0.456497), f[6])
                + dot(vec4(-0.211740, 0.278611, -0.286625, -0.087502), f[7]),
            dot(vec4(-0.130920, -0.067394, 0.043304, 0.139261), f[0])
                + dot(vec4(-0.087821, 0.278087, 0.138187, 0.013557), f[1])
                + dot(vec4(-0.277861, 0.111572, 0.171196, 0.304873), f[2])
                + dot(vec4(0.066508, -0.220565, 0.187344, -0.180929), f[3])
                + dot(vec4(0.195435, 0.281249, 0.008815, -0.031908), f[4])
                + dot(vec4(-0.098254, -0.057548, -0.212316, 0.181428), f[5])
                + dot(vec4(0.056573, -0.015729, 0.113484, 0.333081), f[6])
                + dot(vec4(-0.309695, -0.213251, 0.262508, 0.190758), f[7]),
            dot(vec4(-0.148442, -0.310235, 0.164248, 0.263715), f[0])
                + dot(vec4(0.029710, 0.105435, 0.605753, -0.074656), f[1])
                + dot(vec4(-0.253049, -0.137701, -0.081494, -0.182242), f[2])
                + dot(vec4(-0.011536, -0.248495, 0.417547, -0.361306), f[3])
                + dot(vec4(-0.125664, -0.207380, -0.042862, -0.677891), f[4])
                + dot(vec4(0.103101, 0.512081, -0.106052, 0.248160), f[5])
                + dot(vec4(0.128735, 0.277099, -0.032930, -0.616054), f[6])
                + dot(vec4(0.507746, -0.315417, -0.078738, 0.006112), f[7])
        ) + vec4(0.024834, 0.055467, 0.165176, -0.016339);
    
        }
    )