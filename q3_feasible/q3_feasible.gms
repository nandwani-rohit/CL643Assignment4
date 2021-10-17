
Variables
         x1      x1
         x2      x2
         x3      x3
         f       Objective Function;

Integer Variable
         x3      x3;

Nonnegative Variables
         x1      x1
         x2      x2;

Equations
         e1      Objective Function definition
         e2      Constraint 1
         e3      Constraint 2
         e4      Constraint 3;

e1..     f =e= 5*x1 - x2 + 10*x3;
e2..     15*x1 - x3 =g= 3;
e3..     x2 + 9*x1 =l= 6;
e4..     -9*x1 + 4*x2 =e= 15;

* Bounding the decision variables
x3.up = 20;

Model q3_feasible /all/;

* Specifying the MIP Solver
option MIP = CPLEX;

Solve q3_feasible using MIP minimizing f;

option decimals = 5;

display x1.l, x2.l, x3.l, f.l;
