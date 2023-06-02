OPENQASM 2.0;
include "qelib1.inc";

qreg q[8];
creg c[4];
h q[0];
h q[1];
h q[2];
h q[3];
barrier q[0], q[1], q[2], q[3], q[4], q[5], q[6], q[7];
cx q[0], q[4];
cx q[0], q[5];
cx q[0], q[6];
cx q[0], q[7];

barrier q[0], q[1], q[2], q[3], q[4], q[5], q[6], q[7];
cx q[1], q[4];
cx q[1], q[5];
cx q[1], q[6];
cx q[1], q[7];

barrier q[0], q[1], q[2], q[3], q[4], q[5], q[6], q[7];
cx q[2], q[4];
cx q[2], q[5];
cx q[2], q[6];
cx q[2], q[7];

barrier q[0], q[1], q[2], q[3], q[4], q[5], q[6], q[7];
cx q[3], q[4];
cx q[3], q[5];
cx q[3], q[6];
cx q[3], q[7];

barrier q[0], q[1], q[2], q[3], q[4], q[5], q[6], q[7];

x q[0];
h q[3];

barrier q[0], q[1], q[2], q[3];
cu1(pi / 2) q[2], q[3];
h q[2];

barrier q[0], q[1], q[2], q[3];
cu1(pi / 2) q[1], q[3];
cu1(pi / 2) q[1], q[2];
h q[1];

barrier q[0], q[1], q[2], q[3];
cu1(pi / 2) q[0], q[3];
cu1(pi / 2) q[0], q[2];
cu1(pi / 2) q[0], q[1];
h q[0];

barrier q[0], q[1], q[2], q[3];
u1(-pi) q[0];
u1(-pi / 2) q[1];
u1(-pi / 4) q[2];
u1(-pi / 8) q[3];

barrier q[0], q[1], q[2], q[3], q[4], q[5], q[6], q[7];
measure q[0] -> c[0];
measure q[1] -> c[0];
measure q[2] -> c[0];
measure q[3] -> c[0];
measure q[4] -> c[0];
measure q[5] -> c[0];
measure q[6] -> c[0];
measure q[7] -> c[0];
