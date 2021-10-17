
Variables
         x1      x1
         x2      x2
         x3      x3
         f       Objective Function;

Integer Variable
         x1      x1
         x3      x3;

Nonnegative Variables
         x2      x2;

Equations
         e1      Objective Function definition
         e2      Constraint 1
         e3      Constraint 2
         e4      Constraint 3;

e1..     f =e= x1 + x2 + 15*x3;
e2..     2*x1 - x2 =g= 6;
e3..     x2 + x3 =g= 4;
e4..     x1 + 2*x2 + 3*x3 =e= 10;

* Bounding the decision variables
* because x1 <= 3.9 is equivalent to x1 <= floor(3.9) = 3
x1.up = 3;

Model q3_infeasible /all/;

* Specifying the MIP Solver
option MIP = CPLEX;

Solve q3_infeasible using MIP minimizing f;

option decimals = 5;

display x1.l, x2.l, x3.l, f.l;
