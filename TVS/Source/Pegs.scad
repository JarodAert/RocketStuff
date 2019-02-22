// Pegs which connect the Y gyro to the outer frame and allows it to spin
translate([5,0,4]) rotate([0,0,0])
    cylinder(d1=3.4, d2=2, h=8, center=true, $fn=50);
translate([-5,0,4]) rotate([0,0,0])
    cylinder(d1=3.4, d2=2, h=8, center=true, $fn=50);