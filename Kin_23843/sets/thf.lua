AF_HEAD = "Pill. Bonnet +3"
AF_BODY = "Pillager's Vest +3"
AF_HANDS = "Pill. Armlets +3"
AF_LEGS = "Pill. Culottes +3"
AF_FEET = "Pill. Poulaines +3"
RELIC_HEAD = "Plun. Bonnet +1"
RELIC_BODY = "Plun. Vest +1"
RELIC_HANDS = "Plun. Armlets +3"
RELIC_LEGS = {Name="Plun. Culottes +2",Augment={}}
RELIC_FEET = {Name="Plun. Poulaines +2",Augment=TA8}
EMPYREAN_HEAD = { Name="Skulker's Bonnet +1", Augment = {[1]='DEX+4',[2]='"Triple Atk."+6'} }
EMPYREAN_BODY = "Skulker's Vest +1"
EMPYREAN_HANDS = "Skulk. Armlets +1"
EMPYREAN_LEGS = "Skulk. Culottes +1"
EMPYREAN_FEET = "Skulk. Poulaines +1"

sets.default={}
sets.THF={}
--------------------------------------
--      BEGIN ENGAGED GEARSETS      --
--------------------------------------
sets['Engaged'] = gFunc.Combine(sets.AllJobs['TP'],{})
-- Weapon options, unlikely to change for THF
sets['Engaged']['Daggers'] ={
    Main = { Name = 'Twashtar', Augment = DMG64 },
    Sub = { Name = 'Sandung', Augment = 'DMG:+32' },
}

-- Every day killing things
sets['Engaged']['Balanced'] = gFunc.Combine(sets['Engaged'], {
})

-- Every day attacky things!
sets['Engaged']['Aggressive'] = gFunc.Combine(sets['Engaged'], {
    Range = 'Exalted C.bow',
    Ammo = "Beryllium Bolt",
    Head = 'Pill. Bonnet +3',
    Neck = { Name = 'Clotharius Torque', Augment = TA12 },
    Ear1 = { Name = 'Mache Earring +1', Augment = TA8 },
    Ear2 = { Name = 'Mache Earring +1', Augment = TA8 },
    Body = 'Plunderer\'s Vest +2',
    Hands = 'Pill. Armlets +3',
    Ring1 = { Name = 'Rajas Ring', Augment = STP20 },
    Ring2={Name='Hetairoi Ring', Augment=TA12},
    Back = { Name = 'Toutatis\'s Cape', Augment=TA12}, --TA Damage+20%
    Waist = { Name = 'Windbuffet Belt +1', Augment = TA12 },
    Legs = 'Pill. Culottes +3',
    Feet = RELIC_FEET
})

-- Every day defensive things
sets['Engaged']['Defensive'] = gFunc.Combine(sets['Engaged']['Balanced'], {

})

sets['Engaged']['MEva'] = gFunc.Combine(sets['Engaged'], {

})


-- Specific set for TH
sets['Engaged']['TH'] = gFunc.Combine(sets.AllJobs['TH'], {
    Main = "Sandung",
    Sub = 'Thief\'s Knife',
	Hands = RELIC_HANDS,
	Feet = EMPYREAN_FEET,
})

sets.AllJobs['Midcast']['Dia'] = gFunc.Combine(sets['Engaged']['TH'], {})
sets.AllJobs['Midcast']['Dia II'] = gFunc.Combine(sets['Engaged']['TH'], {})
sets.AllJobs['Midcast']['Dia III'] = gFunc.Combine(sets['Engaged']['TH'], {})
sets.AllJobs['Midcast']['Diaga'] = gFunc.Combine(sets['Engaged']['TH'], {})
sets.AllJobs['Midcast']['Diaga III'] = gFunc.Combine(sets['Engaged']['TH'], {})

--------------------------------------
--          BEGIN IDLE GEARSETS     --
--------------------------------------
-- Every day idle things: Move speed, regen, refresh
sets['Idle'] = gFunc.Combine(sets.AllJobs['DT'], {
    Feet = AF_FEET,
    Ear1 = {Name="Opal Earring",Augment=REFRESH80},
    Ear2 = {Name="Opal Earring",Augment=REGEN80},
})

sets['Idle']['Balanced'] = gFunc.Combine(sets['Idle'], {
    Feet = AF_FEET,
})

sets['Idle']['Defensive'] = gFunc.Combine(sets['Idle']['Balanced'], {
    Feet = AF_FEET,
})

sets['Resting']={}

sets.THF['MAB'] = gFunc.Combine(sets.AllJobs['MAB'], {
    Head="Wayfarer Circlet",
    Body="Sombra Harness",
    Legs = "Limbo Trousers",
    Feet="Sombra Leggings"

})

