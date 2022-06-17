radius=50;
distance=2;
side=(sqrt(3) / 2) * (radius + distance/2);
borderHeight = 3;
height = 16;
externalBorder = 10;

difference(){
    translate([-210, -50, -1])
    cube([40, 100, 2]);
    union(){
        echo("MIRROR INTERNAL");
        // from 0 to 360 in step of 60
        for ( angle = [0 : 60 : 359] ){
            x = (side) * 2 * cos(angle + 30);
            y = (side) * 2 * sin(angle + 30);
            echo("x ", x, " and y ", y)
            translate([x,y,0]){
                //color([1,0,0]) //red
                //cylinder(r=radius + distance, h=height-0.1, $fn=6,center = true);
                    
                color([0,1,0]) //green
                cylinder(r=radius, h=height, $fn=6,center = true);
            }
        }

        echo("MIRROR EXTERNAL 1");
        // from 0 to 360 in step of 60
        for ( angle = [0 : 60 : 359] ){
            x = (side) * 2 * cos(angle + 30) * 2;
            y = (side) * 2 * sin(angle + 30) * 2;
            echo("x ", x, " and y ", y)
            translate([x,y,0]){
                //color([1,0,0]) //red
                //cylinder(r=radius + distance, h=height-0.1, $fn=6,center = true);
                    
                color([0,1,0]) //green
                cylinder(r=radius, h=height, $fn=6,center = true);
            }
        }

        echo("MIRROR EXTERNAL 2");
        // from 30 to 360 in step of 60
        for ( angle = [30 : 60 : 359] ){
            x = (radius + distance / 2) * 1.5 * cos(angle + 30) * 2;
            y = (radius + distance / 2) * 1.5 * sin(angle + 30) * 2;
            echo("x ", x, " and y ", y)
            translate([x,y,0]){
                //color([1,0,0]) //red
                //cylinder(r=radius + distance, h=height-0.1, $fn=6,center = true);
                    
                color([0,1,0]) //green
                cylinder(r=radius, h=height, $fn=6,center = true);
            }
        }

        echo("BORDER EXTERNAL 1");
        // from 0 to 360 in step of 60
        sideBorder=(sqrt(3) / 2) * (radius + externalBorder);
        for ( angle = [0 : 60 : 359] ){
            x = (side) * 2 * cos(angle + 30) * 2;
            y = (side) * 2 * sin(angle + 30) * 2;
            echo("x ", x, " and y ", y)
            
            translate([x,y,-borderHeight/2]){
                color([0,0,1]) //blue
                cylinder(r=radius + distance + externalBorder, h=borderHeight, $fn=6,center = true);
            }
        }

        echo("BORDER EXTERNAL 2");
        // from 30 to 360 in step of 60
        for ( angle = [30 : 60 : 359] ){
            x = (radius + distance / 2) * 1.5 * cos(angle + 30) * 2;
            y = (radius + distance / 2) * 1.5 * sin(angle + 30) * 2;
            echo("x ", x, " and y ", y)
            translate([x,y,-borderHeight/2]){
                color([0,0,1]) //blue
                cylinder(r=radius + distance + externalBorder, h=borderHeight, $fn=6,center = true);
            }
        }
    };
    
}

