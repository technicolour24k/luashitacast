-- Load the bootstrap
gFunc.LoadFile("../bootstrap.lua")

-- Use the bootstrap's fetch_and_load to include framework files
-- bootstrap.fetch_and_load("summoner_utils.lua")

-- Define the profile
local profile = {}
local sets = {}
profile.Sets = sets
profile.Packer = {}

profile.OnLoad = function()
    gSettings.AllowAddSet = true
    tlp.logging.info("Good news everyone!")
end

-- Additional handlers...
profile.HandleCommand = function(args) end
profile.HandleDefault = function() end
profile.HandleAbility = function() end
profile.HandleItem = function() end
profile.HandlePrecast = function() end

profile.HandleMidcast = function()
    tlp.actions.cancelBuff(gData.GetAction().Name,gData.GetAction().CastTime)
end
profile.HandlePreshot = function() end
profile.HandleMidshot = function() end
profile.HandleWeaponskill = function() end

return profile
