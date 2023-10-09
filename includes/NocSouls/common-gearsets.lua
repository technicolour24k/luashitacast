gFunc.LoadFile('../includes/'..config.server..'/common-augments') --Load common gearsets for the Server specified in includes/config.lua


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
    Neck = { Name = 'Fotia Gorget', Augment = TA8 },
    Waist = { Name = "Fotia Belt" }
})

sets.AllJobs['MAB'] = {
    Ammo = {Name='Erlene\'s Notebook', Augment=MAB32},
    Neck = {Name='Stoicheion Medal',Augment=MAB32},
    Ear1 = {Name='Hecate\'s Earring',Augment=MAB32},
    Ear2 = {Name='Novio Earring',Augment=MAB32},
    Ring1 = {Name="Shiva Ring +1", Augment=MAB32},
    Ring2 = {Name='Acumen Ring', Augment=MAB32},
    Back = {Name='Izdubar Mantle', Augment=MAB32},
}

sets.AllJobs['TP'] = {
    Ammo = { Name = 'Staunch Tathlum', Augment = '"Counter"+20' },
    Head = "Volte Cap",
    Neck = { Name = 'Loricate Torque +1', Augment = '"Regen"+80' },
    Ear1 = { Name = 'Telos Earring', Augment = '"Counter"+20' },
    Ear2 = { Name = 'Ouesk Pearl', Augment = '"Subtle Blow"+40' }, --Caps Subtle Blow in a single slot. Not that many good secondary options tbh either.
    Body="Volte Jupon",
    Hands="Volte Bracers",
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
    Hands = { Name = 'Vgd. Gloves', Augment = SIR40 },
    Legs = { Name = 'Vagabond\'s Hose', Augment = SIR40 },
    Feet = { Name = 'Vagabond\'s Boots', Augment = SIR40 },
}

-- Magic Fast Cast sets
sets.AllJobs['FastCast'] = {
    Ring1 = { Name="Hermit's Ring", },
    Ring2 = { Name="Hermit's Ring", },
    Neck = {Name = "Silver Name Tag", },
    Head = {Name = "Cache-Nez", },
}

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
    Ring1 = { Name = 'Scintillant Ring', Augment = { [1] = '"Drain" and "Aspir" potency +2', [2] = 'Enf. Mag. eff. dur. +9', [3] = 'Mag. Acc+2', [4] = 'Enfb.mag. skill +7', [5] = 'Magic Damage +2' } },
    Ring2 = { Name = 'Scintillant Ring', Augment = { [1] = '"Drain" and "Aspir" potency +3', [2] = 'Enf. Mag. eff. dur. +10', [3] = 'Mag. Acc+7', [4] = 'Enfb.mag. skill +3', [5] = 'Magic Damage +7' } },
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
    Ring1 = "Stikini Ring +1",
    Ring2 = "Stikini Ring +1",
}
sets.AllJobs['Midcast']['Geomancy'] = {}
sets.AllJobs['Midcast']['Handbell'] = {}   
sets.AllJobs['Midcast']['Stoneskin'] = gFunc.Combine(sets.AllJobs['SpellInterruption'],{
    Neck="Stone Gorget"
})
sets.AllJobs['Midcast']['Aquaveil'] = gFunc.Combine(sets.AllJobs['Midcast']['EnhancingDuration'],{})
sets.AllJobs['Midcast']['Refresh'] = gFunc.Combine(sets.AllJobs['Midcast']['EnhancingDuration'],{})
sets.AllJobs['Midcast']['Phalanx'] = gFunc.Combine(sets.AllJobs['Midcast']['EnhancingDuration'],{})
sets.AllJobs['Midcast']['Enspell'] = gFunc.Combine(sets.AllJobs['Midcast']['EnhancingDuration'],{
    Sub={ Name="Warlock's Shield", Augment = ENSPELL40 },
    -- Ammo = {}
    Head={ Name="Copper Hairpin", Augment = ENSPELL40 },
    Neck={ Name="Justice Badge", Augment = ENSPELL40 },
    Ear1={ Name="Silver Earring", Augment = ENSPELL40 },
    Ear2={ Name="Silver Earring", Augment = ENSPELL40 },
    Ring1={ Name="Copper Ring", Augment = ENSPELL40 },
    Ring2={ Name="Copper Ring", Augment = ENSPELL40 },
    Back={ Name="Shaper's Shawl", Augment = ENSPELL40 },		
    Waist={ Name="Friar's Rope", Augment = ENSPELL40 },		
    Main = { Name = 'Lady Bell', Augment = ENSPELL40},
    Body = { Name = 'Vgd. Tunica', Augment = ENSPELL40},
    Hands = { Name = 'Vgd. Gloves', Augment = ENSPELL40},
    Legs = { Name = 'Vagabond\'s Hose', Augment = ENSPELL40},
    Feet = { Name = 'Vagabond\'s Boots', Augment = ENSPELL40},

})
sets.AllJobs['Midcast']['ConserveMP'] = gFunc.Combine(sets.AllJobs['FastCast'], {

})
sets.AllJobs['Midcast']['DrainAspir'] = {
    Ring1 = { Name = 'Scintillant Ring', Augment = { [1] = '"Drain" and "Aspir" potency +5', [2] = 'Enf. Mag. eff. dur. +8', [3] = 'Mag. Acc+5', [4] = 'Enfb.mag. skill +5', [5] = 'Magic Damage +5' } },
    Ring2 = { Name = 'Scintillant Ring', Augment = { [1] = '"Drain" and "Aspir" potency +3', [2] = 'Enf. Mag. eff. dur. +10', [3] = 'Mag. Acc+7', [4] = 'Enfb.mag. skill +3', [5] = 'Magic Damage +7' } },
}
sets.AllJobs['Midcast']['Helixes'] = gFunc.Combine(sets.AllJobs['MAB'],{
    Main={Name="Chatoyant Staff", Augment=MAB32 },
    Ranged="Animator",
    Head="Straw Hat",
    Neck="Silver Name Tag",
    Ear2="Cassie Earring",
    Ear1="Shell Earring +1",
    Body="Chocobo Shirt",
    Hands={Name="Vagabond\'s Gloves", Augment=SIR40},
    Ring1={Name="Eremite\'s Ring +1", Augment=MAB32},
    Ring2={Name='Eremite\'s Ring +1', Augment=MAB32 },
    Back="Nexus Cape",
    Waist="Gold Moogle Belt",
    Legs={Name="Vagabond\'s Hose", Augment=SIR40},
    Feet={Name="Vagabond\'s Boots", Augment=SIR40}
})

