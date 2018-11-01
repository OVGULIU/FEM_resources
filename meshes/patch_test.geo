// Geometry for the patch test.

// Points
Point(1) = {0, 0, 0, 1.0};
Point(2) = {10, 0, 0, 1.0};
Point(3) = {2, 2, 0, 1.0};
Point(4) = {8, 3, 0, 1.0};
Point(5) = {4, 7, 0, 1.0};
Point(6) = {8, 7, 0, 1.0};
Point(7) = {0, 10, 0, 1.0};
Point(8) = {10, 10, 0, 1.0};

// Lines
Line(1) = {1, 2};
Line(2) = {2, 4};
Line(3) = {4, 3};
Line(4) = {3, 1};
Line(5) = {2, 8};
Line(6) = {8, 6};
Line(7) = {6, 4};
Line(8) = {8, 7};
Line(9) = {7, 5};
Line(10) = {5, 6};
Line(11) = {3, 5};
Line(12) = {7, 1};

// Surfaces
Line Loop(13) = {1, 2, 3, 4};
Plane Surface(14) = {13};
Line Loop(15) = {2, -7, -6, -5};
Plane Surface(16) = {-15};
Line Loop(17) = {10, -6, 8, 9};
Plane Surface(18) = {17};
Line Loop(19) = {9, -11, 4, -12};
Plane Surface(20) = {-19};
Line Loop(21) = {3, 11, 10, 7};
Plane Surface(22) = {-21};

// Mesh parameters
Recombine Surface {14};
Recombine Surface {16};
Recombine Surface {18};
Recombine Surface {20};
Recombine Surface {22};
Transfinite Line {1, 2, 3, 11, 4, 12, 9, 8, 10, 6, 5, 7} = -1 Using Progression 1;
