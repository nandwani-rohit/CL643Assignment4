Variables
         x1      x1
         x2      x2
         x3      x3
         f       Objective Function;

Equations
         e1      Objective Function definition
         e2      Constraint 1
         e3      Constraint 2;

e1..     f =e= 3*x1 - 4*x2 + 53*x3;
e2..     pi*x1 + x2 - 20*x3 =g= 43;
e3..     7*x1 + x2 - 7/pi - log(10) =e= 0;

* Bounding the decision variables
x1.lo = 0;
x2.lo = 0;
x3.lo = 0;

Model q1_infeasible /all/;

* Specifying the LP Solver
option LP = CPLEX;

Solve q1_infeasible using LP minimizing f;

option decimals = 5;

display x1.l, x2.l, x3.l, f.l;
