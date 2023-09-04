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
    ['QD'] = {
        Main = { Name = 'Arendsi Fleuret', Augment = 'Enfb.mag. skill +20' },
        Sub = { Name = 'Muse Tariqah', Augment = 'Enfb.mag. skill +20' },
        Range = { Name = 'Troll Gun', Augment = 'Enfb.mag. skill +20' },
        Ammo = 'Bronze Bullet',
        Head = { Name = 'Viti. Chapeau +2', Augment = 'Enfb.mag. skill +20' },
        Neck = { Name = 'Loricate Torque +1', Augment = '"Regen"+80' },
        Ear1 = { Name = 'Amber Earring', Augment = '"Quick Draw" ability delay -8' },
        Ear2 = { Name = 'Amber Earring', Augment = '"Quick Draw" ability delay -8' },
        Body = { Name = 'Lethargy Sayon +1', Augment = 'Enfb.mag. skill +20' },
        Hands = { Name = 'Leth. Gantherots +1', Augment = 'Enfb.mag. skill +20' },
        Ring1 = { Name = 'Copper Ring', Augment = '"Quick Draw" ability delay -8' },
        Ring2 = { Name = 'Copper Ring', Augment = '"Quick Draw" ability delay -8' },
        Back = { Name = 'Moonbeam Cape', Augment = '"Counter"+20' },
        Legs = 'Crimson Cuisses',
        Feet = { Name = 'Vitiation Boots +3', Augment = 'Enfb.mag. skill +20' },
    },
    ['mabtest'] = {
        Main = 'Almace',
        Sub = 'Kupo Shield',
        Ammo = { Name = 'Erlene\'s Notebook', Augment = { [1] = '"Mag.Atk.Bns."+28', [2] = 'Mag. Acc.+56' } },
        Head = 'Viti. Chapeau +3',
        Neck = { Name = 'Loricate Torque +1', Augment = '"Regen"+80' },
        Ear1 = 'Etiolation Earring',
        Ear2 = { Name = 'Moonshade Earring', Augment = { [1] = '"Store TP"+5', [2] = '"Refresh"+10', [3] = '"Fast Cast"+5', [4] = '"Regen"+10' } },
        Body = 'Lethargy Sayon +1',
        Hands = 'Jhakri Cuffs +1',
        Ring1 = { Name = 'Eremite\'s Ring +1', Augment = { [1] = '"Mag.Atk.Bns."+28', [2] = 'Mag. Acc.+56' } },
        Ring2 = 'Patricius Ring',
        Back = { Name = 'Moonbeam Cape', Augment = '"Counter"+20' },
        Waist = 'Othila Sash',
        Legs = 'Crimson Cuisses',
        Feet = 'Vitiation Boots +2',
    },
    ['mabagain'] = {
        Main = 'Almace',
        Sub = 'Kupo Shield',
        Ammo = { Name = 'Erlene\'s Notebook', Augment = { [1] = '"Mag.Atk.Bns."+60', [2] = 'Mag. Acc.+60' } },
        Head = 'Viti. Chapeau +3',
        Neck = { Name = 'Loricate Torque +1', Augment = '"Regen"+80' },
        Ear1 = 'Etiolation Earring',
        Ear2 = { Name = 'Moonshade Earring', Augment = { [1] = '"Store TP"+5', [2] = '"Refresh"+10', [3] = '"Fast Cast"+5', [4] = '"Regen"+10' } },
        Body = 'Lethargy Sayon +1',
        Hands = 'Jhakri Cuffs +1',
        Ring1 = { Name = 'Defending Ring', Augment = '"Regen"+80' },
        Ring2 = 'Patricius Ring',
        Back = { Name = 'Moonbeam Cape', Augment = '"Counter"+20' },
        Waist = 'Othila Sash',
        Legs = 'Crimson Cuisses',
        Feet = 'Vitiation Boots +2',
    },
    ['mab3'] = {
        Main = 'Almace',
        Sub = 'Kupo Shield',
        Ammo = { Name = 'Erlene\'s Notebook', Augment = { [1] = '"Mag.Atk.Bns."+256', [2] = 'Mag. Acc.+256' } },
        Head = 'Viti. Chapeau +3',
        Neck = { Name = 'Loricate Torque +1', Augment = '"Regen"+80' },
        Ear1 = 'Etiolation Earring',
        Ear2 = { Name = 'Moonshade Earring', Augment = { [1] = '"Store TP"+5', [2] = '"Refresh"+10', [3] = '"Fast Cast"+5', [4] = '"Regen"+10' } },
        Body = 'Lethargy Sayon +1',
        Hands = 'Jhakri Cuffs +1',
        Ring1 = { Name = 'Defending Ring', Augment = '"Regen"+80' },
        Ring2 = 'Patricius Ring',
        Back = { Name = 'Moonbeam Cape', Augment = '"Counter"+20' },
        Waist = 'Othila Sash',
        Legs = 'Crimson Cuisses',
        Feet = 'Vitiation Boots +2',
    },
    ['mab4'] = {
        Main = 'Almace',
        Sub = 'Kupo Shield',
        Ammo = { Name = 'Erlene\'s Notebook', Augment = { [1] = '"Mag.Atk.Bns."+224', [2] = 'Mag. Acc.+224' } },
        Head = 'Viti. Chapeau +3',
        Neck = { Name = 'Loricate Torque +1', Augment = '"Regen"+80' },
        Ear1 = 'Etiolation Earring',
        Ear2 = { Name = 'Moonshade Earring', Augment = { [1] = '"Store TP"+5', [2] = '"Refresh"+10', [3] = '"Fast Cast"+5', [4] = '"Regen"+10' } },
        Body = 'Lethargy Sayon +1',
        Hands = 'Jhakri Cuffs +1',
        Ring1 = { Name = 'Defending Ring', Augment = '"Regen"+80' },
        Ring2 = 'Patricius Ring',
        Back = { Name = 'Moonbeam Cape', Augment = '"Counter"+20' },
        Waist = 'Othila Sash',
        Legs = 'Crimson Cuisses',
        Feet = 'Vitiation Boots +2',
    },
    ['mab5'] = {
        Main = 'Almace',
        Sub = 'Kupo Shield',
        Ammo = { Name = 'Erlene\'s Notebook', Augment = { [1] = '"Mag.Atk.Bns."+224', [2] = 'Mag. Acc.+224' } },
        Head = 'Viti. Chapeau +3',
        Neck = { Name = 'Loricate Torque +1', Augment = '"Regen"+80' },
        Ear1 = 'Etiolation Earring',
        Ear2 = { Name = 'Moonshade Earring', Augment = { [1] = '"Store TP"+5', [2] = '"Refresh"+10', [3] = '"Fast Cast"+5', [4] = '"Regen"+10' } },
        Body = 'Lethargy Sayon +1',
        Hands = 'Jhakri Cuffs +1',
        Ring1 = { Name = 'Defending Ring', Augment = '"Regen"+80' },
        Ring2 = 'Patricius Ring',
        Back = { Name = 'Moonbeam Cape', Augment = '"Counter"+20' },
        Waist = 'Othila Sash',
        Legs = 'Crimson Cuisses',
        Feet = 'Vitiation Boots +2',
    },
    ['MAB6'] = {
        Main = 'Almace',
        Sub = 'Kupo Shield',
        Ammo = { Name = 'Erlene\'s Notebook', Augment = { [1] = '"Mag.Atk.Bns."+112', [2] = 'Mag. Acc.+112' } },
        Head = 'Viti. Chapeau +3',
        Neck = { Name = 'Loricate Torque +1', Augment = '"Regen"+80' },
        Ear1 = 'Etiolation Earring',
        Ear2 = { Name = 'Moonshade Earring', Augment = { [1] = '"Store TP"+5', [2] = '"Refresh"+10', [3] = '"Fast Cast"+5', [4] = '"Regen"+10' } },
        Body = 'Lethargy Sayon +1',
        Hands = 'Jhakri Cuffs +1',
        Ring1 = { Name = 'Defending Ring', Augment = '"Regen"+80' },
        Ring2 = 'Patricius Ring',
        Back = { Name = 'Moonbeam Cape', Augment = '"Counter"+20' },
        Waist = 'Othila Sash',
        Legs = 'Crimson Cuisses',
        Feet = 'Vitiation Boots +2',
    },
    ['mab7'] = {
        Main = 'Almace',
        Sub = 'Kupo Shield',
        Ammo = { Name = 'Erlene\'s Notebook', Augment = { [1] = '"Mag.Atk.Bns."+56', [2] = 'Mag. Acc.+56' } },
        Head = 'Viti. Chapeau +3',
        Neck = { Name = 'Loricate Torque +1', Augment = '"Regen"+80' },
        Ear1 = 'Etiolation Earring',
        Ear2 = { Name = 'Moonshade Earring', Augment = { [1] = '"Store TP"+5', [2] = '"Refresh"+10', [3] = '"Fast Cast"+5', [4] = '"Regen"+10' } },
        Body = 'Lethargy Sayon +1',
        Hands = 'Jhakri Cuffs +1',
        Ring1 = { Name = 'Defending Ring', Augment = '"Regen"+80' },
        Ring2 = 'Patricius Ring',
        Back = { Name = 'Moonbeam Cape', Augment = '"Counter"+20' },
        Waist = 'Othila Sash',
        Legs = 'Crimson Cuisses',
        Feet = 'Vitiation Boots +2',
    },
    ['mab8'] = {
        Main = 'Almace',
        Sub = 'Kupo Shield',
        Ammo = { Name = 'Erlene\'s Notebook', Augment = { [1] = '"Mag.Atk.Bns."+28', [2] = 'Mag. Acc.+28' } },
        Head = 'Viti. Chapeau +3',
        Neck = { Name = 'Loricate Torque +1', Augment = '"Regen"+80' },
        Ear1 = 'Etiolation Earring',
        Ear2 = { Name = 'Moonshade Earring', Augment = { [1] = '"Store TP"+5', [2] = '"Refresh"+10', [3] = '"Fast Cast"+5', [4] = '"Regen"+10' } },
        Body = 'Lethargy Sayon +1',
        Hands = 'Jhakri Cuffs +1',
        Ring1 = { Name = 'Defending Ring', Augment = '"Regen"+80' },
        Ring2 = 'Patricius Ring',
        Back = { Name = 'Moonbeam Cape', Augment = '"Counter"+20' },
        Waist = 'Othila Sash',
        Legs = 'Crimson Cuisses',
        Feet = 'Vitiation Boots +2',
    },
    ['mab9'] = {
        Main = 'Almace',
        Sub = 'Kupo Shield',
        Ammo = { Name = 'Erlene\'s Notebook', Augment = { [1] = '"Mag.Atk.Bns."+44', [2] = 'Mag. Acc.+44' } },
        Head = 'Viti. Chapeau +3',
        Neck = { Name = 'Loricate Torque +1', Augment = '"Regen"+80' },
        Ear1 = 'Etiolation Earring',
        Ear2 = { Name = 'Moonshade Earring', Augment = { [1] = '"Store TP"+5', [2] = '"Refresh"+10', [3] = '"Fast Cast"+5', [4] = '"Regen"+10' } },
        Body = 'Lethargy Sayon +1',
        Hands = 'Jhakri Cuffs +1',
        Ring1 = { Name = 'Defending Ring', Augment = '"Regen"+80' },
        Ring2 = 'Patricius Ring',
        Back = { Name = 'Moonbeam Cape', Augment = '"Counter"+20' },
        Waist = 'Othila Sash',
        Legs = 'Crimson Cuisses',
        Feet = 'Vitiation Boots +2',
    },
    ['mab10'] = {
        Main = 'Almace',
        Sub = 'Kupo Shield',
        Ammo = { Name = 'Erlene\'s Notebook', Augment = { [1] = '"Mag.Atk.Bns."+40', [2] = 'Mag. Acc.+40' } },
        Head = 'Viti. Chapeau +3',
        Neck = { Name = 'Loricate Torque +1', Augment = '"Regen"+80' },
        Ear1 = 'Etiolation Earring',
        Ear2 = { Name = 'Moonshade Earring', Augment = { [1] = '"Store TP"+5', [2] = '"Refresh"+10', [3] = '"Fast Cast"+5', [4] = '"Regen"+10' } },
        Body = 'Lethargy Sayon +1',
        Hands = 'Jhakri Cuffs +1',
        Ring1 = { Name = 'Defending Ring', Augment = '"Regen"+80' },
        Ring2 = 'Patricius Ring',
        Back = { Name = 'Moonbeam Cape', Augment = '"Counter"+20' },
        Waist = 'Othila Sash',
        Legs = 'Crimson Cuisses',
        Feet = 'Vitiation Boots +2',
    },
    ['mab11'] = {
        Main = 'Almace',
        Sub = 'Kupo Shield',
        Ammo = { Name = 'Erlene\'s Notebook', Augment = { [1] = '"Mag.Atk.Bns."+36', [2] = 'Mag. Acc.+36' } },
        Head = 'Viti. Chapeau +3',
        Neck = { Name = 'Loricate Torque +1', Augment = '"Regen"+80' },
        Ear1 = 'Etiolation Earring',
        Ear2 = { Name = 'Moonshade Earring', Augment = { [1] = '"Store TP"+5', [2] = '"Refresh"+10', [3] = '"Fast Cast"+5', [4] = '"Regen"+10' } },
        Body = 'Lethargy Sayon +1',
        Hands = 'Jhakri Cuffs +1',
        Ring1 = { Name = 'Defending Ring', Augment = '"Regen"+80' },
        Ring2 = 'Patricius Ring',
        Back = { Name = 'Moonbeam Cape', Augment = '"Counter"+20' },
        Waist = 'Othila Sash',
        Legs = 'Crimson Cuisses',
        Feet = 'Vitiation Boots +2',
    },
    ['mab12'] = {
        Main = 'Almace',
        Sub = 'Kupo Shield',
        Ammo = { Name = 'Erlene\'s Notebook', Augment = { [1] = '"Mag.Atk.Bns."', [2] = 'Mag. Acc.' } },
        Head = 'Viti. Chapeau +3',
        Neck = { Name = 'Loricate Torque +1', Augment = '"Regen"+80' },
        Ear1 = 'Etiolation Earring',
        Ear2 = { Name = 'Moonshade Earring', Augment = { [1] = '"Store TP"+5', [2] = '"Refresh"+10', [3] = '"Fast Cast"+5', [4] = '"Regen"+10' } },
        Body = 'Lethargy Sayon +1',
        Hands = 'Jhakri Cuffs +1',
        Ring1 = { Name = 'Defending Ring', Augment = '"Regen"+80' },
        Ring2 = 'Patricius Ring',
        Back = { Name = 'Moonbeam Cape', Augment = '"Counter"+20' },
        Waist = 'Othila Sash',
        Legs = 'Crimson Cuisses',
        Feet = 'Vitiation Boots +2',
    },
    ['mab13'] = {
        Main = 'Almace',
        Sub = 'Kupo Shield',
        Ammo = { Name = 'Erlene\'s Notebook', Augment = { [1] = '"Mag.Atk.Bns."+32', [2] = 'Mag. Acc.+32' } },
        Head = 'Viti. Chapeau +3',
        Neck = { Name = 'Loricate Torque +1', Augment = '"Regen"+80' },
        Ear1 = 'Etiolation Earring',
        Ear2 = { Name = 'Moonshade Earring', Augment = { [1] = '"Store TP"+5', [2] = '"Refresh"+10', [3] = '"Fast Cast"+5', [4] = '"Regen"+10' } },
        Body = 'Lethargy Sayon +1',
        Hands = 'Jhakri Cuffs +1',
        Ring1 = { Name = 'Defending Ring', Augment = '"Regen"+80' },
        Ring2 = 'Patricius Ring',
        Back = { Name = 'Moonbeam Cape', Augment = '"Counter"+20' },
        Waist = 'Othila Sash',
        Legs = 'Crimson Cuisses',
        Feet = 'Vitiation Boots +2',
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