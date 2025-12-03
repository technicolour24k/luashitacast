    -- Load the bootstrap
    gFunc.LoadFile("../bootstrap.lua")

-- Define the profile
local profile = {}
local sets = {}
profile.Sets = sets
profile.Packer = {}

sets.precast = {}
sets.precast.default = {}
sets.precast['Cure'] = gFunc.Combine(sets.precast.default, {})
sets.precast['Healing Magic'] = gFunc.Combine(sets.precast.default, {})


sets.midcast = {}
sets.midcast['Healing Magic'] = {
        Main="Dagger",
        Body="Kingdom Aketon"
    }
sets.midcast['Cure'] = gFunc.Combine(sets.midcast['Healing Magic'], {
        Head="Hike Khat",
    })

sets.JobAbility = {}
sets.JobAbility['Berserk'] = {}

sets.WeaponSkills = {}
sets.WeaponSkills['Earth Crusher'] = {}

profile.OnLoad = function()
    gSettings.AllowAddSet = true
    gSettings.FastCast = 30
    tlp.logging.info("Good news everyone!")
end

profile.HandleCommand = function(args) end
profile.HandleDefault = function() end
profile.HandleAbility = function()
    tlp.xi.rules.abilities(sets,gFunc.getAction().Name)
end
profile.HandleItem = function() end
profile.HandlePrecast = function()
    tlp.xi.rules.midcast(sets,gData.GetAction().Name,gData.GetAction().Skill)
end

profile.HandleMidcast = function()
    tlp.xi.actions.spellContains(gData.GetAction().Name, "Fire")
    local result = tlp.xi.world.dayWeatherCheck(gData.GetAction().Element, gData.GetAction().Skill)
    tlp.logging.debug(string.format("Result.isWeatherMatch:%s | Result.isDayMatch:%s | Result.weatherMultiplier:%s", result.isWeatherMatch, result.isDayMatch, result.weatherMultiplier))
    tlp.xi.rules.midcast(sets,gData.GetAction().Name,gData.GetAction().Skill)
end
profile.HandlePreshot = function() end
profile.HandleMidshot = function() end
profile.HandleWeaponskill = function()
    tlp.xi.rules.weaponskill(sets,gFunc.getAction().Name)
end

return profile
