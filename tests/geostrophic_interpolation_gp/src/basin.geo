Point(1) = {250000.0,0,0,10000.0};
Point(2) = {0,0,0,100000.0};
Point(3) = {-250000.0,0,0,10000.0};
Circle(1) = {1,2,3};
Circle(2) = {3,2,1};
Physical Line(3) = {1,2};
Line Loop(4) = {1,2};
Plane Surface(5) = {4};
Physical Surface(6) = {5};
