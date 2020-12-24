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
            dot(vec4(-0.375087, -0.472107, -0.028681, -0.037674), f[0])
                + dot(vec4(0.180004, -0.018353, -0.300071, 0.541296), f[1])
                + dot(vec4(0.345114, 0.602660, 0.087529, -0.458162), f[2])
                + dot(vec4(-0.425916, -0.627896, 0.480727, 0.724968), f[3])
                + dot(vec4(-0.133688, -0.037489, 0.174703, 0.392320), f[4])
                + dot(vec4(-0.156841, 0.296058, -0.055750, -0.717911), f[5])
                + dot(vec4(-0.189740, 0.416395, -0.121797, 0.459862), f[6])
                + dot(vec4(-0.124395, -0.247039, 0.090555, -0.195341), f[7]),
            dot(vec4(-0.665019, -0.210356, -0.082411, -0.006756), f[0])
                + dot(vec4(0.425116, 0.304922, -0.159783, 0.105716), f[1])
                + dot(vec4(0.514571, -0.496269, -0.069306, -0.917412), f[2])
                + dot(vec4(-0.580240, 0.455972, 0.006455, 0.510781), f[3])
                + dot(vec4(0.248665, 0.100267, 0.078514, -0.168260), f[4])
                + dot(vec4(0.059096, -0.207698, 0.136463, -0.465461), f[5])
                + dot(vec4(-0.121690, 0.403541, -0.391473, 0.304237), f[6])
                + dot(vec4(0.127155, 0.361669, -0.093915, -0.106284), f[7]),
            dot(vec4(0.209985, 0.131095, 0.254755, -0.154817), f[0])
                + dot(vec4(0.253843, -0.229747, 0.064304, -0.131631), f[1])
                + dot(vec4(0.042842, 0.148966, -0.136679, -0.141938), f[2])
                + dot(vec4(0.218100, -0.041761, 0.197892, -0.128468), f[3])
                + dot(vec4(0.219608, 0.249513, 0.083193, 0.143936), f[4])
                + dot(vec4(0.152235, 0.297899, -0.177414, 0.069118), f[5])
                + dot(vec4(-0.216363, 0.256450, -0.247842, 0.066319), f[6])
                + dot(vec4(-0.185392, -0.108431, -0.181804, 0.207740), f[7]),
            dot(vec4(0.089607, 0.013432, 0.115306, 0.382707), f[0])
                + dot(vec4(0.160799, 0.262646, -0.159878, -0.043106), f[1])
                + dot(vec4(-0.047748, -0.088558, -0.052828, 0.193872), f[2])
                + dot(vec4(0.002276, 0.162943, -0.262136, -0.124907), f[3])
                + dot(vec4(-0.083558, 0.116752, -0.032571, 0.023170), f[4])
                + dot(vec4(0.273172, 0.124839, 0.016067, 0.207543), f[5])
                + dot(vec4(-0.125803, -0.101115, -0.155801, 0.158421), f[6])
                + dot(vec4(-0.264103, 0.255994, -0.052291, 0.121493), f[7])
        ) + vec4(-0.104560, -0.065912, -0.023047, 0.047032);
    
        }
    )