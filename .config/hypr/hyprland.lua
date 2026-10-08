hl.monitor({
    output   = "",
    mode     = "2560x1440@200",
    position = "0x0",
    scale    = "2",
})

hl.config({
    xwayland = {
        force_zero_scaling = true,
    },
})

require("config.programs")
require("config.environment")
require("config.autostart")
require("config.appearance")
require("config.input")
require("config.misc")
require("config.keybindings")
require("config.rules")
