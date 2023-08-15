local profile = {};
local sets = {
    ['temp'] = {
        Ammo = { Name = 'Erlene\'s Notebook', Augment = {  } },
        Head = 'Viti. Chapeau +1',
        Neck = { Name = 'Loricate Torque +1', Augment = '"Regen"+80' },
        Ear1 = 'Etiolation Earring',
        Ear2 = { Name = 'Moonshade Earring', Augment = { [1] = '"Store TP"+5', [2] = '"Refresh"+10', [3] = '"Fast Cast"+5', [4] = '"Regen"+10' } },
        Body = 'Lethargy Sayon +1',
        Hands = 'Quauhpilli Gloves',
        Ring1 = { Name = 'Defending Ring', Augment = '"Regen"+80' },
        Ring2 = 'Patricius Ring',
        Back = { Name = 'Moonbeam Cape', Augment = '"Counter"+20' },
        Waist = 'Othila Sash',
        Legs = 'Crimson Cuisses',
        Feet = 'Vitiation Boots +1',
    },
};
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