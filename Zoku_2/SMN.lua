    -- Load the bootstrap
    gFunc.LoadFile("../bootstrap.lua")

-- Define the profile
local profile = {}
local sets = {}
profile.Sets = sets
profile.Packer = {}

sets.precast = {}

sets.midcast = {}
sets.midcast['Healing Magic'] = {
        Main="Dagger",
        Body="Kingdom Aketon"
    }
sets.midcast['Cure'] = gFunc.Combine(sets.midcast['Healing Magic'], {
        Head="Hike Khat",
    })



profile.OnLoad = function()
    gSettings.AllowAddSet = true
    gSettings.FastCast = 30
    tlp.logging.info("Good news everyone!")
end

profile.HandleCommand = function(args) end
profile.HandleDefault = function() end
profile.HandleAbility = function() end
profile.HandleItem = function() end
profile.HandlePrecast = function() end

profile.HandleMidcast = function()
    tlp.xi.actions.spellContains(gData.GetAction().Name, "Fire")
    local result = tlp.xi.world.dayWeatherCheck(gData.GetAction().Element, gData.GetAction().Skill)
    tlp.logging.debug(string.format("Result.isWeatherMatch:%s | Result.isDayMatch:%s | Result.weatherMultiplier:%s", result.isWeatherMatch, result.isDayMatch, result.weatherMultiplier))
    tlp.xi.rules.midcast(sets,gData.GetAction().Name,gData.GetAction().Skill)
end
profile.HandlePreshot = function() end
profile.HandleMidshot = function() end
profile.HandleWeaponskill = function() end

return profile
