credits = {}

function credits.load()
end

function credits.draw()
   love.graphics.setBackgroundColor(0, 0, 0)
   love.graphics.printf("Made with LÖVE! <3\n===================================\nDaemon L. Schmidt - Coding and Design\nMrWhales - Art\nSkunk_Giant - Music\nRafael C. Nunes - Coding\n\nSpecial thanks to Bartbes,\nthe creator of Swingers and -gulp- AnAL!", 0, 100, 800, "center")

end

function credits.update(dt)
  	--[[swingers.update()
	if swingers.checkGesture() then
		gesture = swingers.getExtGesture()
   end
   if gesture[1] == "e" then
      state = "title"
      table.remove(gesture)
   end
		swingers.checkError()
	]]
	
end
