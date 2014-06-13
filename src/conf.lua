function love.conf(t)
    t.title = "Whale Simulator 2014 \"APLHA\""
    t.author = "DaemonLee, MrWhales or Skunk_Giant, Rafael C. Nunes or ranu."
    t.url = "The Escapecraft.net forums or the Escapecraft IRC server"
    t.identity = nil            -- The name of the save directory (string)
    t.version = "0.8.0"
    t.console = false
    t.release = false
    t.screen.width = 800
    t.screen.height = 600
    t.screen.fullscreen = true
    t.screen.vsync = true
    t.screen.fsaa = 0           -- The number of FSAA-buffers (number)
    t.modules.joystick = false   -- Enable the joystick module (boolean)
    t.modules.audio = true      -- Enable the audio module (boolean)
    t.modules.keyboard = true   -- Enable the keyboard module (boolean)
    t.modules.event = true      -- Enable the event module (boolean)
    t.modules.image = true      -- Enable the image module (boolean)
    t.modules.graphics = true   -- Enable the graphics module (boolean)
    t.modules.timer = true      -- Enable the timer module (boolean)
    t.modules.mouse = true      -- Enable the mouse module (boolean)
    t.modules.sound = true      -- Enable the sound module (boolean)
    t.modules.physics = false    -- Enable the physics module (boolean)
end
