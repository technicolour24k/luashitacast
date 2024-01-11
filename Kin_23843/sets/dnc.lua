AF_HEAD = "Maxixi Tiara +1"
AF_BODY = "Maxixi Casaque +1"
AF_HANDS = "Maxixi Bangles +1"
AF_LEGS = "Maxixi Tights +1"
AF_FEET = "Maxixi Toe Shoes +1"
RELIC_HEAD = "Horos Tiara +1"
RELIC_BODY = "Horos Casaque +1"
RELIC_HANDS = "Horos Bangles +1"
RELIC_LEGS = "Horos Tights +1"
RELIC_FEET = "Horos Toe Shoes +1"
EMPYREAN_HEAD ="Maculele Tiara +1"
EMPYREAN_BODY = "Macu. Casaque +1"
EMPYREAN_HANDS = "Macu. Bangles +1"
EMPYREAN_LEGS = "Maculele Tights +1"
EMPYREAN_FEET = "Macu. Toe Shoes +1"

sets.default={}
sets.DNC={}
--------------------------------------
--      BEGIN ENGAGED GEARSETS      --
--------------------------------------
sets['Engaged'] = gFunc.Combine(sets.AllJobs['TP'],{})
-- Weapon options, unlikely to change for DNC
sets['Engaged']['Daggers'] ={
    Main = { Name = 'Twashtar', Augment = 'DMG:+32' },
    Sub = { Name = 'Terpsichore'},
}

-- Every day killing things
sets['Engaged']['Balanced'] = gFunc.Combine(sets['Engaged'], {
    Waist = { Name = 'Windbuffet Belt +1', Augment = TA12 },
})

-- Every day attacky things!
sets['Engaged']['Aggressive'] = gFunc.Combine(sets['Engaged'], {
})

-- Every day defensive things
sets['Engaged']['Defensive'] = gFunc.Combine(sets['Engaged']['Balanced'], {

})

sets['Engaged']['MEva'] = gFunc.Combine(sets['Engaged'], {

})


-- Specific set for TH
sets['Engaged']['TH'] = gFunc.Combine(sets.AllJobs['TH'], {
    Sub = "Sandung",
	Hands = RELIC_HANDS,
	Feet = EMPYREAN_FEET,
})

--------------------------------------
--          BEGIN IDLE GEARSETS     --
--------------------------------------
-- Every day idle things: Move speed, regen, refresh
sets['Idle'] = gFunc.Combine(sets.AllJobs['DT'], {
})

sets['Idle']['Balanced'] = gFunc.Combine(sets.Idle, {
})
sets['Idle']['Defensive'] = gFunc.Combine(sets.Idle['Balanced'], {
})

sets['Resting']={}

sets.DNC['MAB'] = gFunc.Combine(sets.AllJobs['MAB'], {
    Head="Wayfarer Circlet",
    Body="Sombra Harness",
    Legs = "Limbo Trousers",
    Feet="Sombra Leggings"

})

sets.DNC['Magic'] = {}
sets.DNC['Magic']['Cure'] = gFunc.Combine(sets.AllJobs['Midcast']['Cure'], {})
sets.DNC['Magic']['BLU_Physical'] = {}
sets.DNC['Magic']['BLU_Buffs'] = {}
sets.DNC['Magic']['BLU_Nukes'] = gFunc.Combine(sets.DNC['MAB'], {})
sets.DNC['Magic']['Elemental Magic'] = gFunc.Combine(sets.DNC['MAB'], {})

sets.DNC['Magic']['Helixes'] = gFunc.Combine(sets.DNC['Magic']['Elemental Magic'], {})
sets.DNC['Magic']['Helixes']['Light Arts'] = gFunc.Combine(sets.DNC['Magic']['Helixes'], {})
sets.DNC['Magic']['Helixes']['Dark Arts'] = gFunc.Combine(sets.DNC['Magic']['Helixes'], {})

sets.DNC['Magic']['Enspells'] = gFunc.Combine(sets.AllJobs['Midcast']['Enspell'], {})

sets.DNC['DayWeatherBonus'] = {}

--------------------------------------
--           BEGIN JA GEARSETS      --
--------------------------------------
sets.JobAbility["Perfect Dodge"] = gFunc.Combine(sets.AllJobs['JobAbility'],{})
sets.JobAbility["Sneak Attack"] = gFunc.Combine(sets.AllJobs['JobAbility'],{Hands = EMPYREAN_HANDS})
sets.JobAbility["Trick Attack"] = gFunc.Combine(sets.AllJobs['JobAbility'],{})
sets.JobAbility['Flee'] = gFunc.Combine(sets.AllJobs['JobAbility'],{Feet = AF_FEET})
sets.JobAbility['Accomplice'] = gFunc.Combine(sets.AllJobs['JobAbility'],{Head = EMPYREAN_HEAD})
sets.JobAbility['Collaborator'] = gFunc.Combine(sets.AllJobs['JobAbility'],{Head = EMPYREAN_HEAD})

--------------------------------------
--           BEGIN WS GEARSETS      --
--------------------------------------
sets['WeaponSkills'] = gFunc.Combine(sets.AllJobs['WeaponSkills']['WSD'], {
    Hands= "Meg. Gloves +2", --WSD (All hits) +7%
})
sets['WeaponSkills']["Evisceration"] = gFunc.Combine(sets['WeaponSkills'], {
    Head={Name="Mummu Bonnet +2",Augments={}}, -- 5% Crit Rate
    -- Body={Name=RELIC_BODY, Augments={}},
    -- Hands={Name="Mummu Wrists +2", Augments={}}, -- 6% Crit Rate
    Legs={Name="Mummu Kecks +2", Augments={}}, --
    Feet={Name="Mummu Gamash. +2",Augments={}},

})
sets['WeaponSkills']["Dancing Edge"] = gFunc.Combine(sets['WeaponSkills'], {})
sets['WeaponSkills']["Mercy Stroke"] = gFunc.Combine(sets['WeaponSkills'], {})
sets['WeaponSkills']["Mandalic Stab"] = gFunc.Combine(sets['WeaponSkills'], {})
sets['WeaponSkills']["Rudra's Storm"] = gFunc.Combine(sets['WeaponSkills'], {
    Body = AF_BODY, --TA+7%
    Legs = AF_LEGS, --TA 5%
    Feet = RELIC_FEET, -- TA+3%+8%(Aug) +TA damage+7%
    Ear1 = { Name = 'Mache Earring +1', Augment = TA8 },
    Ear2 = { Name = 'Mache Earring +1', Augment = TA8 },
    Back = { Name = 'Canny Cape', Augment = TA8 }, --10% TA (2% + 8%)
    Neck = { Name = 'Tlamiztli Collar', Augment = TA8 },   
    Ring1 = { Name = 'Regal Ring', Augment= TA8},
    Ring2 = { Name = 'Epona\'s Ring', Augment= TA8}, --11% TA (3%+8%)

})
sets['WeaponSkills']["Aeolian Edge"] = gFunc.Combine(sets.DNC['MAB'], {
    Head="Chimera Hairpin"
})
sets['WeaponSkills']["Exenterator"] = gFunc.Combine(sets['WeaponSkills'], {})

sets['Unknown'] = {}
sets['Dead'] = {}