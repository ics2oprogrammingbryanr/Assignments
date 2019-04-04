display.setStatusBar(display.HiddenStatusBar)

local lives
local heart1
local heart2
local heart3
local questionObject
local correctObject
local incorrectObject
local scoreObject
local randomNumber1
local randomNumber2
local totalSeconds = 10
local secondsLeft = 10
local clockText
local countDownTimer
local numericField
local userAnswer
local randomOperator
local rounder
local correctAnswer


local function UpdateTime()
	secondsLeft = secondsLeft - 1

	clockText.text = secondsLeft .. ""

	if (secondsLeft == 0 ) then

		secondsLeft = totalSeconds
		lives = lives - 1


		if (lives == 2) then
			heart3.isVisable = false
		elseif (lives == 1) then
		    heart3.isVisable = false
		    heart2.isVisable = false
		elseif (lives == 0) then
		    heart3.isVisable = false
		    heart2.isVisable = false
		    heart1.isVisable = false
		end
	end	    	
end

local function Askquestion()
	
	randomOperator = math.random(1, 4)


	if (randomOperator == 1) then

		randomNumber1 = math.random(0, 20)
		randomNumber2 = math.random(0, 20)


		correctAnswer = randomNumber1 + randomNumber2


		questionObject.text = randomNumber1 .. " + " .. randomNumber2 .. " = "


	elseif (randomOperator == 2) then

	    randomNumber1 = math.random(10, 20)
	    randomNumber2 = math.random(0, 10)


	    correctAnswer = randomNumber1 - randomNumber2


	    questionObject.text = randomNumber1 .. " - " .. randomNumber2 .. " = "


	elseif (randomOperator == 3) then

		randomNumber1 = math.random(0, 10)
		randomNumber2 = math.random(0, 10)


		correctAnswer = randomNumber1 * randomNumber2


		questionObject.text = randomNumber1 .. " * " .. randomNumber2 .. " = "


	elseif (randomOperator == 4) then

		randomNumber1 = math.random(0, 100)
		randomNumber2 = math.random(0, 100)


		correctAnswer = randomNumber1 / randomNumber2


		print( math.round( correctAnswer) )
		correctAnswer = math.round( correctAnswer )


		questionObject.text = randomNumber1 .. " / " .. " = "
	end	
end

local function HideCorrect()
	correctObject.isVisable = false
	Askquestion()
end

local function HideIncorrect()
	incorrectObject.isVisable = false
	Askquestion()
end

local function NumericFieldListener( event )
	

    if ( event.phase == "began" ) then


	   event.target.text = ""

    elseif event.phase == "submitted" then


	   userAnswer = (event.target.text)


	   if (userAnswer == correctAnswer) then

		   secondsLeft = totalSeconds

		   score = score + 1
		   scoreObject.text = score .. ""


		   correctObject.isVisable = true
		   incorrectObject.isVisable = false
		   timer.performWithDelay(2000, HideCorrect)

	    elseif event.phase == "submitted" then
		   if (userAnswer == correctAnswer) then
			   lives = lives - 1
			   correctObject.isVisable = false
			   incorrectObject.isvisable = true
			   timer.performWithDelay(2000, HideIncorrect)
			end   
        end
    end
end	

local function startTimer()

	countDownTimer = timer.performWithDelay( 1000, UpdateTime, 0)
end


questionObject = display.newText( "", display.contentWidth/3, display.contentHeight/2, nil, 50 )
questionObject:setTextColor(1,0,0)


correctObject = display.newText( "Correct!", display.contentHeight*2/3, display.contentWidth/2, nil, 50 )
correctObject:setTextColor(0,1,0)
correctObject.isVisable	= false


incorrectObject = display.newText( "Incorrect!", display.contentHeight*2/3, display.contentWidth/2, nil, 50 )
incorrectObject:setTextColor(1,0,0)
incorrectObject.isVisable = false


numericField = native.newTextField( display.contentWidth/2, display.contentHeight/2, 150, 80 )
numericField.inputType = "number"


numericField:addEventListener( "userInput", NumericFieldListener)

heart3 = display.newImageRect("Images/heart.png", 100, 100)
heart3.x = display.contentWidth * 5 / 8
heart3.y = display.contentHeight * 1 / 7
heart2 = display.newImageRect("Images/heart.png", 100, 100)
heart2.x = display.contentWidth * 6 / 8
heart2.y = display.contentHeight * 1 / 7
heart1 = display.newImageRect("Images/heart.png", 100, 100)
heart1.x = display.contentWidth * 7 / 8
heart1.y = display.contentHeight * 1 / 7

clockText = display.newText( "" .. secondsLeft .. "", display.contentHeight*1/7, display.contentWidth*1/9, nil, 50 )
scoreObject = display.newText( "" .. score .. "", display.contentHeight*3/7, display.contentWidth*1/9, nil, 50 )

startTimer()
Askquestion()