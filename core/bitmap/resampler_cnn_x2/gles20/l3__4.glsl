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
            dot(vec4(-0.010094, 0.138123, -0.019232, 0.128520), f[0])
                + dot(vec4(0.003854, -0.018847, 0.109888, -0.137384), f[1])
                + dot(vec4(0.031048, 0.079735, -0.030004, -0.027498), f[2])
                + dot(vec4(0.231529, 0.095551, -0.166393, -0.097703), f[3])
                + dot(vec4(0.012682, -0.163489, 0.041044, -0.069166), f[4])
                + dot(vec4(0.097232, 0.069606, -0.027458, 0.171633), f[5])
                + dot(vec4(0.210206, -0.003477, 0.274198, -0.207563), f[6])
                + dot(vec4(-0.025100, 0.038482, 0.046304, 0.172634), f[7]),
            dot(vec4(-0.093765, 0.045710, -0.083093, 0.305241), f[0])
                + dot(vec4(-0.152851, -0.255047, -0.055496, -0.016859), f[1])
                + dot(vec4(-0.156729, -0.047002, 0.020086, -0.081720), f[2])
                + dot(vec4(0.122338, 0.154403, -0.044341, 0.170198), f[3])
                + dot(vec4(0.006779, 0.027161, 0.060211, 0.042242), f[4])
                + dot(vec4(0.155586, 0.108510, 0.006348, 0.019823), f[5])
                + dot(vec4(-0.167904, 0.019202, 0.002058, 0.114100), f[6])
                + dot(vec4(-0.026571, 0.005746, 0.081878, -0.012995), f[7]),
            dot(vec4(0.000790, 0.000049, 0.193043, 0.223069), f[0])
                + dot(vec4(0.178134, 0.198169, -0.161874, 0.026543), f[1])
                + dot(vec4(-0.169991, -0.196638, -0.120109, 0.139372), f[2])
                + dot(vec4(-0.061052, 0.200921, -0.093028, 0.021757), f[3])
                + dot(vec4(0.269542, 0.289838, -0.068420, 0.056229), f[4])
                + dot(vec4(0.216501, -0.215403, 0.132606, -0.064272), f[5])
                + dot(vec4(0.002029, -0.276611, 0.249666, -0.196687), f[6])
                + dot(vec4(0.067495, 0.157648, -0.124504, -0.067595), f[7]),
            dot(vec4(0.512666, 0.263772, 0.221709, -0.188780), f[0])
                + dot(vec4(-0.459129, -0.077893, 0.589545, -0.254947), f[1])
                + dot(vec4(-0.297823, -0.347858, -0.172339, -0.549811), f[2])
                + dot(vec4(0.505569, -0.029217, -0.162404, -0.052892), f[3])
                + dot(vec4(0.348001, -0.199247, -0.265576, -0.394747), f[4])
                + dot(vec4(-0.028247, 0.200294, -0.463218, 0.084735), f[5])
                + dot(vec4(0.214350, 0.304840, -0.014270, -0.381873), f[6])
                + dot(vec4(0.117540, -0.124940, 0.157854, 0.271116), f[7])
        ) + vec4(0.115109, 0.044356, 0.004719, 0.034634);
    
        }
    )