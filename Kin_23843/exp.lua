local profile = {};
local sets = {
    ['nuke_lowmp'] = {
        Main = { Name = 'Nihility', Augment = { [1] = 'Magic Damage +48', [2] = 'Mag. Acc+48' } },
        Sub = { Name = 'Morbol Shield', Augment = { [1] = 'Magic Damage +48', [2] = 'Mag. Acc+48' } },
        Range = { Name = 'Animator', Augment = { [1] = 'Magic Damage +48', [2] = 'Mag. Acc+48' } },
        Head = { Name = 'Straw Hat', Augment = 'Magic Damage +40' },
        Neck = { Name = 'Miner\'s Pendant', Augment = { [1] = 'Magic Damage +48', [2] = 'Mag. Acc+48' } },
        Body = 'Chocobo Shirt',
        Hands = { Name = 'Vgd. Gloves', Augment = 'Spell interruption rate down -40%' },
        Ring1 = { Name = 'Hermit\'s Ring', Augment = { [1] = 'INT+12', [2] = '"Refresh"+20' } },
        Ring2 = { Name = 'Hermit\'s Ring', Augment = { [1] = '"Refresh"+20', [2] = 'Pet: "Regen"+50', [3] = '"Regen"+20' } },
        Waist = { Name = 'Silver Mog. Belt', Augment = { [1] = 'Magic Damage +48', [2] = 'Mag. Acc+48' } },
        Legs = { Name = 'Vagabond\'s Hose', Augment = 'Spell interruption rate down -40%' },
        Feet = { Name = 'Vagabond\'s Boots', Augment = 'Spell interruption rate down -40%' },
    },
    ['nuke'] = {
        Ear1 = { Name = 'Cassie Earring', Augment = { [1] = 'Magic Damage +48', [2] = 'Mag. Acc+48' } },
        Ear2 = { Name = 'Shell Earring +1', Augment = { [1] = 'Magic Damage +40' } },

        Main = { Name = 'Nihility', Augment = { [1] = 'Magic Damage +48', [2] = 'Mag. Acc+48' } },
        Sub = { Name = 'Morbol Shield', Augment = { [1] = 'Magic Damage +48', [2] = 'Mag. Acc+48' } },
        Range = { Name = 'Animator', Augment = { [1] = 'Magic Damage +48', [2] = 'Mag. Acc+48' } },
        Head = { Name = 'Straw Hat', Augment = 'Magic Damage +40' },
        Neck = { Name = 'Miner\'s Pendant', Augment = { [1] = 'Magic Damage +48', [2] = 'Mag. Acc+48' } },
        Body = 'Chocobo Shirt',
        Hands = { Name = 'Vgd. Gloves', Augment = 'Spell interruption rate down -40%' },
        Ring1 = { Name = 'Hermit\'s Ring', Augment = { [1] = 'INT+12', [2] = '"Refresh"+20' } },
        Ring2 = { Name = 'Eremite\'s Ring +1', Augment = { [1] = '"Mag.Atk.Bns."+32', [2] = 'Mag. Acc.+32' } },
        Waist = { Name = 'Silver Mog. Belt', Augment = { [1] = 'Magic Damage +48', [2] = 'Mag. Acc+48' } },
        Legs = { Name = 'Vagabond\'s Hose', Augment = 'Spell interruption rate down -40%' },
        Feet = { Name = 'Vagabond\'s Boots', Augment = 'Spell interruption rate down -40%' },
    },

    ['fc'] = {
        Head = { Name = 'Cache-nez', Augment = '"Fast Cast"+32' },
        Neck = { Name = 'Silver Name Tag', Augment = '"Fast Cast"+32' },
        Ring2 = { Name = 'Hermit\'s Ring', Augment = '"Fast Cast"+32' },
    },
    ['regen'] = {
        Ear1={Name="Opal Earring",Augment='"Regen"+80'},
        Ear2={Name="Opal Earring",Augment='"Refresh"+80'},
        Ring1={Name="Ascetic\'s Ring", Augment='"Regen"+80'},
        Neck={Name="Justice Badge", Augment='"Regen"+80'},
        Body={Name="Vgd. Tunica", Augment='"Regen"+80'},
        Hands={Name="Vgd. Gloves",Augment='"Regen"+80'}
    },

    ['chat'] = {
        Main= {Name="Chatoyant Staff"},
        Sub= { Name="Bugard Strap +1"}
    },

    ['oclub'] = {
        Main="Octave Club"
    },

    ['taweapon'] = {
        Main="Blizzard Brand"
    },

    ['Enspell'] = {
        Main = { Name = 'Lady Bell', Augment = "Sword enhancement spell damage +40"},
        Sub={ Name="Warlock's Shield", Augment = "Sword enhancement spell damage +40" },
        Ammo = { Name="Optical Needle", Augment = "Sword enhancement spell damage +40"},
        Head={ Name="Copper Hairpin", Augment = "Sword enhancement spell damage +40" },
        Neck={ Name="Justice Badge", Augment = "Sword enhancement spell damage +40" },
        Ear1={ Name="Silver Earring", Augment = "Sword enhancement spell damage +40" },
        Ear2={ Name="Silver Earring", Augment = "Sword enhancement spell damage +40" },
        Body = { Name = 'Vgd. Tunica', Augment = "Sword enhancement spell damage +40"},
        Hands = { Name = 'Vgd. Gloves', Augment = "Sword enhancement spell damage +40"},
        Ring1={ Name="Copper Ring", Augment = "Sword enhancement spell damage +40" },
        Ring2={ Name="Copper Ring", Augment = "Sword enhancement spell damage +40" },
        Back={ Name="Shaper's Shawl", Augment = "Sword enhancement spell damage +40" },		
        Waist={ Name="Friar's Rope", Augment = "Sword enhancement spell damage +40" },		
        Legs = { Name = 'Vagabond\'s Hose', Augment = "Sword enhancement spell damage +40"},
        Feet = { Name = 'Vagabond\'s Boots', Augment = "Sword enhancement spell damage +40"},
    }

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
    local player = gData.GetPlayer();

	local OClubJobs = T{"WAR","MNK","WHM","BLM","RDM","THF","PLD","DRK","BST","BRD","RNG","SAM","NIN","DRG","SMN"}
    gFunc.EquipSet("regen")
    if (player.Status == "Engaged") then
        if (OClubJobs:contains(player.MainJob)) then
            if (player.MainJobSync>62) then
                gFunc.EquipSet("oclub")
            end
        else
            gFunc.EquipSet("taweapon")
        end
    end
end

profile.HandleAbility = function()
end

profile.HandleItem = function()
end

profile.HandlePrecast = function()
    gFunc.EquipSet("fc")
end

profile.HandleMidcast = function()
    local action = gData.GetAction();
    local player = gData.GetPlayer();
    local enspells = T{"Enfire","Enwater","Enaero","Enfire","Enblizzard","Enthunder"}


    if(action.Skill=="Elemental Magic") then
        if ((player.MP-50) < action.MpCost) then
            gFunc.EquipSet("nuke_lowmp")
        else
            gFunc.EquipSet("nuke")
            if (player.MainJobSync>50) then
                gFunc.EquipSet("chat")
            end
        end
    end

    if (enspells:contains(action.Name)) then
        gFunc.EquipSet("Enspell")
	end
end

profile.HandlePreshot = function()
end

profile.HandleMidshot = function()
end

profile.HandleWeaponskill = function()
end

return profile;