sets.THF['Magic'] = {}
sets.THF['Magic']['Cure'] = gFunc.Combine(sets.AllJobs['Midcast']['Cure'], {})
sets.THF['Magic']['White Wind'] = gFunc.Combine(sets.AllJobs['Midcast']['Cure'], {})
sets.THF['Magic']['BLU_Physical'] = {}
sets.THF['Magic']['BLU_Buffs'] = {}
sets.THF['Magic']['BLU_Nukes'] = gFunc.Combine(sets.THF['MAB'], {})
sets.THF['Magic']['Elemental Magic'] = gFunc.Combine(sets.THF['MAB'], {})
sets.THF['Magic']['Enhancing Magic'] = gFunc.Combine(sets.AllJobs['Midcast']['Enhancing Magic'],{
    Legs = {Name="Rawhide Trousers",Augment=ENHDUR40}
})


sets.THF['Magic']['Helixes'] = gFunc.Combine(sets.THF['Magic']['Elemental Magic'], {})
sets.THF['Magic']['Helixes']['Light Arts'] = gFunc.Combine(sets.THF['Magic']['Helixes'], {})
sets.THF['Magic']['Helixes']['Dark Arts'] = gFunc.Combine(sets.THF['Magic']['Helixes'], {})

sets.THF['Magic']['Enspells'] = gFunc.Combine(sets.AllJobs['Midcast']['Enspell'], {})

sets.THF['DayWeatherBonus'] = {}

sets.THF['Magic']['EnhancingPotency'] = gFunc.Combine(sets.AllJobs['Midcast']['EnhancingPotency'],{
    Legs = {Name="Rawhide Trousers",Augment=ENHANCE20}
})
sets.THF['Magic']['Stoneskin'] = gFunc.Combine(sets.THF['Magic']['EnhancingPotency'],{})
sets.THF['Magic']['Diamondhide'] = gFunc.Combine(sets.THF['Magic']['EnhancingPotency'],{})

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
    Ammo = { Name = 'Fire Bomblet', Augment = { [1] = 'Weapon Skill Acc.+2', [2] = 'Weapon skill damage +5%', [3] = 'DMG:+2', [4] = 'Attack+7', [5] = 'Accuracy+7' } }, --5% WSD
    Hands= {Name="Meg. Gloves +2",Augment=TA12}, --WSD (All hits) +7%
    Head = AF_HEAD, --WSD+6%
    Legs = RELIC_LEGS, --WSD+3%
    Back = { Name = 'Toutatis\'s Cape', Augment=TA12}, --TA Damage+20%
})
sets['WeaponSkills']['MAB'] = gFunc.Combine(sets['WeaponSkills'],{
    Ammo={Name='Erlene\'s Notebook', Augment=MAB32},
    Head={Name="Herculean Helm", Augment=MAB32},
    Ring2={Name="Acumen Ring", Augment=MAB32},
    Body={Name="Sombra Harness",Augment=MAB32},
    Feet="Sombra Leggings",
    Back={Name='Toro Cape', Augment=MAB40},
    Waist={Name='Eschan Stone',Augment=MAB40},
})
sets['WeaponSkills']["Evisceration"] = gFunc.Combine(sets['WeaponSkills'], {
    Ammo={Name="Yetshila +1", Augments={[1]='"Triple Atk."+4', [2]="Critical Hit Rate +10"}}, --12% Crit Rate, 6% Damage
    Head={Name="Mummu Bonnet +2",Augments={}}, -- 5% Crit Rate
    -- Body={Name=RELIC_BODY, Augments={}},
    -- Hands={Name="Mummu Wrists +2", Augments={}}, -- 6% Crit Rate
    Legs={Name="Mummu Kecks +2", Augments={}}, --
    Feet={Name="Mummu Gamash. +2",Augments={}},

})
sets['WeaponSkills']["Dancing Edge"] = gFunc.Combine(sets['WeaponSkills'], {})
sets['WeaponSkills']["Mercy Stroke"] = gFunc.Combine(sets['WeaponSkills'], {})
sets['WeaponSkills']["Mandalic Stab"] = gFunc.Combine(sets['WeaponSkills'], {})
sets['WeaponSkills']["Shark Bite"] = gFunc.Combine(sets['WeaponSkills'], {})
sets['WeaponSkills']["Rudra's Storm"] = gFunc.Combine(sets['WeaponSkills'], {
    Body = AF_BODY, --TA+7%
    Legs = AF_LEGS, --TA 5%
    Feet = RELIC_FEET, -- TA+3%+8%(Aug) +TA damage+7%
    Ring1 = { Name = 'Regal Ring', Augment= TA8},

})
sets['WeaponSkills']["Aeolian Edge"] = gFunc.Combine(sets['WeaponSkills']['MAB'], {
    -- Head="Chimera Hairpin",
})
sets['WeaponSkills']["Exenterator"] = gFunc.Combine(sets['WeaponSkills'], {})

sets['Unknown'] = {}
sets['Dead'] = {}