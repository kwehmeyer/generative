##
using Luxor, Colors, Primes

##
h = randomddhue()
print(h)

Drawing(800,800, :png)
origin()
background("white")



tiles = Tiler(800,800, 60,120, margin = 20)
for (pos, n) in tiles 
    if  isprime(n)
        randomhue()
        box(pos, tiles.tilewidth, tiles.tileheight, :fill)
    else 
        sethue("antiquewhite")
        box(pos, tiles.tilewidth, tiles.tileheight, :fill)
    end

end


finish()
preview()
