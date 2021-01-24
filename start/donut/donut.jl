##
using Luxor


##
Drawing(800,800, "donut.png")
origin()

garishmesh = mesh(
    box(BoundingBox(), vertices=true),
    ["red", "red", "burlywood1", "antiquewhite"])

setmesh(garishmesh)

paint()

setline(1)
sethue("white")
hypotrochoid(181, 81, 130, :stroke)

finish()
preview()