
Variables
         x1      x1
         x2      x2
         x3      x3
         f       Objective Function;

Integer Variable
         x2      x2
         x3      x3;

Nonnegative Variables
         x1      x1;

Equations
         e1      Objective Function definition
         e2      Lower Bound on x1
         e3      Upper Bound on x1
         e4      Upper Bound on x2
         e5      Upper Bound on x3
         e6      Constraint 1
         e7      Constraint 2;

e1..     f =e= power(x1,3)*power(x2,3) - x1*sqr(x2)*cos(x3);
e2..     x1 =g= -pi/2;
e3..     x1 =l= pi;
e4..     x2 =l= 100;
e5..     x3 =l= 100;
e6..     sqr(cos(x1)) - x2 + x3 =g= 0;
e7..     2*sqr(cos(4))*x1 - x2 - 7*sqr(cos(4)) =e= 0;

Model q4_infeasible /all/;

* Specifying the MINLP Solver
option MINLP = LINDO;

Solve q4_infeasible using MINLP maximizing f;

option decimals = 5;

display x1.l, x2.l, x3.l, f.l;
