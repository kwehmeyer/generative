##
using Luxor, Colors, Primes

##

Drawing(800,800, "start/primebubblegum/primebubblegum.png")
origin()
background("midnightblue")
r = rand(1:120) 
sethue(0,0,0)
setline(2)
setantialias(6)

tiles = Tiler(800,800, 60,240, margin = 20)
for (pos, n) in tiles 
    if  isprime(n)
        setcolor("hotpink")
        if (n ^ r) % 23 == 0

            rad1 = rand(1:13.333)
            circle(pos + r, rad1, :fill)
            setcolor("pink")
            circle(pos - r, rad1*2.14, :stroke)
        end
        setcolor("azure3")
        box(pos, tiles.tilewidth, tiles.tileheight, :fill)
    else 
        setcolor(0,0,0,0)
        box(pos, tiles.tilewidth, tiles.tileheight, :fill)
    end

end


finish()
preview()
