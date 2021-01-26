##
using Luxor, Colors

##
Drawing("A3landscape", "turtle.png")
origin()
setantialias(6)
background(colorant"#2B99E0")

t = Turtle()
Pencolor(t, "red")
Penwidth(t, 1.5)

n = 10
for i in 120:700
    global n 
    Forward(t, n+(i/6000))
    Turn(t, 90-(n))
    Forward(t, n+(i/8000))
    Turn(t, 90+n)
    HueShift(t, 0.1)
    n += 0.88
end


finish()
preview()


##