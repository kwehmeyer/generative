## libraries
using Luxor

##


WIDTH, HEIGHT = 800, 800
RAD = 8
println(RAD)

Drawing(WIDTH, HEIGHT, "warmlava.png")

background("black")
incx = 0
incy = 0
for x in RAD:RAD*2:WIDTH
    
    for y in RAD:RAD*2:HEIGHT
        n = noise(incx,incy, detail = 1, persistence=0.8)
        setcolor(1-n^3,1-2n,0.1, 1)
        circle(Point(x,y),RAD, :fill)
        incx += 0.1
        
    end
    incx = 0
    incy += 0.1
end

finish()
preview()
