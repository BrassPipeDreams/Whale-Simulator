boat = {} -- THIS BOAT IS TOTALLY NOT FINISHED!

function boat.load()
   local boat_spr = love.graphics.newImage("assets/boat.png")
   boat_anim = newAnimation(boat_spr, 32, 64, 0.5, 3)
   boatDest = {}
   boatCur = {}
   boatCur.x = 400
   boatCur.y = 300
   boatDest.x = boatCur.x
   boatDest.y = boatCur.y
   boat.speed = 50
   boat.destChoice()
end

function boat.destChoice()
   boatDir = math.random(0, 7)
   if boatDir == 0 then
      boat.rot = 0
      boatDest.y = math.random(0, 600)
   elseif boatDir == 1 then
      boat.rot = 3.1415926535898
      boatDest.y = math.random(0, 600)
   elseif boatDir == 2 then
      boat.rot = -1.5707963267949
      boatDest.x = math.random(0, 800)
   elseif boatDir == 3 then
      boat.rot = 1.5707963267949
      boatDest.x = math.random(0, 800)
   elseif boatDir == 4 then
      boat.rot = 0.78539816339745
      boatDest.x = math.random(0, 800)
      boatDest.y = math.random(0, 600)
   elseif boatDir == 5 then
      boat.rot = 2.3561944901923
      boatDest.x = math.random(0, 800)
      boatDest.y = math.random(0, 600)
   elseif boatDir == 6 then
      boat.rot = -2.3561944901923
      boatDest.x = math.random(0, 800)
      boatDest.y = math.random(0, 600)
   elseif boatDir == 7 then
      boat.rot = -0.78539816339745
      boatDest.x = math.random(0, 800)
      boatDest.y = math.random(0, 600)
   end
end

function boat.draw()
   boat_anim:draw(boatCur.x, boatCur.y, boat.rot, 1, 1, 16, 32)
end

function boat.update(dt)
   boat_anim:update(dt)
   if boatDir == 0 then
      boatCur.y = boatCur.y - (boat.speed*dt)
   elseif boatDir == 1 then
      boatCur.y = boatCur.y + (boat.speed*dt)
   elseif boatDir == 2 then
      boatCur.y = boatCur.y - (boat.speed*dt)
   elseif boatDir == 3 then
      boatCur.y = boatCur.y + (boat.speed*dt)
   elseif boatDir == 4 then
      boatCur.y = boatCur.y - (boat.speed*dt)
   elseif boatDir == 5 then
      boatCur.y = boatCur.y - (boat.speed*dt)
   elseif boatDir == 6 then
      boatCur.y = boatCur.y - (boat.speed*dt)
   elseif boatDir == 7 then
      boatCur.y = boatCur.y - (boat.speed*dt)
   end
end
