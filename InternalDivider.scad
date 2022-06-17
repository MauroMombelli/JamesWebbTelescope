radius=50;
distance=2;
side=(sqrt(3) / 2) * (radius + distance/2);
height = 2;

projection(){
    intersection(){
        union(){
            difference(){
                cylinder(r=radius + distance, h=5, $fn=6,center = true);
                cylinder(r=radius, h=6, $fn=6,center = true);
            }
        
            x = (side) * 2 * cos(60 + 30);
            y = (side) * 2 * sin(60 + 30);
            translate([x,y,0]){
                color([1,0,0]) //red
                difference(){
                    cylinder(r=radius + distance, h=height, $fn=6,center = true);
                    cylinder(r=radius, h=height, $fn=6,center = true);
                }
            }

            x2 = (side) * 2 * cos(180 + 30);
            y2 = (side) * 2 * sin(180 + 30);
            translate([x2,y2,0]){
                color([0,1,0]) //green
                difference(){
                    cylinder(r=radius + distance, h=height, $fn=6,center = true);
                    cylinder(r=radius, h=height, $fn=6,center = true);
                }
            }

            x3 = (side) * 2 * cos(300 + 30);
            y3 = (side) * 2 * sin(300 + 30);
            translate([x3,y3,0]){
                color([0,0,1]) //blue
                difference(){
                    cylinder(r=radius + distance, h=height, $fn=6,center = true);
                    cylinder(r=radius, h=height, $fn=6,center = true);
                }
            }
        }

        rotate(30) cylinder(r=150/2, h=height, $fn=6,center = true);
    }
}