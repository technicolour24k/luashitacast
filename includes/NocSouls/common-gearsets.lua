sets ={}
sets.JobAbility={}
sets.WeaponSkills={}

sets.AllJobs={}
sets.AllJobs['JobAbility'] = {}
sets.AllJobs['WeaponSkills'] = {}
sets.AllJobs['WeaponSkills']['WSD'] = {
    Ring1 = { Name = 'Dark Ring', Augment = { [1] = 'Weapon skill damage +10%', [2] = 'Accuracy+7', [3] = 'Eva.+5', [4] = 'Attack+7', [5] = 'Mag. Eva.+5' } },
    Ring2 = { Name = 'Dark Ring', Augment = { [1] = 'Weapon skill damage +8%', [2] = 'Accuracy+5', [3] = 'Eva.+5', [4] = 'Attack+5', [5] = 'Mag. Eva.+5' } },
    Waist = { Name = 'Moblin Cest', Augment = { [1] = '"Dbl.Atk."+7', [2] = 'Weapon skill damage +4%', [3] = '"Triple Atk."+4', [4] = 'Attack+7', [5] = 'Accuracy+7' } },
}
sets.AllJobs['WeaponSkills']['Fotia'] = gFunc.Combine(sets.AllJobs['WeaponSkills']['WSD'], {
    Neck = { Name = 'Fotia Gorget', Augment = '"Triple Atk."+8' },
    Waist = { Name = "Fotia Belt" }
})

sets.AllJobs['MAB'] = {
    Ammo = 'Erlene\'s Notebook',
    Neck = 'Stoicheion Medal',
    Ear1 = 'Hecate\'s Earring',
    Ear2 = 'Novio Earring',
    Ring1 = "Shiva's Ring +1",
    Ring2 = 'Acumen Ring',
    Back ='Izdubar Mantle',
}

sets.AllJobs['TP'] = {
    Ammo = { Name = 'Staunch Tathlum', Augment = '"Counter"+20' },
    Head = "Volte Cap",
    Neck = { Name = 'Loricate Torque +1', Augment = '"Regen"+80' },
    Ear1 = { Name = 'Telos Earring', Augment = '"Counter"+20' },
    Ear2 = { Name = 'Tati Earring', Augment = '"Counter"+20' },
    Body="Volte Jupon",
    Legs="Volte Hose",
    Feet="Volte Boots",
    Back = { Name = 'Moonbeam Cape', Augment = '"Counter"+20' },
    Ring1 = { Name = 'Defending Ring', Augment = '"Regen"+80' },
    Ring2 = 'Patricius Ring',
}

-- 21% DT-, adding Shell5 means capped (50%) MDT. Patricius Ring is 5% PDT
sets.AllJobs['DT'] = {
    Neck = { Name = 'Loricate Torque +1', Augment = '"Regen"+80' },
    Back = { Name = 'Moonbeam Cape', Augment = '"Counter"+20' },
    Ring1 = { Name = 'Defending Ring', Augment = '"Regen"+80' },
    Ring2 = { Name = 'Patricius Ring', },
    Ear1 = { Name = 'Etiolation Earring', },
}

sets.AllJobs['SpellInterruption'] = {
    Hands = { Name = 'Vgd. Gloves', Augment = 'Spell interruption rate down -40%' },
    Legs = { Name = 'Vagabond\'s Hose', Augment = 'Spell interruption rate down -40%' },
    Feet = { Name = 'Vagabond\'s Boots', Augment = 'Spell interruption rate down -40%' },

}

-- Magic Fast Cast sets
sets.AllJobs['FastCast'] = {
    Ring1 = { Name="Hermit's Ring", },
    Ring2 = { Name="Hermit's Ring", },
    Neck = {Name = "Silver Name Tag", },
    Head = {Name = "Cache-Nez", },
}

sets.AllJobs['SpellInterruption'] = gFunc.Combine(sets.AllJobs['FastCast'], {
    Hands= {Name="Vagabond's Gloves"}
})

