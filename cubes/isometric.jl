## libs

using Luxor

##

WIDTH = 800
HEIGHT = 800
SIDE_LENGTH = 200
function cubeCoordGen(origin, sidelength)
    plus_y = sidelength * sin(deg2rad(30))
    plus_x = sidelength * cos(deg2rad(30))
   return([
       origin, # Point 1
       origin + (plus_x, -plus_y), # Point 2
       origin + (0, -sidelength), # Point 3
       origin + (-plus_x, -plus_y), #Point 4

       origin + (-plus_x, plus_y), # Point 5
       origin + (0, sidelength), # Point 6
       origin + (plus_x, plus_y), # Point 7

   ]) 
end

Drawing(HEIGHT, WIDTH, :png)
origin()
background("antiquewhite")

points = cubeCoordGen(O, SIDE_LENGTH)
for p in points
    circle(p, 10, :stroke)
end


finish()
preview()
