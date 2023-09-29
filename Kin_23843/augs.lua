local profile = {};
local sets = {
    ['Drainaspir'] = {
        Head = 'Appetence Crown',
        Ring1 = { Name = 'Scintillant Ring', Augment = { [1] = 'Magic Damage +7', [2] = 'Mag. Acc+7', [3] = '"Drain" and "Aspir" potency +3', [4] = 'Enfb.mag. skill +3' } },
        Ring2 = { Name = 'Scintillant Ring', Augment = { [1] = 'Magic Damage +2', [2] = 'Mag. Acc+2', [3] = '"Drain" and "Aspir" potency +2', [4] = 'Enfb.mag. skill +7' } },
    },
    ['scintRing'] = {
        Main = 'Liberator',
        Sub = { Name = 'Utu Grip', Augment = 'DMG:+32' },
        Ammo = { Name = 'Staunch Tathlum', Augment = '"Counter"+20' },
        Head = 'Volte Cap',
        Neck = { Name = 'Loricate Torque +1', Augment = '"Regen"+80' },
        Ear1 = 'Etiolation Earring',
        Ear2 = { Name = 'Moonshade Earring', Augment = { [1] = '"Store TP"+5', [2] = '"Refresh"+10', [3] = '"Fast Cast"+5', [4] = '"Regen"+10' } },
        Body = 'Volte Jupon',
        Hands = 'Volte Bracers',
        Ring1 = { Name = 'Defending Ring', Augment = '"Regen"+80' },
        Ring2 = { Name = 'Scintillant Ring', Augment = { [1] = '"Drain" and "Aspir" potency +5', [2] = 'Enf. Mag. eff. dur. +8', [3] = 'Mag. Acc+5', [4] = 'Enfb.mag. skill +5', [5] = 'Magic Damage +5' } },
        Back = { Name = 'Moonbeam Cape', Augment = '"Counter"+20' },
        Waist = { Name = 'Windbuffet Belt +1', Augment = '"Triple Atk."+8' },
        Legs = 'Crimson Cuisses',
        Feet = 'Volte Boots',
    },
    ['scintRingEnf'] = {
        Main = 'Liberator',
        Sub = { Name = 'Utu Grip', Augment = 'DMG:+32' },
        Ammo = { Name = 'Staunch Tathlum', Augment = '"Counter"+20' },
        Head = 'Volte Cap',
        Neck = { Name = 'Loricate Torque +1', Augment = '"Regen"+80' },
        Ear1 = 'Etiolation Earring',
        Ear2 = { Name = 'Moonshade Earring', Augment = { [1] = '"Store TP"+5', [2] = '"Refresh"+10', [3] = '"Fast Cast"+5', [4] = '"Regen"+10' } },
        Body = 'Volte Jupon',
        Hands = 'Volte Bracers',
        Ring1 = { Name = 'Scintillant Ring', Augment = { [1] = '"Drain" and "Aspir" potency +2', [2] = 'Enf. Mag. eff. dur. +9', [3] = 'Mag. Acc+2', [4] = 'Enfb.mag. skill +7', [5] = 'Magic Damage +2' } },
        Ring2 = { Name = 'Scintillant Ring', Augment = { [1] = '"Drain" and "Aspir" potency +3', [2] = 'Enf. Mag. eff. dur. +10', [3] = 'Mag. Acc+7', [4] = 'Enfb.mag. skill +3', [5] = 'Magic Damage +7' } },
        Back = { Name = 'Moonbeam Cape', Augment = '"Counter"+20' },
        Waist = { Name = 'Windbuffet Belt +1', Augment = '"Triple Atk."+8' },
        Legs = 'Crimson Cuisses',
        Feet = 'Volte Boots',
    },
    ['shedir'] = {
        Main = 'Lehbrailg +1',
        Sub = 'Elan Strap',
        Ammo = { Name = 'Staunch Tathlum', Augment = '"Counter"+20' },
        Head = 'Volte Cap',
        Neck = { Name = 'Loricate Torque +1', Augment = '"Regen"+80' },
        Ear1 = { Name = 'Telos Earring', Augment = '"Counter"+20' },
        Ear2 = { Name = 'Tati Earring', Augment = '"Counter"+20' },
        Body = 'Volte Jupon',
        Hands = 'Shedir Gages',
        Ring1 = { Name = 'Defending Ring', Augment = '"Regen"+80' },
        Ring2 = 'Patricius Ring',
        Back = { Name = 'Moonbeam Cape', Augment = '"Counter"+20' },
        Waist = { Name = 'Windbuffet Belt +1', Augment = '"Triple Atk."+8' },
        Legs = 'Volte Hose',
        Feet = 'Volte Boots',
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