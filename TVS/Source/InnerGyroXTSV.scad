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
// Big inner rectangle the holds the engine and does X axis gyroings
rotate([0,0,0]) translate([-13,-13,-25])
    CreateRectangleDonut(18, 8, 40, false);