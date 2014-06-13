boat = {}

function boat.load()
   local boat_spr = love.graphics.newImage("assets/boat.png")
   boat_spr:setFilter("nearest", "nearest")
   boat_anim = newAnimation(boat_spr, 32, 64, 0.5, 3)
   boat.x = math.random(0, 1000)
   boat.y = math.random(0, 1000)
   boat.rot = 0
   boat.speed = 75
   boatDist = math.random(100, 500)
end

function boat.draw()
   boat_anim:draw(boat.x, boat.y, boat.rot, 1, 1, 16, 32)
end

function boat.update(dt)
   boat_anim:update(dt)
   if boatDist > 0 then
      if boat.rot == 0 then
         boat.y = boat.y - (boat.speed*dt)
         boatDist = boatDist - (boat.speed*dt) 
      elseif boat.rot == 3.1415926535898 then
         boat.y = boat.y + (boat.speed*dt)
         boatDist = boatDist - (boat.speed*dt)
      elseif boat.rot == -1.5707963267949 then
         boat.x = boat.x - (boat.speed*dt)
         boatDist = boatDist - (boat.speed*dt)
      elseif boat.rot == 1.5707963267949 then
         boat.x = boat.x + (boat.speed*dt)
         boatDist = boatDist - (boat.speed*dt)
      elseif boat.rot == 0.78539816339745 then
         boat.y = boat.y - math.sin(boat.speed*dt)
         boat.x = boat.x + math.sin(boat.speed*dt)
         boatDist = boatDist - (boat.speed*dt)
      elseif boat.rot == 2.3561944901923 then
         boat.y = boat.y + math.sin(boat.speed*dt)
         boat.x = boat.x + math.sin(boat.speed*dt)
         boatDist = boatDist - (boat.speed*dt)
      elseif boat.rot == -2.3561944901923 then
         boat.y = boat.y + math.sin(boat.speed*dt)
         boat.x = boat.x - math.sin(boat.speed*dt)
         boatDist = boatDist - (boat.speed*dt)
      elseif boat.rot == -0.78539816339745 then
         boat.y = boat.y - math.sin(boat.speed*dt)
         boat.x = boat.x - math.sin(boat.speed*dt)
         boatDist = boatDist - (boat.speed*dt)
      end
   elseif boatDist <= 0 then
      boatDist = math.random (100, 500)
      boat.num = math.random(0, 7)
      if boat.num == 0 then
         boat.rot = 0
      elseif boat.num == 1 then
         boat.rot = 3.1415926535898
      elseif boat.num == 2 then
         boat.rot = -1.5707963267949
      elseif boat.num == 3 then
         boat.rot = 1.5707963267949
      elseif boat.num == 4 then
         boat.rot = 0.78539816339745
      elseif boat.num == 5 then
         boat.rot = 2.3561944901923
      elseif boat.num == 6 then
         boat.rot = -2.3561944901923
      elseif boat.num == 7 then
         boat.rot = -0.78539816339745
      end
   end
   
   if boat.x < 0 then
		boat.x = 800
	elseif boat.x > 800 then
		boat.x = 0
	end
	
	if boat.y < 0 then
	   boat.y = 600
	elseif boat.y > 600 then
	   boat.y = 0
	end
end

function boat.destChoice()
   boat.rot = math.random(0, 7)
   if boat.rot == 0 then
      boat.rot = 0
      boatDest.y = math.random(0, 600)
   elseif boat.rot == 1 then
      boat.rot = 3.1415926535898
      boatDest.y = math.random(0, 600)
   elseif boat.rot == 2 then
      boat.rot = -1.5707963267949
      boatDest.x = math.random(0, 800)
   elseif boat.rot == 3 then
      boat.rot = 1.5707963267949
      boatDest.x = math.random(0, 800)
   elseif boat.rot == 4 then
      boat.rot = 0.78539816339745
      boatDest.x = math.random(0, 800)
      boatDest.y = math.random(0, 600)
   elseif boat.rot == 5 then
      boat.rot = 2.3561944901923
      boatDest.x = math.random(0, 800)
      boatDest.y = math.random(0, 600)
   elseif boat.rot == 6 then
      boat.rot = -2.3561944901923
      boatDest.x = math.random(0, 800)
      boatDest.y = math.random(0, 600)
   elseif boat.rot == 7 then
      boat.rot = -0.78539816339745
      boatDest.x = math.random(0, 800)
      boatDest.y = math.random(0, 600)
   end
end
