-- Title: AnimatingImages
-- Name: Bryan Rodriguez

-- hide status bar
display.setStatusBar(display.HiddenStatusBar)

-- global variables
scrollspeed = 3
scrollspeed2 = 6

-- background image with width and height
local backgrondgroundImage = display.newImageRect("Images/Grass.jfif", 2048, 1536)

-- create character with width and height
local hummingbird = display.newImageRect("Images/hummingbird.png", 200, 200)

--set initial x and y position of hummingbird
hummingbird.x = 0
hummingbird.y = 650

-- create bird with width and height
local bird = display.newImageRect("Images/Bird.png", 200, 200)

-- set initial x and y position of bird
bird.x = 0
bird.y = 768

-- create cycle with width and height
local cycle = display.newImageRect("Images/cycle.png", 200, 200)

-- set initial x and y position of cycle
cycle.x = 0
cycle.y = 768

-- set images to be transparent
hummingbird.alpha = 0
bird.alpha = 0
cycle.alpha = 0

-- Function: MoveHummingbird
-- Input: this function accepts an event listener
-- Output: none
-- Description: This function adds the scroll speed to the x-value of the hummingbird
local function MoveHummingbird(event)
	-- add scroll speed to the x_value of the hummingbird
	hummingbird.x = hummingbird.x + scrollspeed2
	-- add scrollspeed to the y-value of hummingbird to make it go diagonall
	hummingbird.y = hummingbird.y - scrollspeed2
	-- change the transparency of the hummingbird every time it moves so that it fades out
	hummingbird.alpha = hummingbird.alpha + 0.02
	-- size up hummingbird
    hummingbird:scale(1.004, 1.004)
end

-- MoveHummingbird will be called over and over again
Runtime:addEventListener("enterFrame", MoveHummingbird)

-- Function: MoveBird
-- Input: this function accepts an event listener
-- Output: none
-- Description: this function adds the scroll speed to the x-value of the bird
local function MoveBird(event)
	-- add scroll speed to the x-value of the bird
	bird.x = bird.x + scrollspeed
	-- add scrollspeed to the y-value of bird to make it go diagonally
	bird.y = bird.y - scrollspeed
	-- change the transparency of bird every time it move so that it fades out
	bird.alpha = bird.alpha + 0.01
	-- size up bird
	bird:scale(1.003, 1.003)
end

-- MoveBird will be called over and over again
Runtime:addEventListener("enterFrame", MoveBird)

local function MoveCycle(event)
	-- add scrollspeed to the value of cycle
    cycle.x = cycle.x + scrollspeed2
	-- add scrollspeed to the y-value of cycle to make it go diagonal
	cycle.y = cycle.y - scrollspeed2
    -- change the transparency of the cycle every time it moves so that it fades out
    cycle.alpha = cycle.alpha + 0.02
    -- size up cycle
    cycle:scale(1.003, 1.003)
end

-- MoveCycle will be called over and over again
Runtime:addEventListener("enterFrame", MoveCycle)

local textObject = display.newText("VROOM VROOM!", 0, 0, nil, 50)
textObject.x = display.contentWidth/2
textObject.y = 50
textObject:setTextColor (3, 0, 0)

local textObject = display.newText("HEY,WAIT UP!!!", 0, 0, nil, 50)
textObject.x = 250
textObject.y = 700