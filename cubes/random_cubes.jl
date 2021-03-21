## Libraries
using Luxor, Colors


## Drawing lol 

## Functions

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


function cubeAreasFiller(points, areas)
    areas = uppercase(areas)
    randomcolor()

    if contains(areas,"A")
        poly(points[1:4], :fill)
    end
    if contains(areas,"B")
        poly(points[[1,4,5,6]], :fill)
    end
    if contains(areas,"C")
        poly(points[[1,6,7,2]], :fill)
    end
    sethue("black")
end


## Drawing

# Constants
WIDTH = 800
HEIGHT = 800
SIDE_LENGTH = 100


Drawing(HEIGHT, WIDTH, :png)
background("antiquewhite")

a = "ABCD"
b = 1
for i in 100:200:WIDTH-100
    for j in 100:200:HEIGHT-100
        #sethue("blue")
        o = Point(i, j) 
        origin(o)
        #circle(O, 50, :stroke)
        

        points = cubeCoordGen(O, 40)
        setcolor(0,0,0,1)
        for k in 1:7
            if k == 7
                line(points[7], points[2], :stroke)
                line(points[4], points[1], :stroke)
                line(points[6], points[1], :stroke)
            else
                line(points[k], points[k+1], :stroke)
            end
        end

    end

end

finish()
preview()