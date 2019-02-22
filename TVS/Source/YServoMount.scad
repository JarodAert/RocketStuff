
widthOfMount=10;
heightOfMount=39;
depthOfMount=15;
lengthOfCutout=3.5; depthOfCutout=2.25;

cube([widthOfMount, 8, depthOfMount]);

difference(){
    translate([0,31,0]) cube([widthOfMount, 12, depthOfMount]);
    
    translate([-0.1,heightOfMount,-0.1]) cube([lengthOfCutout, depthOfCutout, 21]);
    
    translate([widthOfMount-lengthOfCutout+0.01,heightOfMount,-0.1]) cube([lengthOfCutout, depthOfCutout, 21]);
}


translate([0,0,13.5]) cube([widthOfMount, heightOfMount, 3.5]);

// Make servo model
//translate([-6.5, 20.5, 6]) rotate([90,0,0]) rotate([0,90,0]) translate([-16.5,-50,16.5])
    //import("servo.stl");