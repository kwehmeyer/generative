## Libraries
using Luxor, Colors

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


## Drawing

# Constants
WIDTH = 800
HEIGHT = 800
SIDE_LENGTH = 100


Drawing(HEIGHT, WIDTH, "isometriccubestudy.png")
origin()
background("antiquewhite")

# Title
fontsize(40)
text("Isometric Cube Study", halign=:center, Point(0,-HEIGHT/2 + (HEIGHT * .05)))



sethue("black")
fontsize(18)
points = cubeCoordGen(Point(0, -HEIGHT/8),SIDE_LENGTH*2)

# edges, hardcoding lol
# minor edges
sethue("orange")
setdash("dot")
for i in 1:7
    for j in 1:7
        line(points[i], points[j], :stroke)
    end
end

# major edges
sethue("black")
setdash("solid")
for i in 1:7
    if i == 7
        line(points[7], points[2], :stroke)
        line(points[4], points[1], :stroke)
        line(points[6], points[1], :stroke)
    else
        line(points[i], points[i+1], :stroke)
    end
end

    

# vertices
sethue("black")
for p in 1:7
    circle(points[p], 10, :fill)
    sethue("white")
    text(string(p), points[p], halign=:center, valign=:middle)
    sethue("black")
end

# angle example
a = string(round(rad2deg(anglethreepoints(points[5:7]))/4) , "°")
text(a, points[6] + (-50, -30)) # hardcoding lol

# Areas

# exterior areas
points = cubeCoordGen(Point(WIDTH/4, HEIGHT/4),SIDE_LENGTH)
setcolor(1,0,0,0.5)
poly(points[1:4], :fill)
setcolor(0,1,0,0.5)
poly(points[[1,4,5,6]], :fill)
setcolor(0,0,1,0.5)
poly(points[[1,6,7,2]], :fill)
setcolor(0,0,1,1)

# separators
sethue("antiquewhite")
setline(5)
poly(points[1:4], :stroke)
poly(points[[1,4,5,6]], :stroke)
poly(points[[1,6,7,2]], :stroke)

# interior areas
points = cubeCoordGen(Point(-WIDTH/4, HEIGHT/4),SIDE_LENGTH)
setcolor(1,1,0,0.5)
poly(points[[1,7,2,3]], :fill)
setcolor(0,1,1,0.5)
poly(points[[1,3,4,5]], :fill)
setcolor(1,0,1,0.5)
poly(points[[1,5,6,7]], :fill)
setcolor(0,0,1,1)

# separators
sethue("antiquewhite")
setline(5)
poly(points[[1,7,2,3]], :stroke)
poly(points[[1,3,4,5]], :stroke)
poly(points[[1,5,6,7]], :stroke)



finish()
preview()

