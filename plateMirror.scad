small_radius1 = 56/2;
internal_border=2;
externalBorder = 3;

plate_size_x = 200;
plate_size_y = 200;

small_radius2 = small_radius1 + internal_border/2;
small_radius3= small_radius1 + externalBorder;

big_radius1= (2 * small_radius1)/sqrt(3);
big_radius2= (2 * small_radius2)/sqrt(3);
big_radius3= (2 * small_radius3)/sqrt(3);

echo("big_radius is : ",big_radius2);
borderHeight = 0.1;
height = 0.6;

color([0.1,0.1,0.1])
translate([-big_radius3, -small_radius3, -31]){
    cube([plate_size_x, plate_size_y, 30]);
}


for ( x_i = [0:2] ){
    for ( y_i = [0:2] ){
        offset_y = x_i %2 == 0 ? 0 : small_radius2 / 2;
        x = (small_radius1) * 2.3 * x_i;
        y = (small_radius2) * 2 * y_i + offset_y;
        echo("x ", x, " and y ", y)
        translate([x,y,0]){
            //color([1,0,0]) //red
            //cylinder(r=radius + distance, h=height-0.1, $fn=6,center = true);
                
            color([0,1,0]) //green
            cylinder(r=big_radius1, h=height, $fn=6,center = true);
        }
    }
}