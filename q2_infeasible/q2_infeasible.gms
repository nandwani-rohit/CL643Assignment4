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
         e3      Constraint 2;
*         e4      Constraint 3;

e1..     f =e= sqr(x1) + sqr(x2) - 3*x1*sin(x2)*sqr(x3);
e2..     -sqr(x1) + 3*x1 + x2 - x3 - 5.25 =g= tolerance;
e3..     -3*sin(x1-1) + x2 =e= tolerance;
*e4..     x3 =g= tolerance;

*Equivalently e4 can simply be written as lower bound constraint
x3.lo = 0;

* Starting position in the feasible region
x1.l = 1;
x2.l = 1;
x3.l = 1;

Model q2_infeasible /all/;

* Specifying the NLP Solver
option NLP = CONOPT;

Solve q2_infeasible using NLP maximizing f;

option decimals = 6;

display x1.l, x2.l, x3.l, f.l;
