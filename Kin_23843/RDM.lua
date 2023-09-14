profile = {}
sets = {}
gFunc.LoadFile('../includes/NocSouls/common') --Load common gearsets for the Server specified in includes/lua
gFunc.LoadFile('sets/'..mjob) --Load gearsets
gFunc.LoadFile('vars/'..mjob)

profile = {}
profile.Sets = sets
--------------------------------------
--              BEGIN RULES         --
--------------------------------------

profile.OnLoad = function()
    profile.Packer = {}
    gSettings.AllowAddSet = true
end


profile.OnUnload = function()

end

gFunc.LoadFile('rules/'..mjob)

return profile