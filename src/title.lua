--[[

]]

title = {}

local menu = {newGame = "NEW GAME", credits="CREDITS", options = "OPTIONS", exit = "QUIT"}

function title.load()
	openSans = love.graphics.newFont("assets/fonts/OpenSans-Regular.ttf", 30)
	openSansBold = love.graphics.newFont("assets/fonts/OpenSans-Bold.ttf", 30);
   	love.graphics.setFont(openSansBold)

	gui.newButton(menu.newGame, 380, 300, "start") 
	gui.newButton(menu.options, 380, 340, "options")
	gui.newButton(menu.credits, 380, 380, "credits")
	gui.newButton(menu.exit, 380, 420, "quit")
end

function title.draw()
	love.graphics.setFont(openSansBold)
   	love.graphics.setBackgroundColor(128, 171, 212)
   	love.graphics.printf("Whale Simulator", 0, 80, 300, "center")
   --[[ love.graphics.printf("^\nI\nI\nI\nI\nI\n<--------+-------->\nI\nI\nI\nI\nI\nV", 0, 200, 800, "center")
   if game.dist(mouseX, mouseY, 400, 200) < (32+32) then
      love.graphics.print("\n Swipe up for facts!", mouseX, mouseY)
   elseif game.dist(mouseX, mouseY, 400, 450) < (32+32) then
      love.graphics.print("\n HERP A DERP!", mouseX, mouseY)
   elseif game.dist(mouseX, mouseY, 275, 330) < (32+32) then
      love.graphics.print("\n Swipe for credits!", mouseX, mouseY)
   elseif game.dist(mouseX, mouseY, 525, 330) < (32+32) then
      love.graphics.print("\n Swipe to start!", mouseX, mouseY)
   end ]]

	-- One call, and everything will be drawn :P
	gui.buttonDraw()
end

function title.update(dt)
   --[[ mouseX = love.mouse.getX()
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
		swingers.checkError() ]]
end

function love.mousepressed(x, y)
	if(state == "title") then
		gui.buttonClick(x, y)
	end
end
