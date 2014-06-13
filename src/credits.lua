credits = {}

function credits.load()
end

function credits.draw()
   love.graphics.setBackgroundColor(0, 0, 0)
   love.graphics.printf("Made with LOVE! <3\n\n\nDaemon L. Schmidt - Coding and Design\n\nMrWhales - Art\n\nSkunk_Giant - Music\n\nSpecial thanks to Bartbes,\nthe creator of Swingers and -gulp- AnAL!\n\n\n\nSwipe to go back to the title screen!\n---------->", 0, 150, 800, "center")
end

function credits.update(dt)
  	swingers.update()
	if swingers.checkGesture() then
		gesture = swingers.getExtGesture()
   end
   if gesture[1] == "e" then
      state = "title"
      table.remove(gesture)
   end
		swingers.checkError()
end