sets.AllJobs['Midcast']['BLU_Physical'] = gFunc.Combine(sets.AllJobs['Midcast']['Blue Magic'],{})
sets.AllJobs['Midcast']['BLU_Buffs'] = gFunc.Combine(sets.AllJobs['Midcast']['Blue Magic'],{})
sets.AllJobs['Midcast']['BLU_Nukes'] = gFunc.Combine(sets.AllJobs['Midcast']['Blue Magic'],{})

sets.AllJobs['Midcast']['Cure'] = {
    Neck = "Phalaina Locket",
    Ear1 = "Mendi. Earring",
    Ring1 = "Lebeche Ring",
}
sets.AllJobs['HolyWater'] = {
    Ring1="Blenmot's Ring +1",
    Ring2="Blenmot's Ring +1"
}

sets.AllJobs['TH'] = {
    Head = "Volte Cap",
    Body="Volte Jupon",
    Hands="Volte Bracers",
    Legs="Volte Hose",
    Feet="Volte Boots",
    Waist = "Chaac Belt"
}

sets.AllJobs['Nexus'] = {
    Back="Nexus Cape"
}

sets.AllJobs['Regen'] = {
    Ring1 = {Name="Ascetic\'s Ring", Augment=REGEN80}
}

sets.Obis = {}
sets.Obis['AIO'] = { Waist={ Name = 'Hachirin-no-Obi', Augment = { [1] = '"Mag.Atk.Bns."+32', [2] = 'Mag. Acc.+32' } },}
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
    Body="Overalls",
    Legs=""
}

sets.Zones['Sandy'] = {
    Body = "Kingdom Aketon"
}
sets.Zones['Basty'] = {
    Body = "Republic Aketon"
}
sets.Zones['Windy'] = {
    Body = "Federation Aketon"
}

sets.Zones["Southern San d'Oria"] = gFunc.Combine(sets.Zones['Sandy'], {})
sets.Zones["Northern San d'Oria"] = gFunc.Combine(sets.Zones['Sandy'], {})
sets.Zones["Port San d'Oria"] = gFunc.Combine(sets.Zones['Sandy'], {})
sets.Zones["Chateau d'Oraguille"] = gFunc.Combine(sets.Zones['Sandy'], {})

sets.Zones['Bastok Markets'] = gFunc.Combine(sets.Zones['Basty'], {})
sets.Zones['Bastok Mines'] = gFunc.Combine(sets.Zones['Basty'], {})
sets.Zones['Port Bastok'] = gFunc.Combine(sets.Zones['Basty'], {})
sets.Zones['Metalworks'] = gFunc.Combine(sets.Zones['Basty'], {})

sets.Zones['Port Windurst'] = gFunc.Combine(sets.Zones['Windy'], {})
sets.Zones['Windurst Waters'] = gFunc.Combine(sets.Zones['Windy'], {})
sets.Zones['Windurst Walls'] = gFunc.Combine(sets.Zones['Windy'], {})
sets.Zones['Windurst Woods'] = gFunc.Combine(sets.Zones['Windy'], {})
sets.Zones['Heavens Tower'] = gFunc.Combine(sets.Zones['Windy'], {})

sets.Meme = {
    Main = "",
    Sub="",
    Range="",
    Ammo = 'Pebble',
    Head = { Name = 'Cache-nez', Augment = '"Rapid Shot"+24' },
    Neck="",
    Ear1="",
    Ear2="",
    Body = { Name = 'Vgd. Tunica', Augment = '"Rapid Shot"+24' },
    Hands = { Name = 'Vgd. Gloves', Augment = '"Rapid Shot"+24' },
    Ring1="",
    Ring2="",
    Back="",
    Waist="",
    Legs = { Name = 'Vagabond\'s Hose', Augment = '"Rapid Shot"+24' },
    Feet = { Name = 'Vagabond\'s Boots', Augment = '"Rapid Shot"+24' },
}

infoLog("Loaded common gearsets")