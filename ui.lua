ui = {}

function ui.load()
end

function ui.draw()
   love.graphics.print("HUNGER:", 50, 0)
   love.graphics.print("HEALTH:", 250, 0)
   love.graphics.print("SCORE:", 450, 0)
   love.graphics.print(game.score, 450, 25)
   love.graphics.setColor(0, 0, 0)
   love.graphics.rectangle("fill", 50, 26, 100, 8)
   love.graphics.rectangle("fill", 250, 26, 100, 8)
   love.graphics.setColor(255, 170, 0)
   love.graphics.rectangle("fill", 50, 25, whale.hunger, 10)
   love.graphics.setColor(255, 0, 0)
   love.graphics.rectangle("fill", 250, 25, whale.health, 10)
   
   love.graphics.setColor(255, 255, 255)
end

function ui.update()
end
