sets = {}
profile = {}
gFunc.LoadFile('../includes/NocSouls/common') --Load common gearsets for the Server specified in includes/lua
gFunc.LoadFile('sets/'..mjob) --Load Beta gearsets
gFunc.LoadFile('vars/'..mjob)

profile.Sets = sets

profile.OnLoad = function()
    profile.Packer = {}
    gSettings.AllowAddSet = true
    sendCommand('/lockstyleset 002')
    sendCommand('/macro book 8')
    sendCommand('/macro set 1')
    bindLACCmd('F10','cycle-engaged','engaged set')
    bindLACCmd('!F10','cycle-idle','idle set')
end


profile.OnUnload = function()

end

gFunc.LoadFile('rules/'..mjob)

return profile