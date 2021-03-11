## Libraries
using Luxor, Colors

## Functions

## Drawing lol 

## Functions

function cubeCoordGen(origin, sidelength)
   return([
       origin, # Point 1
       origin + (sidelength, -sidelength/2), # Point 3 → P2
       origin + (0, -sidelength), # Point 2 → P3
       origin + (-sidelength, -sidelength/2), # Point 4
       origin + (-sidelength, sidelength/2), # Point 6 → P5
       origin + (0, sidelength), # Point 7 → P6
       origin + (sidelength, sidelength/2) # Point 5 → P7
   ]) 
end

function cubeAreasFiller(points, areas)
    areas = uppercase(areas)
    randomhue()

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
setantialias(100)
WIDTH = 800
HEIGHT = 800
SIDE_LENGTH = 100


Drawing(HEIGHT, WIDTH, "random_cubes.png")
background("antiquewhite")
a = "ABCD"
b = 1
for i in 100:200:WIDTH-100
    for j in 100:200:HEIGHT-100
        #sethue("blue")
        o = Point(i, j) 
        origin(o)
        #circle(O, 50, :stroke)
        cubeAreasFiller(points, SubString(a,rand(1:3),rand(2:4)))
        

        points = cubeCoordGen(O, 40)
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