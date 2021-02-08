## 
using Luxor, Colors

## vars
canvas_width = paper_sizes["A4"][2]
canvas_height = paper_sizes["A4"][1]

bg_color = colorant"#376B8C"
ln_color = colorant"#B4D2D9"
ln_color2 = colorant"#000000"
border_color = colorant"#708C89"

##

Drawing(canvas_height,canvas_width, "adito.svg")
origin()
background(bg_color)

tiles = Tiler(canvas_height,canvas_width, 4,3, margin = 10)

for (pos, n) in tiles
    sethue(ln_color)
    gsave()
    translate(pos)
    if rand(1:16) == n 
        #sethue(box_color)
        #box(pos, tiles.tilewidth, tiles.tileheight, :stroke)
        sethue(ln_color2)
        p = [Point(rand(-tiles.tileheight/3:tiles.tileheight/3), rand(-tiles.tileheight/3:tiles.tileheight/3)) for i in 1:rand(5:20)]
        pp = poly(p, :stroke)
        grestore()
        continue
    end

    p = [Point(rand(-tiles.tileheight/3:tiles.tileheight/3), rand(-tiles.tileheight/3:tiles.tileheight/3)) for i in 1:rand(5:20)]
    pp = poly(p, :stroke)
    polysmooth(pp, 100, :stroke)
    grestore()

end

setline(40)
sethue(border_color)
box(O, canvas_height, canvas_width, :stroke)

finish()
preview() 
