title = {}

function title.load()
   silkscreen = love.graphics.newFont("assets/slkscre.ttf", 20)
   love.graphics.setFont(silkscreen)
end

function title.draw()
   love.graphics.setBackgroundColor(0, 202, 202)
   love.graphics.printf("Whale Simulator 2014!\n\n\n\n\n\nSwipe to the right to start!\n---------->\n\n\nSwipe to the left for credits!\n<----------", 150, 150, 500, "center")
end

function title.update(dt)
   	swingers.update()
	if swingers.checkGesture() then
		gesture = swingers.getExtGesture()
   end
   if gesture[1] == "e" then
      state = "game"
      table.remove(gesture)
   elseif gesture[1] == "w" then
      state = "credits"
      table.remove(gesture)
   end
		swingers.checkError()
end
