# JamesWebbTelescope
OpenSCAD files to dinamically generate 2d or 3d files of the mirror of the JWT, to print or cut.

![Final result](photo/final.jpg "Final result")

# Quality

It works. Barely. Code horror ahead. Still, lot of fun. 
I am not resposable for 3d printed nest, laser off eyes or calculation mistakes; measure twice, cut once.

Generic acrylic goldern mirror, a few euros a pack of many, had been used and looks great, but scract easy, i suggest to use a cloth to protect them while working

![Mirror deltail](photo/details.jpg "Mirror detail")

## User variables:

Measurements are in millimiters, but really you can always scale to watever you want:

small_radius1 is the smallest radius of your hexagon, basically thge distance between two parallel side
internal_border is the distance between mirrors
externalBorder is the distance between mirror and the outside border

# Files

## FullDiverAndBorder.scad

it draw all internal and external mirros, along with the base plate

comment/decoment projection() to be able to project the 3d drawing into 2d; 2d can be used for expost as SVG for laser cut, while 3d can be sliced.

## Divider.scad

It draw subtraction between the base plate and the mirrors.
Used to print/cut the guide to help glue the mirror in the correct position.

Alignment of the mirrors using the carboard guide; notice how the side of the guide are taped to the base, to help centering and avoid slide
![Carboard alignment example](photo/gluing.jpg "Carboard alignment example")

## PlateMirrors.scad

It draw the hexagon on a plate, some manual adjustement is added to use the space as best as possible

I did use pre-cut hexagon golden mirror in acrilic, but their dimension are not very good; I had to sort them out to find the best fit.  
I am going to experiment using sqared tiles and cutting hex out of them, 
to check if the increased cut time is worth knowing your creation is perfecet to the tents of millimiters