sets.AllJobs['Quick Draw'] = {
    Ear1 = { Name = 'Amber Earring', Augment = '"Quick Draw" ability delay -8' },
    Ear2 = { Name = 'Amber Earring', Augment = '"Quick Draw" ability delay -8' },
    Ring1 = { Name = 'Copper Ring', Augment = '"Quick Draw" ability delay -8' },
    Ring2 = { Name = 'Copper Ring', Augment = '"Quick Draw" ability delay -8' },
}
-- Magic type specific Fast Cast
sets.AllJobs['FastCast']['Divine Magic'] = gFunc.Combine(sets.AllJobs['FastCast'],{})
sets.AllJobs['FastCast']['Healing Magic'] = gFunc.Combine(sets.AllJobs['FastCast'],{})
sets.AllJobs['FastCast']['Enhancing Magic'] = gFunc.Combine(sets.AllJobs['FastCast'],{})
sets.AllJobs['FastCast']['Enfeebling Magic'] = gFunc.Combine(sets.AllJobs['FastCast'],{})
sets.AllJobs['FastCast']['Elemental Magic'] = gFunc.Combine(sets.AllJobs['FastCast'],{})
sets.AllJobs['FastCast']['Dark Magic'] = gFunc.Combine(sets.AllJobs['FastCast'],{})
sets.AllJobs['FastCast']['Summoning Magic'] = gFunc.Combine(sets.AllJobs['FastCast'],{})
sets.AllJobs['FastCast']['Ninjutsu'] = gFunc.Combine(sets.AllJobs['FastCast'],{})
sets.AllJobs['FastCast']['Singing'] = gFunc.Combine(sets.AllJobs['FastCast'],{})
sets.AllJobs['FastCast']['String'] = gFunc.Combine(sets.AllJobs['FastCast'],{})
sets.AllJobs['FastCast']['Wind'] = gFunc.Combine(sets.AllJobs['FastCast'],{})
sets.AllJobs['FastCast']['Blue Magic'] = gFunc.Combine(sets.AllJobs['FastCast'],{})
sets.AllJobs['FastCast']['Geomancy'] = gFunc.Combine(sets.AllJobs['FastCast'],{})
sets.AllJobs['FastCast']['Handbell'] = gFunc.Combine(sets.AllJobs['FastCast'],{})

-- Magic specific Midcasts
sets.AllJobs['Midcast'] = {}
sets.AllJobs['Midcast']['EnhancingDuration'] = {}
sets.AllJobs['Midcast']['EnfeeblingDuration'] = {
    Ring1 = { Name = 'Scintillant Ring', Augment = { [1] = 'Magic Damage +2', [2] = 'Mag. Acc+2', [3] = '"Drain" and "Aspir" potency +2', [4] = 'Enfb.mag. skill +7' } },
    Ring2 = { Name = 'Scintillant Ring', Augment = { [1] = 'Magic Damage +7', [2] = 'Mag. Acc+7', [3] = '"Drain" and "Aspir" potency +3', [4] = 'Enfb.mag. skill +3' } },
}

