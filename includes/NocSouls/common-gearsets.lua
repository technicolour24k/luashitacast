gFunc.LoadFile('../includes/'..config.server..'/common-augments') --Load common gearsets for the Server specified in includes/config.lua


sets.JobAbility={}
sets.WeaponSkills={}

sets.AllJobs={}
sets.AllJobs['JobAbility'] = {}
sets.AllJobs['WeaponSkills'] = {}
sets.AllJobs['WeaponSkills']['WSD'] = {
    Ammo= { Name="Floestone", Augment=TPBONUS200},
    Ear1 = {Name="Telos Earring", Augment=TPBONUS200},
    Ear2 = {Name="Tati Earring", Augment=TPBONUS200},
    Ring1 = { Name = 'Dark Ring', Augment = { [1] = 'Weapon skill damage +10%', [2] = 'Accuracy+7', [3] = 'Eva.+5', [4] = 'Attack+7', [5] = 'Mag. Eva.+5' } },
    Ring2 = { Name = 'Dark Ring', Augment = { [1] = 'Weapon skill damage +8%', [2] = 'Accuracy+5', [3] = 'Eva.+5', [4] = 'Attack+5', [5] = 'Mag. Eva.+5' } },
    Waist = { Name = 'Moblin Cest', Augment = { [1] = '"Dbl.Atk."+7', [2] = 'Weapon skill damage +4%', [3] = '"Triple Atk."+4', [4] = 'Attack+7', [5] = 'Accuracy+7' } },
}
sets.AllJobs['WeaponSkills']['Fotia'] = gFunc.Combine(sets.AllJobs['WeaponSkills']['WSD'], {
    Neck = { Name = 'Fotia Gorget' },
    Waist = { Name = "Fotia Belt" }
})

sets.AllJobs['MAB'] = {
    Ammo = {Name='Erlene\'s Notebook', Augment=MAB32},
    -- Neck = {Name='Deviant Necklace',Augment=MAB40},
    Neck = {Name='Nefarious Collar', Augment=MCRITDMG16},
    -- Ear1 = {Name='Novio Earring',Augment=MAB32},
    Ear1 = {Name='Choleric Earring',Augment=MCRITDMG16},
    Ear2 = {Name='Friomisi Earring',Augment=MCRITDMG16},
    Ring1 = {Name='Resonance Ring', Augment=MCRIT40},
    Ring2 = {Name='Locus Ring', Augment=MCRIT40},
    Back = {Name='Toro Cape', Augment=MAB40},
    Waist={Name='Eschan Stone',Augment=MAB40},
}

sets.AllJobs['TP'] = {
    Ammo = { Name = 'Staunch Tathlum', Augment = '"Counter"+20' },
    Head = {Name="Volte Cap",Augment=MEVA48},
    Neck = { Name = 'Loricate Torque +1', Augment = STP60 }, -- Subtle Blow capped (60/50)
    Ear1 = { Name = 'Telos Earring', Augment = '"Counter"+20' },
    Ear2 = { Name = 'Hearty Earring', },
    Body={Name="Volte Jupon",Augment=MEVA48},
    Hands={Name="Volte Bracers",Augment=MEVA48},
    Legs={Name="Volte Hose", Augment=MEVA48},
    Feet="Volte Boots",
    Back = { Name = 'Moonbeam Cape', Augment = STP40 },
    Ring1 = { Name = 'Defending Ring', Augment = COUNTER40 },
    Ring2 = { Name = 'Patricius Ring', Augment = COUNTER40 },
}

sets.AllJobs['RegenPot'] = {}

-- 21% DT-, adding Shell5 means capped (50%) MDT. Patricius Ring is 5% PDT
sets.AllJobs['DT'] = {
    Neck = { Name = 'Loricate Torque +1', Augment = STP60 },
    Back = { Name = 'Moonbeam Cape', Augment = STP40 },
    Ring1 = { Name = 'Defending Ring', Augment = COUNTER40 },
    Ring2 = { Name = 'Patricius Ring', Augment = COUNTER40},
    Ear1 = { Name = 'Etiolation Earring', },
}

sets.AllJobs['SpellInterruption'] = {
    Hands = { Name = 'Vgd. Gloves', Augment = SIR40 },
    Legs = { Name = 'Vagabond\'s Hose', Augment = SIR40 },
    Feet = { Name = 'Vagabond\'s Boots', Augment = SIR40 },
}

-- Magic Fast Cast sets
sets.AllJobs['FastCast'] = {
    Ring2 = { Name="Hermit's Ring", Augment=FASTCAST32},
    Neck = {Name = "Silver Name Tag", Augment=FASTCAST32},
    Head = {Name = "Cache-Nez", Augment=FASTCAST32},
}

