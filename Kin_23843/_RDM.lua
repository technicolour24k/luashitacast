local profile = {};
local sets = {
    ['temp'] = {
        Ammo = { Name = 'Erlene\'s Notebook', Augment = {  } },
        Neck = { Name = 'Stoicheion Medal', Augment = {  } },
        Ear1 = { Name = 'Hecate\'s Earring', Augment = {  } },
        Ear2 = { Name = 'Novio Earring', Augment = {  } },
        Ring1 = { Name = 'Dark Ring', Augment = { [1] = 'Weapon skill damage +8%', [2] = 'Accuracy+5', [3] = 'Eva.+1', [4] = 'Attack+5', [5] = 'Mag. Eva.+1' } },
        Ring2 = { Name = 'Acumen Ring', Augment = {  } },
        Back = { Name = 'Izdubar Mantle', Augment = {  } },
    },
    ['enspells'] = {
        Main = { Name = 'Twashtar', Augment = 'DMG:+32' },
        Sub = { Name = 'Warlock\'s Shield', Augment = 'Sword enhancement spell damage +40' },
        Ammo = { Name = 'Staunch Tathlum', Augment = '"Counter"+20' },
        Head = { Name = 'Copper Hairpin', Augment = 'Sword enhancement spell damage +40' },
        Neck = { Name = 'Justice Badge', Augment = 'Sword enhancement spell damage +40' },
        Ear1 = { Name = 'Silver Earring', Augment = 'Sword enhancement spell damage +40' },
        Ear2 = { Name = 'Silver Earring', Augment = 'Sword enhancement spell damage +40' },
        Body = 'Skulker\'s Vest +1',
        Hands = 'Plun. Armlets +1',
        Ring1 = { Name = 'Defending Ring', Augment = '"Regen"+80' },
        Ring2 = 'Patricius Ring',
        Back = { Name = 'Moonbeam Cape', Augment = '"Counter"+20' },
        Waist = 'Chaac Belt',
        Legs = 'Skulk. Culottes +1',
        Feet = 'Pill. Poulaines +3',
    },
    ['MACC'] = {
        Main = 'Almace',
        Sub = 'Kupo Shield',
        Ammo = { Name = 'Erlene\'s Notebook', Augment = {  } },
        Head = 'Atro. Chapeau +2',
        Neck = { Name = 'Stoicheion Medal', Augment = {  } },
        Ear1 = { Name = 'Hecate\'s Earring', Augment = {  } },
        Ear2 = { Name = 'Novio Earring', Augment = {  } },
        Body = 'Atrophy Tabard +2',
        Hands = 'Leth. Gantherots +1',
        Ring1 = { Name = 'Acumen Ring', Augment = {  } },
        Ring2 = { Name = 'Stikini Ring +1', Augment = '"Refresh"+80' },
        Back = { Name = 'Izdubar Mantle', Augment = {  } },
        Waist = { Name = 'Hachirin-no-Obi', Augment = {  } },
        Legs = 'Aya. Cosciales +2',
        Feet = { Name = 'Aya. Gambieras +2', Augment = '"Subtle Blow"+40' },
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