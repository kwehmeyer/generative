##
using Luxor, Colors

## Drawing
# Page Setup
Drawing("A4", "1728.png")
origin()
background("white")

# Border
border_padding = 80
border_width = paper_sizes["A4"][1] - border_padding
border_height = paper_sizes["A4"][2] - border_padding

sethue("antiquewhite")
box(O, border_width, border_height, :fill)

# Circles
for i in 20:((border_width-20)/2)
    if (i % 17 == 0)
        sethue("black")
        circle(O,i, :stroke)
    elseif (i % 38 == 0)
        setline(3.38)
        circle(O,i, :stroke)
    end
    sethue("red")
    setline(3.17)
end

# Text
fontsize(80)
fontface("courier")
text("3 8", Point(200, -300), halign=:right)
sethue("black")
text("1 7", Point(-200, -300), halign=:left)


# Bar
setline(10)
spacing = 40
setdash("dotted")
height = 325
line(Point(0 - (border_width * .17) - spacing, height), Point(0-spacing/4, height), :stroke)
sethue("red")
line(Point(0 + (border_width *.38) + spacing, height), Point(0+spacing/4, height), :stroke)

# Finishing
finish()

## 