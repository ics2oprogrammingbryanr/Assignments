-- Title: DisplayingShapesInLua 

local areaText
local textSize = 50
local TriangleVertices = { 0,-150, 150,150, 150,-150 }
local myTriangle
local starVertices = { -150,-150, 0,-50, 150,-150, 50,0, 150,150,
 0,50, -150,150, -50,0 }
 local myStar
 local vertices = { 0,-150, 150,150, 100,200, 50,250, -50,250, -100,200, -150,150 }
 local myCone
 local newAreaText
 local newAreaText2

-- set couler of background
display.setDefault("background", 56/255, 200/255, 10/255)

-- remove status bar
display.setStatusBar(display.HiddenStatusBar)

--create triangle
myTriangle = display.newPolygon(850, 400 ,TriangleVertices)

--create border
myTriangle.strokeWidth = 15

--set color of border
myTriangle:setStrokeColor(0, 0, 0)

--set color of triangle
myTriangle:setFillColor(108/255, 32/255, 159/255)

--create poltgon
myStar = display.newPolygon(550, 400 ,starVertices)

--set border for star
myStar.strokeWidth = 15

--set color for star
myStar:setFillColor(138/255, 138/255, 138/255)

--set color of border
myStar:setStrokeColor(0, 0, 0)

--create cone 
myCone = display.newPolygon(200, 350, vertices)

--set cone color
myCone:setFillColor(20/255, 238/255, 26)

--set cone border
myCone.strokeWidth = 15

--set border color
myCone:setStrokeColor(0, 0, 0)

--create new text
areaText = display.newText("triangle", 0, 0, Arial, textSize)

--set x and y position
areaText.x = 900
areaText.y = 600

--create new text 
newAreaText = display.newText("star", 0, 0, Arial, textSize)

--set x and y position
newAreaText.x = 550
newAreaText.y = 600

--create pentagon
newAreaText2 = display.newText("pentagon", 0, 0, Arial, textSize)

--set x and y position
newAreaText2.x = 200
newAreaText2.y = 600