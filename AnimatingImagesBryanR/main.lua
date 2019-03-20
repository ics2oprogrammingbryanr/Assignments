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
hummingbird.y = display.contentHeight/2

-- create bird with width and height
local bird = display.newImageRect("Images/Bird.png", 200, 200)

-- set initial x and y position of bird
bird.x = 0
bird.y = display.contentHeight/4

-- set images to be transparent
hummingbird.alpha = 0
bird.alpha = 0

-- Function: MoveHummingbird
-- Input: this function accepts an event listener
-- Output: none
-- Description: This function adds the scroll speed to the x-value of the hummingbird
local function MoveHummingbird(event)
	-- add scroll speed to the x_value of the hummingbird
	hummingbird.x = hummingbird.x + scrollspeed2
	-- change the transparency of the hummingbird every time it moves so that it fades out
	hummingbird.alpha = hummingbird.alpha + 0.01
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
	-- change the transparency of bird every time it move so that it fades out
	bird.alpha = bird.alpha + 0.01
end

-- MoveBird will be called over and over again
Runtime:addEventListener("enterFrame", MoveBird)

-- Make it so the birds stop in the middle
if (bird.x >= 1024) then
	scrollspeed = -3
end

bird.x = bird.x + scrollspeed

