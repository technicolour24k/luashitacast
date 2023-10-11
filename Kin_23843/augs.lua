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
    ['subtleblow'] = {
        Main = 'Almace',
        Sub = 'Genesis Shield',
        Ammo = { Name = 'Staunch Tathlum', Augment = '"Counter"+20' },
        Head = { Name = 'Viti. Chapeau +3', Augment = 'Enfb.mag. skill +16' },
        Neck = { Name = 'Loricate Torque +1', Augment = '"Regen"+80' },
        Ear1 = { Name = 'Ouesk Pearl', Augment = '"Subtle Blow"+40' },
        Ear2 = { Name = 'Moonshade Earring', Augment = { [1] = '"Store TP"+5', [2] = '"Refresh"+10', [3] = '"Fast Cast"+5', [4] = '"Regen"+10' } },
        Body = { Name = 'Lethargy Sayon +1', Augment = 'Enfb.mag. skill +16' },
        Hands = 'Volte Gloves',
        Ring1 = { Name = 'Defending Ring', Augment = '"Regen"+80' },
        Ring2 = 'Patricius Ring',
        Back = { Name = 'Moonbeam Cape', Augment = '"Counter"+20' },
        Waist = { Name = 'Windbuffet Belt +1', Augment = '"Triple Atk."+8' },
        Legs = 'Crimson Cuisses',
        Feet = 'Iaso Boots',
    },
    ['TA_SPAM'] = {
        Main = { Name = 'Twashtar', Augment = 'DMG:+32' },
        Sub = { Name = 'Sandung', Augment = 'DMG:+32' },
        Range = 'Exalted C.bow',
        Head = 'Pill. Bonnet +3',
        Neck = { Name = 'Tlamiztli Collar', Augment = '"Triple Atk."+8' },
        Ear1 = { Name = 'Mache Earring +1', Augment = '"Triple Atk."+8' },
        Ear2 = { Name = 'Mache Earring +1', Augment = '"Triple Atk."+8' },
        Body = 'Plunderer\'s Vest +2',
        Hands = 'Pill. Armlets +3',
        Ring1 = { Name = 'Rajas Ring', Augment = '"Store TP"+20' },
        Ring2 = { Name = 'Epona\'s Ring', Augment = '"Triple Atk."+8' },
        Back = { Name = 'Canny Cape', Augment = '"Triple Atk."+8' },
        Waist = { Name = 'Windbuffet Belt +1', Augment = '"Triple Atk."+8' },
        Legs = 'Pill. Culottes +3',
        Feet = { Name = 'Plun. Poulaines +1', Augment = '"Triple Atk."+8' },
    },
    ['obi'] = {
        Main = 'Almace',
        Sub = 'Evalach +1',
        Ammo = { Name = 'Erlene\'s Notebook', Augment = { [1] = '"Mag.Atk.Bns."+32', [2] = 'Mag. Acc.+32' } },
        Head = { Name = 'Viti. Chapeau +3', Augment = 'Enfb.mag. skill +16' },
        Neck = { Name = 'Loricate Torque +1', Augment = '"Regen"+80' },
        Ear1 = { Name = 'Etiolation Earring', Augment = '"Mag.Def.Bns."+48' },
        Ear2 = { Name = 'Moonshade Earring', Augment = { [1] = '"Store TP"+5', [2] = '"Refresh"+10', [3] = '"Fast Cast"+5', [4] = '"Regen"+10' } },
        Body = { Name = 'Lethargy Sayon +1', Augment = 'Enfb.mag. skill +16' },
        Hands = { Name = 'Jhakri Cuffs +2', Augment = { [1] = '"Mag.Atk.Bns."+32', [2] = 'Mag. Acc.+32' } },
        Ring1 = { Name = 'Defending Ring', Augment = '"Regen"+80' },
        Ring2 = 'Patricius Ring',
        Back = 'Twilight Cape',
        Waist = { Name = 'Hachirin-no-Obi', Augment = { [1] = '"Mag.Atk.Bns."+32', [2] = 'Mag. Acc.+32' } },
        Legs = 'Crimson Cuisses',
        Feet = 'Iaso Boots',
    },
    ['rapidshot'] = {
        Ammo = 'Pebble',
        Head = { Name = 'Cache-nez', Augment = '"Rapid Shot"+24' },
        Body = { Name = 'Vgd. Tunica', Augment = '"Rapid Shot"+24' },
        Hands = { Name = 'Vgd. Gloves', Augment = '"Rapid Shot"+24' },
        Legs = { Name = 'Vagabond\'s Hose', Augment = '"Rapid Shot"+24' },
        Feet = { Name = 'Vagabond\'s Boots', Augment = '"Rapid Shot"+24' },
    },
    ['eremite'] = {
        Main = { Name = 'Chatoyant Staff', Augment = { [1] = '"Mag.Atk.Bns."+32', [2] = 'Mag. Acc.+32' } },
        Range = { Name = 'Animator', Augment = 'Magic Damage +40' },
        Head = { Name = 'Cache-nez', Augment = '"Rapid Shot"+24' },
        Neck = { Name = 'Silver Name Tag', Augment = '"Fast Cast"+32' },
        Ear1 = { Name = 'Cassie Earring', Augment = 'Magic Damage +40' },
        Ear2 = { Name = 'Shell Earring +1', Augment = 'Magic Damage +40' },
        Body = 'Kingdom Aketon',
        Hands = { Name = 'Vgd. Gloves', Augment = '"Rapid Shot"+24' },
        Ring1 = { Name = 'Ascetic\'s Ring', Augment = '"Regen"+80' },
        Ring2 = { Name = 'Eremite\'s Ring +1', Augment = { [1] = '"Mag.Atk.Bns."+32', [2] = 'Mag. Acc.+32' } },
        Back = { Name = 'Beater\'s Mantle', Augment = '"Store TP"+20' },
        Waist = { Name = 'Gold Mog. Belt', Augment = 'Magic Damage +40' },
        Legs = { Name = 'Vagabond\'s Hose', Augment = '"Rapid Shot"+24' },
        Feet = { Name = 'Vagabond\'s Boots', Augment = '"Rapid Shot"+24' },
    },
    ['enspells2'] = {
        Main = { Name = 'Lady Bell', Augment = 'Sword enhancement spell damage +40' },
        Sub = { Name = 'Warlock\'s Shield', Augment = 'Sword enhancement spell damage +40' },
        Head = { Name = 'Cache-nez', Augment = 'Sword enhancement spell damage +40' },
        Neck = { Name = 'Justice Badge', Augment = 'Sword enhancement spell damage +40' },
        Ear1 = { Name = 'Silver Earring', Augment = 'Sword enhancement spell damage +40' },
        Body = { Name = 'Vgd. Tunica', Augment = 'Sword enhancement spell damage +40' },
        Hands = { Name = 'Vgd. Gloves', Augment = 'Sword enhancement spell damage +40' },
        Ring1 = { Name = 'Copper Ring', Augment = 'Sword enhancement spell damage +40' },
        Ring2 = { Name = 'Copper Ring', Augment = 'Sword enhancement spell damage +40' },
        Back = { Name = 'Shaper\'s Shawl', Augment = 'Sword enhancement spell damage +40' },
        Waist = { Name = 'Friar\'s Rope', Augment = 'Sword enhancement spell damage +40' },
        Legs = { Name = 'Vagabond\'s Hose', Augment = 'Sword enhancement spell damage +40' },
        Feet = { Name = 'Vagabond\'s Boots', Augment = 'Sword enhancement spell damage +40' },
    },
    ['Draspir'] = {
        Main = 'Hoe',
        Ammo = { Name = 'Erlene\'s Notebook', Augment = { [1] = '"Mag.Atk.Bns."+32', [2] = 'Mag. Acc.+32' } },
        Head = { Name = 'Appetence Crown', Augment = '"Drain" and "Aspir" potency +40' },
        Neck = { Name = 'Loricate Torque +1', Augment = '"Regen"+80' },
        Ear1 = { Name = 'Etiolation Earring', Augment = '"Mag.Def.Bns."+48' },
        Ear2 = { Name = 'Moonshade Earring', Augment = { [1] = '"Store TP"+5', [2] = '"Refresh"+10', [3] = '"Fast Cast"+5', [4] = '"Regen"+10' } },
        Body = { Name = 'Lethargy Sayon +1', Augment = 'Enfb.mag. skill +16' },
        Hands = { Name = 'Jhakri Cuffs +2', Augment = { [1] = '"Mag.Atk.Bns."+32', [2] = 'Mag. Acc.+32' } },
        Ring1 = { Name = 'Defending Ring', Augment = '"Regen"+80' },
        Ring2 = 'Patricius Ring',
        Back = { Name = 'Moonbeam Cape', Augment = '"Counter"+20' },
        Waist = { Name = 'Yamabuki-no-Obi', Augment = { [1] = '"Mag.Atk.Bns."+32', [2] = 'Mag. Acc.+32' } },
        Legs = 'Crimson Cuisses',
        Feet = 'Iaso Boots',
    },
    ['hpmp'] = {
        Main = { Name = 'Sagasinger', Augment = { [1] = 'MP+128', [2] = 'HP+128' } },
        Sub = 'Evalach +1',
        Ammo = { Name = 'Staunch Tathlum', Augment = '"Counter"+20' },
        Head = 'Volte Cap',
        Neck = { Name = 'Loricate Torque +1', Augment = '"Regen"+80' },
        Ear1 = { Name = 'Telos Earring', Augment = '"Counter"+20' },
        Ear2 = { Name = 'Ouesk Pearl', Augment = '"Subtle Blow"+40' },
        Body = 'Volte Jupon',
        Hands = 'Volte Bracers',
        Ring1 = { Name = 'Defending Ring', Augment = '"Regen"+80' },
        Ring2 = 'Patricius Ring',
        Back = { Name = 'Moonbeam Cape', Augment = '"Counter"+20' },
        Legs = 'Volte Hose',
        Feet = 'Volte Boots',
    },
    ['mdmg'] = {
        Main = { Name = 'Nihility', Augment = { [1] = 'Magic Damage +48', [2] = 'Mag. Acc+48' } },
        Sub = 'Evalach +1',
        Ammo = { Name = 'Staunch Tathlum', Augment = '"Counter"+20' },
        Head = 'Volte Cap',
        Neck = { Name = 'Loricate Torque +1', Augment = '"Regen"+80' },
        Ear1 = { Name = 'Telos Earring', Augment = '"Counter"+20' },
        Ear2 = { Name = 'Ouesk Pearl', Augment = '"Subtle Blow"+40' },
        Body = 'Volte Jupon',
        Hands = 'Volte Bracers',
        Ring1 = { Name = 'Defending Ring', Augment = '"Regen"+80' },
        Ring2 = 'Patricius Ring',
        Back = { Name = 'Moonbeam Cape', Augment = '"Counter"+20' },
        Waist = { Name = 'Fucho-no-Obi', Augment = '"Drain" and "Aspir" potency +40' },
        Legs = 'Volte Hose',
        Feet = 'Volte Boots',
    },
    ['hermitfastcast'] = {
        Main = 'Almace',
        Sub = 'Evalach +1',
        Ammo = { Name = 'Staunch Tathlum', Augment = '"Counter"+20' },
        Head = 'Volte Cap',
        Neck = { Name = 'Loricate Torque +1', Augment = '"Regen"+80' },
        Ear1 = { Name = 'Telos Earring', Augment = '"Counter"+20' },
        Ear2 = { Name = 'Ouesk Pearl', Augment = '"Subtle Blow"+40' },
        Body = 'Volte Jupon',
        Hands = 'Volte Bracers',
        Ring1 = { Name = 'Defending Ring', Augment = '"Regen"+80' },
        Ring2 = { Name = 'Hermit\'s Ring', Augment = { [1] = '"Fast Cast"+16', [2] = 'Spell interruption rate down -20%' } },
        Back = { Name = 'Moonbeam Cape', Augment = '"Counter"+20' },
        Waist = { Name = 'Hachirin-no-Obi', Augment = { [1] = '"Mag.Atk.Bns."+32', [2] = 'Mag. Acc.+32' } },
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