r = require("robot")
inventorySize = r.inventorySize()

input = {}
print("x,y,h :")
text = term.read()
for data in text:gmatch('^[%s]+') do
    input[#input+1] = data
end

for h=1, input[3]/3 do
    for x=1, input[1]/3/2 do
        for y=1, input[2] do
            if r.count(inventorySize) == 64 then
                print("Я переполнен :(")
                os.exit()
            end
            if r.detect() then
                r.swing()
                r.forward()
            end
        end

        r.back()
        if r.detect() then
            r.swing()
            r.forward()
        end
        r.turnRight()
        for 1,3 do 
            if r.detect() then
                r.swing()
                r.forward()
            else r.forward() end
        end
        r.turnRight()

        for y=1, input[2] do
            if r.count(inventorySize) == 64 then
                print("Я переполнен :(")
                os.exit()
            end
            if r.detect() then
                r.swing()
                r.forward()
            else r.forward() end
        end

        r.back()
        if r.detect() then
            r.swing()
            r.left()
        else r.left() end
        r.turnRight()
        for 1,3 do 
            if r.detect() then
                r.swing()
                r.forward()
            else r.forward() end
        end
        r.turnLeft()
    end
end