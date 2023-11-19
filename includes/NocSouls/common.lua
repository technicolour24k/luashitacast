gFunc.LoadFile('../includes/config')
gFunc.LoadFile('../includes/common-functions')
gFunc.LoadFile('../includes/'..config.server..'/common-gearsets') --Load common gearsets for the Server specified in includes/config.lua
gFunc.LoadFile('../includes/mob-immunities')
gFunc.LoadFile('sets/'..mjob) --Load gearsets
gFunc.LoadFile('vars/'..mjob) -- Need vars loading before common rules
gFunc.LoadFile('../includes/common-rules')
bindKey('F12','/lac fwd status-check','1-button status removal')
createAlias('/th','/lac fwd toggle-TH','TH toggle')
createAlias('/recraft','/lac fwd recraft','recraft')
createAlias('/wsc','/lac fwd ws-chain','execute ws-chain')
createAlias('/buffme','/lac fwd buff-cycle','execute buff cycle')