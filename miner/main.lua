r = require("robot")
inventorySize = r.inventorySize()

input = {}
print("y,x,h :")
text = io.read()
for data in text:gmatch('[^%s]+') do
    input[#input+1] = tonumber(data)
    print(tonumber(data))
end

for h=1, input[3] do
    for x=1, input[2] do
        for y=1, input[1] do
            r.swing(0)
            for i=1, 3 do r.forward() end
        end
        for y=input[1], 1, -1 do
            r.back()
        end    
        r.turnRight()
        for i=1, 3 do r.forward() end
        r.turnLeft()
    end
end