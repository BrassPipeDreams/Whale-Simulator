title = {}

function title.load()
   silkscreen = love.graphics.newFont("assets/slkscre.ttf", 20)
   love.graphics.setFont(silkscreen)
   mouseX = love.mouse.getX()
   mouseY = love.mouse.getY()
end

function title.draw()
   love.graphics.setBackgroundColor(0, 202, 202)
   love.graphics.printf("Whale Simulator 2014!", 0, 100, 800, "center")
   love.graphics.printf("^\nI\nI\nI\nI\nI\n<--------+-------->\nI\nI\nI\nI\nI\nV", 0, 200, 800, "center")
   if game.dist(mouseX, mouseY, 400, 200) < (32+32) then
      love.graphics.print("\n Swipe up for facts!", mouseX, mouseY)
   elseif game.dist(mouseX, mouseY, 400, 450) < (32+32) then
      love.graphics.print("\n HERP A DERP!", mouseX, mouseY)
   elseif game.dist(mouseX, mouseY, 275, 330) < (32+32) then
      love.graphics.print("\n Swipe for credits!", mouseX, mouseY)
   elseif game.dist(mouseX, mouseY, 525, 330) < (32+32) then
      love.graphics.print("\n Swipe to start!", mouseX, mouseY)
   end
end

function title.update(dt)
   mouseX = love.mouse.getX()
   mouseY = love.mouse.getY()
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
   elseif gesture[1] == "n" then
      state = "facts"
      table.remove(gesture)
   elseif gesture[1] == "s" then
   end
		swingers.checkError()
end
