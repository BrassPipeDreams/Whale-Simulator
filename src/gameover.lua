gameover = {}

function gameover.load()
end

function gameover.draw()
   love.graphics.printf("Oh whale, you've been krilled!\nClick on the button to be resurrected by the great whale gods!", 0, 150, 800, "center")
end

function gameover.update(dt)
  	swingers.update()
	if swingers.checkGesture() then
		gesture = swingers.getExtGesture()
  	end
   	if gesture[1] == "n" then
    	state = "title"
    	game.load()
   	end
	swingers.checkError()
end
