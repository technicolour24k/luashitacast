local profile = {};
local sets = {};
sets.SMN={}
sets.SMN['Skill'] = {}
sets.SMN['Favour'] = {}

profile.Sets = sets;

profile.Packer = {
};

profile.OnLoad = function()
    gSettings.AllowAddSet = true;
end

profile.OnUnload = function()
end

profile.HandleCommand = function(args)
end

profile.HandleDefault = function()

end

profile.HandleAbility = function()
    if (gData.action.Name == "Avatar's Favor") then
        gFunc.equip(sets.SMN['Favour'])
    end
end

profile.HandleItem = function()
end

profile.HandlePrecast = function()
end

profile.HandleMidcast = function()
end

profile.HandlePreshot = function()
end

profile.HandleMidshot = function()
end

profile.HandleWeaponskill = function()
end

return profile;