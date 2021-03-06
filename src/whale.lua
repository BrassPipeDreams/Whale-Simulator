whale = {}

function whale.load()
   whale.isHurt = false
   whale.hurtRemaining = 0
   whale.x = 400
   whale.y = 300
   whale.dir = 0
   whale.speed = 50
   whale.hunger = 100
   whale.health = 100
   local whale_spr = love.graphics.newImage("assets/textures/whale.png")
   whale_spr:setFilter("nearest", "nearest")
	whale_anim = newAnimation(whale_spr, 32, 64, 1, 3)
end

function whale.draw()
   if whale.isHurt then
      love.graphics.setColor(255, 0, 0)
   else
      love.graphics.setColor(255, 255, 255)
   end
   
	if whale.dir == "n" then
      whale_anim:draw(whale.x, whale.y, 0, 1, 1, 16, 32)
	elseif whale.dir == "s" then
      whale_anim:draw(whale.x, whale.y, 3.1415926535898, 1, 1, 16, 32)
	elseif whale.dir == "w" then
      whale_anim:draw(whale.x, whale.y, -1.5707963267949, 1, 1, 16, 32)
	elseif whale.dir == "e" then
	  whale_anim:draw(whale.x, whale.y, 1.5707963267949, 1, 1, 16, 32)
	elseif whale.dir == "ne" then
      whale_anim:draw(whale.x, whale.y, 0.78539816339745, 1, 1, 16, 32)
	elseif whale.dir == "se" then
      whale_anim:draw(whale.x, whale.y, 2.3561944901923, 1, 1, 16, 32)
	elseif whale.dir == "sw" then
      whale_anim:draw(whale.x, whale.y, -2.3561944901923, 1, 1, 16, 32)
	elseif whale.dir == "nw" then
      whale_anim:draw(whale.x, whale.y, -0.78539816339745, 1, 1, 16, 32)
	else
      whale_anim:draw(whale.x, whale.y, 0, 1, 1, 16, 32)
	end
end

function whale.update(dt)
   swingers.update()
   if swingers.checkGesture() then
   	gesture = swingers.getExtGesture()
   end
   
   if gesture[1] ~= nil then
      whale.dir = gesture[1]
   end
   
	if whale.dir == "n" then
	   whale.y = whale.y - (whale.speed*dt)
   elseif whale.dir == "s" then
	   whale.y = whale.y + (whale.speed*dt)
	elseif whale.dir == "w" then
	   whale.x = whale.x - (whale.speed*dt)
   elseif whale.dir == "e" then
      whale.x = whale.x + (whale.speed*dt)
   elseif whale.dir == "ne" then
      whale.y = whale.y - math.sin(whale.speed*dt)
      whale.x = whale.x + math.sin(whale.speed*dt)
   elseif whale.dir == "se" then
      whale.y = whale.y + math.sin(whale.speed*dt)
      whale.x = whale.x + math.sin(whale.speed*dt) -- THIS IS WRONG!
   elseif whale.dir == "sw" then
      whale.y = whale.y + math.sin(whale.speed*dt)
      whale.x = whale.x - math.sin(whale.speed*dt)
   elseif whale.dir == "nw" then
      whale.y = whale.y - math.sin(whale.speed*dt)
      whale.x = whale.x - math.sin(whale.speed*dt)
   end
   whale_anim:update(dt)
	swingers.checkError()
	
	if whale.x < 0 then
		whale.x = 800
	elseif whale.x > 800 then
		whale.x = 0
	end
	
	if whale.y < 0 then
	   whale.y = 600
	elseif whale.y > 600 then
	   whale.y = 0
	end
	
	if whale.hunger > 50 then
	   whale.hunger = whale.hunger - 1*dt
	   if whale.health < 100 then
	      whale.health = whale.health + 0.5*dt
	   end
	elseif whale.hunger > 0 then
	   whale.hunger = whale.hunger - 1*dt
	else
	   whale.health = whale.health - 2*dt
	end
	
	if whale.health < 0 then
	   state = "gameover"
	end
	
	if whale.isHurt then
	   whale.hurtRemaining = whale.hurtRemaining - dt
	      if whale.hurtRemaining <= 0 then
	         whale.isHurt = false
	      end
	end
end
