/*
small_radius1 = 86/2;
internal_border=2;
externalBorder = 10;
*/

small_radius1 = 56/2;
internal_border=2;
externalBorder = 3;

small_radius2 = small_radius1 + internal_border/2;
small_radius3= small_radius1 + externalBorder;

big_radius1= (2 * small_radius1)/sqrt(3);
big_radius2= (2 * small_radius2)/sqrt(3);
big_radius3= (2 * small_radius3)/sqrt(3);

echo("big_radius is : ",big_radius2);
borderHeight = 0.1;
height = 0.6;

/*
THIS CUBE IS JUST TO VISUALLY VERIFY IF IT FIT
x_cube = 200;
y_cube = 200;
color([0.1,0.1,0.1])
translate([-x_cube/2,-y_cube/2, -31]){
    cube([x_cube, y_cube, 30]);
}
*/

projection(){
    
    color([0,1,0]) cylinder(r=small_radius1*3, h=height, $fn=6,center = true);

    echo("MIRROR INTERNAL");
    // from 0 to 360 in step of 60
    for ( angle = [0 : 60 : 359] ){
        x = (small_radius2) * 2 * cos(angle + 30);
        y = (small_radius2) * 2 * sin(angle + 30);
        echo("x ", x, " and y ", y)
        translate([x,y,0]){
            color([0,1,0]) //green
            cylinder(r=big_radius1, h=height, $fn=6,center = true);
        }
    }

    echo("MIRROR EXTERNAL 1");
    // from 0 to 360 in step of 60
    for ( angle = [0 : 60 : 359] ){
        x = (small_radius2) * 4 * cos(angle + 30);
        y = (small_radius2) * 4 * sin(angle + 30);
        echo("x ", x, " and y ", y)
        translate([x,y,0]){
            color([0,1,0]) //green
            cylinder(r=big_radius1, h=height, $fn=6,center = true);
            
        }
        translate([x,y,-0.1]) cylinder(r=big_radius3, h=height, $fn=6,center = true);
    }

    echo("MIRROR EXTERNAL 2");
    // from 30 to 360 in step of 60
    for ( angle = [30 : 60 : 359] ){
        x = (big_radius2 * 3) * cos(angle + 30);
        y = (big_radius2 * 3) * sin(angle + 30);
        echo("x ", x, " and y ", y)
        translate([x,y,0]){
            color([0,1,0]) //green
            cylinder(r=big_radius1, h=height, $fn=6,center = true);
        }
        translate([x,y,-0.1]) cylinder(r=big_radius3, h=height, $fn=6,center = true);
    }

}