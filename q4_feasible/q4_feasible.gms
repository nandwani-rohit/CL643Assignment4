
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
         e2      Upper Bound on x1
         e3      Upper Bound on x2
         e4      Upper Bound on x3
         e5      Constraint 1
         e6      Constraint 2
         e7      Constraint 3;

e1..     f =e= power(x1,3)*power(x2,3) - x1*sqr(x2)*sin(x3);
e2..     x1 =l= 100;
e3..     x2 =l= 100;
e4..     x3 =l= 100;
e5..     -4*power(x1,3) + x2 =g= 0;
e6..     x2 - x3 - 3 =l= 0;
e7..     13*x1 - 1.5*x2 + 1.98*x3 =e= 84.03226;

Model q4_feasible /all/;

* Specifying the MINLP Solver
option MINLP = LINDO;

Solve q4_feasible using MINLP maximizing f;

option decimals = 5;

display x1.l, x2.l, x3.l, f.l;
