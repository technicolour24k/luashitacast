profile = {}
sets = {}
gFunc.LoadFile('../includes/NocSouls/common') --Load common gearsets for the Server specified in includes/lua


profile = {}
profile.Sets = sets
--------------------------------------
--              BEGIN RULES         --
--------------------------------------

profile.OnLoad = function()
    profile.Packer = {}
    gSettings.AllowAddSet = true
    bindLACCmd('F9','cycle-weapons','cycle-weapons')
    bindLACCmd('F10','cycle-engaged','engaged set')
    bindLACCmd('!F10','cycle-idle','idle set')
end


profile.OnUnload = function()

end
player = gData.GetPlayer()
env = gData.GetEnvironment()
action = gData.GetAction()

gFunc.LoadFile('rules/'..mjob)

return profile