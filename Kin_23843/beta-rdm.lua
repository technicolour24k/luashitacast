local profile = {};
local sets = {
    ['mab40'] = {
        Main = { Name = 'Eminent Wand', Augment = { [1] = '"Mag.Atk.Bns."+48', [2] = 'Mag. Acc.+48' } },
        Sub = { Name = 'Muse Tariqah', Augment = 'Enfb.mag. skill +20' },
        Range = { Name = 'Troll Gun', Augment = 'Enfb.mag. skill +20' },
        Ammo = 'Bronze Bullet',
        Head = { Name = 'Viti. Chapeau +2', Augment = 'Enfb.mag. skill +20' },
        Neck = { Name = 'Loricate Torque +1', Augment = '"Regen"+80' },
        Ear1 = 'Etiolation Earring',
        Ear2 = { Name = 'Moonshade Earring', Augment = { [1] = '"Store TP"+5', [2] = '"Refresh"+10', [3] = '"Fast Cast"+5', [4] = '"Regen"+10' } },
        Body = { Name = 'Lethargy Sayon +1', Augment = 'Enfb.mag. skill +20' },
        Hands = { Name = 'Leth. Gantherots +1', Augment = 'Enfb.mag. skill +20' },
        Ring1 = { Name = 'Defending Ring', Augment = '"Regen"+80' },
        Ring2 = 'Patricius Ring',
        Back = { Name = 'Moonbeam Cape', Augment = '"Counter"+20' },
        Waist = 'Othila Sash',
        Legs = 'Crimson Cuisses',
        Feet = 'Leth. Houseaux +1',
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
    gFunc.EquipSet(sets.mab40)
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