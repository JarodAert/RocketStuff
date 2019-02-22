module CreateRectangleDonut(innerD, thickness, height, cent=true){
    difference(){
        cube([innerD+thickness, innerD+thickness, height], center=cent);
        if(cent==true){
            cube([innerD, innerD, height*1.1], center=cent);
        }else{
            translate([thickness/2, thickness/2,-0.1])
            cube([innerD, innerD, height*1.1], center=cent);
        }
    }
}



// Make servo models
translate([-10, 25.5,26.5]) rotate([0,90,0]) translate([-16.5,-50,16.5])
    import("servo.stl");

translate([26.2,-14,-23]) rotate([0,90,90]) translate([-16.5,-50,16.5])
    import("servo.stl");

// Create main outer frame
difference(){
    cylinder(d=75, h=10);
    
    // Big cutout for main gyros
    cube([40,40, 30], center=true);
    
    // Side cutouts to make 2 sides flat for no reason
    translate([25, -40, -1])
        cube([50,100,20]);
    translate([-50, -40, -1])
        cube([25,100,20]);
    
    // Hole cutouts for pegs that allow inner gyros to spin
    translate([20,0,5]) rotate([0,90,0])
        cylinder(d=3, h=8, center=true, $fn=50);
    translate([-20,0,5]) rotate([0,90,0])
        cylinder(d=3, h=8, center=true, $fn=50);
    
}
// Cubes that make the mount for the Y axis servo
translate([-3.5,21,8]) cube([10, 15, 8]);
translate([-3.5,33,8]) cube([10, 3.5, 40]);
translate([-3.5,21,40]) cube([10, 15, 8]);


// Inner Y Gyro
difference(){
    // Main part of gyro
    translate([-19,-19,0])
    CreateRectangleDonut(30, 8, 10, false);
    // Holes for pegs or screws to hold inner gyro in
    translate([0,15,5]) rotate([90,0,0])
    cylinder(d=2, h=10, center=true, $fn=50);
    
    translate([0,-15,5]) rotate([90,0,0])
    cylinder(d=2, h=10, center=true, $fn=50);
    
    // Two cube cutouts to hold the extentions for gyroing
    translate([14,-5,8])
    cube([7, 10, 30]);
    
    translate([14,-5,-5])
    cube([7, 10, 7]);
}

// Pegs which connect the Y gyro to the outer frame and allows it to spin
translate([20,0,5]) rotate([0,90,0])
    cylinder(d=2.5, h=8, center=true, $fn=50);
translate([-20,0,5]) rotate([0,90,0])
    cylinder(d=2.5, h=8, center=true, $fn=50);

// Top extention which the Y axis servo will move to rotate the gyro
translate([15,-5,8])
    cube([4, 10, 30]);
// Bottom extention to hold the X axis gyro and allow the x axis to rotate
translate([15,-5,-39])
    cube([4, 10, 41]);
translate([19,-5,-38.5])
    cube([12, 8, 5]);
translate([19,-5,-9.5])
    cube([12, 8, 5]);

// Big inner rectangle the holds the engine and does X axis gyroings
rotate([0,0,0]) translate([-13,-13,-25])
    CreateRectangleDonut(18, 8, 40, false);