sets.AllJobs['Quick Draw'] = {
    Ear1 = { Name = 'Amber Earring', Augment = '"Quick Draw" ability delay -8' },
    Ear2 = { Name = 'Amber Earring', Augment = '"Quick Draw" ability delay -8' },
    Ring1 = { Name = 'Copper Ring', Augment = '"Quick Draw" ability delay -8' },
    Ring2 = { Name = 'Copper Ring', Augment = '"Quick Draw" ability delay -8' },
}
sets.AllJobs['MaxMAcc'] = {
    -- Ammo = {Name="", Augment=MAXMACC16 }
    -- Ear1 = {Name="", Augment=MAXMACC16 }
    -- Ear2 = {Name="", Augment=MAXMACC16 }
    Ring1 = {Name="Hermit's Ring", Augment=MAXMACC16 }
    -- Ring2 = {Name="", Augment=MAXMACC16 }
    -- Waist = {Name="", Augment=MAXMACC16 }
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
sets.AllJobs['Midcast']['Enhancing Magic'] = gFunc.Combine(sets.AllJobs['Midcast']['EnhancingDuration'],{
    -- Main={Name="",Augment=ENHANCE20},
    -- Sub={Name="",Augment=ENHANCE20},
    -- Ammo={Name="",Augment=ENHANCE20},
    -- Head={Name="",Augment=ENHANCE20},
    Neck= {Name="Enhancing Torque", Augment=ENHANCE20},
    Ear1={Name="Andoaa Earring",Augment=ENHANCE20},
    -- Ear2={Name="",Augment=ENHANCE20},
    -- Body={Name="",Augment=ENHANCE20},
    -- Hands={Name="",Augment=ENHANCE20},
    Ring1={Name="Stikini Ring +1",Augment=ENHANCE20},
    Ring2={Name="Stikini Ring +1",Augment=ENHANCE20},
    -- Back={Name="",Augment=ENHANCE20},
    -- Waist={Name="",Augment=ENHANCE20},
    -- Legs={Name="",Augment=ENHANCE20},
    -- Feet={Name="",Augment=ENHANCE20},
})
sets.AllJobs['Midcast']['Enfeebling Magic'] = gFunc.Combine(sets.AllJobs['MaxMAcc'],{})
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
    Main = { Name = 'Lady Bell', Augment = ENSPELL40},
    Sub={ Name="Warlock's Shield", Augment = ENSPELL40 },
    Ammo = { Name="Optical Needle", Augment = ENSPELL40},
    Head={ Name="Copper Hairpin", Augment = ENSPELL40 },
    Neck={ Name="Justice Badge", Augment = ENSPELL40 },
    Ear1={ Name="Silver Earring", Augment = ENSPELL40 },
    Ear2={ Name="Silver Earring", Augment = ENSPELL40 },
    Body = { Name = 'Vgd. Tunica', Augment = ENSPELL40},
    Hands = { Name = 'Vgd. Gloves', Augment = ENSPELL40},
    Ring1={ Name="Copper Ring", Augment = ENSPELL40 },
    Ring2={ Name="Copper Ring", Augment = ENSPELL40 },
    Back={ Name="Shaper's Shawl", Augment = ENSPELL40 },		
    Waist={ Name="Friar's Rope", Augment = ENSPELL40 },		
    Legs = { Name = 'Vagabond\'s Hose', Augment = ENSPELL40},
    Feet = { Name = 'Vagabond\'s Boots', Augment = ENSPELL40},

})
sets.AllJobs['Midcast']['ConserveMP'] = gFunc.Combine(sets.AllJobs['FastCast'], {

})
sets.AllJobs['Midcast']['DrainAspir'] = {
    Ear1={Name="Abyssal Earring",Augment=DRAINASPIR40},
    Ear2={Name="Silver Earring",Augment=DRAINASPIR40},
    Back={Name="Merciful Cape",Augment=DRAINASPIR40},
    Ring1={Name="Hermit\'s Ring",Augment=DRAINASPIR40,},
    Ring2={Name="Hermit\'s Ring",Augment=DRAINASPIR40,},
}

sets.AllJobs['Midcast']['Helixes'] = gFunc.Combine(sets.AllJobs['MAB'],{
    Main={Name="Nihility", Augment=MDMG48},
    Sub={Name="Morbol Shield", Augment=MDMG48},
    Ranged={Name="Animator", Augment=MDMG48},
    Head={Name="Straw Hat", Augment=MDMG48},
    Neck={Name="Silver Name Tag", Augment=MDMG48},
    Ear2={Name="Cassie Earring",Augment=MDMG48},
    Ear1={Name="Shell Earring +1", Augment=MDMG48},
    Body="Chocobo Shirt",
    Hands={Name="Vagabond\'s Gloves", Augment=SIR40},
    Ring1={Name="Eremite\'s Ring +1", Augment=MAB32},
    Ring2={Name='Eremite\'s Ring +1', Augment=MAB32 },
    Back="Nexus Cape",
    Waist={Name="Silver Moogle Belt", Augment=MDMG48},
    Legs={Name="Vagabond\'s Hose", Augment=SIR40},
    Feet={Name="Vagabond\'s Boots", Augment=SIR40}
})

sets.AllJobs['Midcast']['BLU_Physical'] = gFunc.Combine(sets.AllJobs['Midcast']['Blue Magic'],{})
sets.AllJobs['Midcast']['BLU_Buffs'] = gFunc.Combine(sets.AllJobs['Midcast']['Blue Magic'],{})
sets.AllJobs['Midcast']['BLU_Nukes'] = gFunc.Combine(sets.AllJobs['Midcast']['Blue Magic'],{})

sets.AllJobs['Midcast']['Cure'] = {
    Neck = {Name="Phalaina Locket", Augment=CUREPOT16},
    Ear1 = {Name="Mendi. Earring", Augment=CUREPOT16},
    Ear2 = {Name="Corybant Pearl", Augment=CUREPOT16},
    Ring1 = "Kunaji Ring",
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
    Waist = {Name="Chaac Belt",Augment=SAVETP200}
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

sets.AllJobs['Crafting'] = {
    Back = "Shaper's Shawl"
}

sets.Chocobo = {}
sets.Chocobo['Mount'] = {
    Body = 'Orange Race Silks',
}
sets.Chocobo['Dig'] = {
    Body = 'Blue Race Silks',
}

infoLog("Loaded common gearsets")