##
using Luxor, Colors

##
# Setup
Drawing(2000, 1200, "wrymclub.png")
origin(700, 200)
setantialias(6)

# Global Params

outline_rad_reduction = 5


# Wyrm 1
for i in 1000:-1:3

    sethue(1, i/25, i/10)
    r = rand(0:3)

    polyorigin = Point(-(i^(2)), ((i^2)-10*i))

    ngonside(polyorigin, 75, i+r, i^2, :fill)
    sethue("black")
    ngonside(polyorigin, 75-outline_rad_reduction, i+r, i^2, :stroke)
end

# Wyrm 2
origin(rand(900:1100), 400)
for i in 100:-1:3
    sethue(0.9, i/25, i/100)
    r = rand(0:3)
    polyorigin = Point(+(i^(2)), -((i^2)-rand(10:12)*i))
    ngonside(polyorigin, 75, i+r, i^2, :fill)
    sethue("black")
    ngonside(polyorigin, 75-outline_rad_reduction, i+r, i^2, :stroke)
end

# Wrym 3
origin(rand(900:1000), 750)
for i in 100:-1:3
    sethue(i/10, 0.4, 0.8)
    r = rand(0:3)
    polyorigin = Point((i^(2)), ((i^2)+rand(10:12)*i))
    ngonside(polyorigin, 75, i+r, i^2, :fill)
    sethue("black")
    ngonside(polyorigin, 75-outline_rad_reduction, i+r, i^2, :stroke)
end


finish()
preview()

