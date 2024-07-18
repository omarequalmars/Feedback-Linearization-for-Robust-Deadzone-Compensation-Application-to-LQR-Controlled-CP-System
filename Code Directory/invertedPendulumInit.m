l=0.5;
m=0.3;
M=1.1571;
I=m*l*l/3;
g=9.81;
b=12.5;
d=0.0019;
Kt=0.141516564131871;
Ra = 4.8;
r_pulley = 0.00646;
deadzone = 30;
v_supply_max = 24;
pwm_max = 255;
friction_coefficient = (deadzone * v_supply_max/r_pulley/Ra/pwm_max);
N =3; % Magnification ratio%
K_pwm = v_supply_max*Kt/r_pulley/Ra/pwm_max/N;


p = I*(M+m)+M*m*l^2; %denominator for the A and B matrices

A = [0      1              0           0;
     0 -(I+m*l^2)*b/p  -(m^2*g*l^2)/p   (m*l*d)/p;
     0      0              0           1;
     0 (m*l*b)/p       m*g*l*(M+m)/p  -d*(M+m)/p];
B = [     0;
     (I+m*l^2)/p;
          0;
        -m*l/p];
C = [1 0 0 0;
     0 0 1 0];
D = [0;
     0];
 
 states = {'x' 'x_dot' 'phi' 'phi_dot'};
inputs = {'u'};
outputs = {'x'; 'phi'};
x = 3;

sys_ss = ss(A,B,C,D,'statename',states,'inputname',inputs,'outputname',outputs);
Q = [5000,0,0,0;
    0,10,0,0;
    0,0,5000,0;
    0,0,0,50];
R=0.5;
K = lqr(A,B,Q,R);