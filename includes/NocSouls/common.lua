gFunc.LoadFile('../includes/config')
gFunc.LoadFile('../includes/common-functions')
gFunc.LoadFile('../includes/'..config.server..'/common-gearsets') --Load common gearsets for the Server specified in includes/config.lua
gFunc.LoadFile('../includes/common-rules')
gFunc.LoadFile('../includes/mob-immunities')
gFunc.LoadFile('sets/'..mjob) --Load gearsets
infoLog('sets/'..mjob..' loaded')
gFunc.LoadFile('vars/'..mjob)
infoLog('vars/'..mjob..' loaded')
bindKey('F12','/lac fwd status-check','1-button status removal')
createAlias('/th','/lac fwd toggle-TH','TH toggle')