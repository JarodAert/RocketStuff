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
    
    translate([-5.5, 19.9, 6]) cube([11, 40, 2]);
    translate([-2, 19.9, 6]) cube([4, 40, 10]);
    
}

//translate([-5,20,49]) rotate([-90,0,0]) import("./YServoMount.stl");

// Inner Y Gyro
difference(){
    // Main part of gyro
    translate([-18.5,-18.5,0])
    CreateRectangleDonut(28, 9, 10, false);
    
    // Holes for pegs or screws to hold inner gyro in
    translate([0,15,5]) rotate([90,0,0])
    cylinder(d=2, h=10, center=true, $fn=50);
    
    translate([0,-15,5]) rotate([90,0,0])
    cylinder(d=2, h=10, center=true, $fn=50);
    
    // Two cube cutouts to hold the extentions for gyroing
    translate([13,-5,8])
    cube([7, 10, 30]);
    
    translate([13,-5,-5])
    cube([7, 10, 7]);
    
    // Pegs which connect the Y gyro to the outer frame and allows it to spin
    translate([15,0,5]) rotate([0,90,0])
        cylinder(d=3.5, h=10, center=true, $fn=50);
    translate([-15,0,5]) rotate([0,90,0])
        cylinder(d=3.5, h=10, center=true, $fn=50);
}

// Pegs which connect the Y gyro to the outer frame and allows it to spin
translate([5,0,4]) rotate([0,0,0])
    cylinder(d1=3.4, d2=2, h=8, center=true, $fn=50);
translate([-5,0,4]) rotate([0,0,0])
    cylinder(d1=3.4, d2=2, h=8, center=true, $fn=50);
