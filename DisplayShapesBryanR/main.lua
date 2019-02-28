-- Title: DisplayingShapesInLua 

local areaText
local textSize
local TriangleVertices = { 0,-150, 150,150, 150,-150 }
local myTriangle
local starVertices = { -150,-150, 0,-50, 150,-150, 50,0, 150,150,
 0,50, -150,150, -50,0 }
 local myStar

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