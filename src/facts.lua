facts = {}

function facts.load()
   lock_spr = love.graphics.newImage("assets/textures/lock.png")
   mouseX = love.mouse.getX()
   mouseY = love.mouse.getY()
end

function facts.draw()
   love.graphics.printf("Swipe to\ngo back!\n\n\nI\nI\nI\nI\nI\nI\nI\nI\nV", 600, 50, 200, "center")

   love.graphics.draw(lock_spr, 50, 50, 0, 1, 1, 25, 25)
   love.graphics.draw(lock_spr, 200, 50, 0, 1, 1, 25, 25)
   love.graphics.draw(lock_spr, 350, 50, 0, 1, 1, 25, 25)
   love.graphics.draw(lock_spr, 500, 50, 0, 1, 1, 25, 25)
   
   love.graphics.draw(lock_spr, 50, 200, 0, 1, 1, 25, 25)
   love.graphics.draw(lock_spr, 200, 200, 0, 1, 1, 25, 25)
   love.graphics.draw(lock_spr, 350, 200, 0, 1, 1, 25, 25)
   love.graphics.draw(lock_spr, 500, 200, 0, 1, 1, 25, 25)
   
   love.graphics.draw(lock_spr, 50, 350, 0, 1, 1, 25, 25)
   love.graphics.draw(lock_spr, 200, 350, 0, 1, 1, 25, 25)
   love.graphics.draw(lock_spr, 350, 350, 0, 1, 1, 25, 25)
   love.graphics.draw(lock_spr, 500, 350, 0, 1, 1, 25, 25)
   
   if game.dist (mouseX, mouseY, 75, 75) < (30+30) then
	   love.graphics.rectangle("fill", mouseX, mouseY, 250, 50)
	elseif game.dist (mouseX, mouseY, 225, 75) < (30+30) then
	   love.graphics.rectangle("fill", mouseX, mouseY, 250, 50)
	elseif game.dist (mouseX, mouseY, 375, 75) < (30+30) then
	   love.graphics.rectangle("fill", mouseX, mouseY, 250, 50)
	elseif game.dist (mouseX, mouseY, 525, 75) < (30+30) then
	   love.graphics.rectangle("fill", mouseX, mouseY, 250, 50)
	elseif game.dist (mouseX, mouseY, 75, 225) < (30+30) then
	   love.graphics.rectangle("fill", mouseX, mouseY, 250, 50)
	elseif game.dist (mouseX, mouseY, 225, 225) < (30+30) then
	   love.graphics.rectangle("fill", mouseX, mouseY, 250, 50)
	elseif game.dist (mouseX, mouseY, 375, 225) < (30+30) then
	   love.graphics.rectangle("fill", mouseX, mouseY, 250, 50)
	elseif game.dist (mouseX, mouseY, 525, 225) < (30+30) then
	   love.graphics.rectangle("fill", mouseX, mouseY, 250, 50)
	elseif game.dist (mouseX, mouseY, 75, 375) < (30+30) then
	   love.graphics.rectangle("fill", mouseX, mouseY, 250, 50)
	elseif game.dist (mouseX, mouseY, 225, 375) < (30+30) then
	   love.graphics.rectangle("fill", mouseX, mouseY, 250, 50)
	elseif game.dist (mouseX, mouseY, 375, 375) < (30+30) then
	   love.graphics.rectangle("fill", mouseX, mouseY, 250, 50)
	elseif game.dist (mouseX, mouseY, 525, 375) < (30+30) then
	   love.graphics.rectangle("fill", mouseX, mouseY, 250, 50)
	end
end

function facts.update(dt)
  	swingers.update()
	if swingers.checkGesture() then
		gesture = swingers.getExtGesture()
   end
   if gesture[1] == "s" then
      state = "title"
   end
		swingers.checkError()
   mouseX = love.mouse.getX()
   mouseY = love.mouse.getY()
end
