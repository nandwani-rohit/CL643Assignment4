Variables
         x1      x1
         x2      x2
         x3      x3
         f       Objective Function;

Scalar
         tolerance substitute for 0 to allow strict inequalities within a tolerance /1e-8/;

Equations
         e1      Objective Function definition
         e2      Constraint 1
         e3      Constraint 2
         e4      Constraint 3;

e1..     f =e= x3 - power(x2+x1/2,4) * exp(sqr(x2)-sqr(x1));
e2..     -3*sqr(x1) + x3 - 0.4 =g= tolerance;
e3..     x3 - 3.9 =l= -tolerance;
e4..     x1*x2 - x3 =e= tolerance;

* Starting position in the feasible region
x1.l = 1;
x2.l = 1;
x3.l = 1;

Model q2_feasible /all/;

* Specifying the NLP Solver
option NLP = CONOPT;

Solve q2_feasible using NLP maximizing f;

option decimals = 6;

display x1.l, x2.l, x3.l, f.l;