sets.AllJobs['Midcast']['Divine Magic'] = {}
sets.AllJobs['Midcast']['Healing Magic'] = {}
sets.AllJobs['Midcast']['Enhancing Magic'] = gFunc.Combine(sets.AllJobs['Midcast']['EnhancingDuration'],{})
sets.AllJobs['Midcast']['Enfeebling Magic'] = gFunc.Combine(sets.AllJobs['Midcast']['EnfeeblingDuration'],{})
sets.AllJobs['Midcast']['Elemental Magic'] = gFunc.Combine(sets.AllJobs['MAB'], {})
sets.AllJobs['Midcast']['Dark Magic'] = {}
sets.AllJobs['Midcast']['Summoning Magic'] = {}
sets.AllJobs['Midcast']['Ninjutsu'] = {}
sets.AllJobs['Midcast']['Singing'] = {}
sets.AllJobs['Midcast']['String'] = {}
sets.AllJobs['Midcast']['Wind'] = {}
sets.AllJobs['Midcast']['Blue Magic'] = {
    Ring2 = "Stikini Ring +1",
}
sets.AllJobs['Midcast']['Geomancy'] = {}
sets.AllJobs['Midcast']['Handbell'] = {}   
sets.AllJobs['Midcast']['Stoneskin'] = gFunc.Combine(sets.AllJobs['SpellInterruption'],{
    Neck=""
})
sets.AllJobs['Midcast']['Aquaveil'] = gFunc.Combine(sets.AllJobs['Midcast']['EnhancingDuration'],{})
sets.AllJobs['Midcast']['Refresh'] = gFunc.Combine(sets.AllJobs['Midcast']['EnhancingDuration'],{})
sets.AllJobs['Midcast']['Phalanx'] = gFunc.Combine(sets.AllJobs['Midcast']['EnhancingDuration'],{})
sets.AllJobs['Midcast']['Enspell'] = gFunc.Combine(sets.AllJobs['Midcast']['EnhancingDuration'],{
    Sub={ Name="Warlock's Shield", Augment = 'Sword enhancement spell damage +40'},
    Head={ Name="Copper Hairpin", Augment = 'Sword enhancement spell damage +40'},
    Neck={ Name="Justice Badge", Augment = 'Sword enhancement spell damage +40'},
    Ear1={ Name="Silver Earring", Augment = 'Sword enhancement spell damage +40'},
    Ear2={ Name="Silver Earring", Augment = 'Sword enhancement spell damage +40'},
    Ring1={ Name="Copper Ring", Augment = 'Sword enhancement spell damage +40'},
    Ring2={ Name="Copper Ring", Augment = 'Sword enhancement spell damage +40'},
    Back={ Name="Shaper's Shawl", Augment = 'Sword enhancement spell damage +40'},		
    Waist={ Name="Friar's Rope", Augment = 'Sword enhancement spell damage +40'},		
})
sets.AllJobs['Midcast']['ConserveMP'] = gFunc.Combine(sets.AllJobs['FastCast'], {
    Hands = "Vagabond's Gloves",
    Legs = "Vagabond's Hose",
    Feet = "Vagabond's Boots"
})
sets.AllJobs['Midcast']['DrainAspir'] = {
		Ring1={Name="Scintillant Ring", augments={'"Drain" and "Aspir" potency +3','Enfb.mag. skill +3','Mag. Acc+7 /Mag. Dmg.+7','System: 1 ID: 1251 Val: 9',}},
		Ring2={Name="Scintillant Ring", augments={'"Drain" and "Aspir" potency +2','Enfb.mag. skill +7','Mag. Acc+2 /Mag. Dmg.+2','System: 1 ID: 1251 Val: 8',}}
	}
sets.AllJobs['Midcast']['Helixes'] = gFunc.Combine(sets.AllJobs['MAB'],{
    Ranged="Animator",
    Head="Straw Hat",
    Neck="Miner's Pendant",
    Ear2="Cassie Earring",
    Ear1="Shell Earring +1",
    Waist="Gold Moogle Belt"
})

sets.AllJobs['Midcast']['BLU_Physical'] = gFunc.Combine(sets.AllJobs['Midcast']['Blue Magic'],{})
sets.AllJobs['Midcast']['BLU_Buffs'] = gFunc.Combine(sets.AllJobs['Midcast']['Blue Magic'],{})
sets.AllJobs['Midcast']['BLU_Nukes'] = gFunc.Combine(sets.AllJobs['Midcast']['Blue Magic'],{})

sets.AllJobs['Midcast']['Cure'] = {
    Neck = "Phalaina Locket",
    Ring1 = "Lebeche Ring",
}
sets.AllJobs['HolyWater'] = {}

sets.AllJobs['TH'] = {
    Head = "Volte Cap",
    Body="Volte Jupon",
    Legs="Volte Hose",
    Feet="Volte Boots",
    Waist = "Chaac Belt"
}

sets.AllJobs['Nexus'] = {
    Back="Nexus Cape"
}

sets.Obis = {}
sets.Obis['AIO'] = {Waist = "Hachirin-no-Obi"}
sets.Obis['Fire'] = gFunc.Combine(sets.Obis['AIO'], {Waist="Karin Obi"})
sets.Obis['Earth'] = gFunc.Combine(sets.Obis['AIO'], {Waist = "Dorin Obi"})
sets.Obis['Water'] = gFunc.Combine(sets.Obis['AIO'], {Waist="Suirin Obi"})
sets.Obis['Wind'] = gFunc.Combine(sets.Obis['AIO'], {Waist="Furin Obi"})
sets.Obis['Ice'] = gFunc.Combine(sets.Obis['AIO'], {Waist="Hyorin Obi"})
sets.Obis['Lightning'] = gFunc.Combine(sets.Obis['AIO'], {Waist="Rairin Obi"})
sets.Obis['Light'] = gFunc.Combine(sets.Obis['AIO'], {Waist="Korin Obi"})
sets.Obis['Dark'] = gFunc.Combine(sets.Obis['AIO'], {Waist="Anrin Obi"})

sets.Zones ={}
sets.Zones['Mog Garden'] = {
    Main="Hoe",
    Head="Straw Hat",
    Body="Overalls"
}

infoLog("Loaded common gearsets")