AF_HEAD = "Pill. Bonnet +3"
AF_BODY = "Pillager's Vest +3"
AF_HANDS = "Pill. Armlets +3"
AF_LEGS = "Pill. Culottes +3"
AF_FEET = "Pill. Poulaines +3"
RELIC_HEAD = "Plun. Bonnet +1"
RELIC_BODY = "Plun. Vest +1"
RELIC_HANDS = "Plun. Armlets +2"
RELIC_LEGS = "Plun. Culottes +1"
RELIC_FEET = "Plun. Poulaines +1"
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
    Main = { Name = 'Twashtar', Augment = 'DMG:+32' },
    Sub = { Name = 'Sandung', Augment = 'DMG:+32' },
}

-- Every day killing things
sets['Engaged']['Balanced'] = gFunc.Combine(sets['Engaged'], {
    -- Feet = { Name = 'Savateur\'s Gaiters', Augment = { [1] = '"Store TP"+10', [2] = '"Subtle Blow"+30' } },
    Waist = { Name = 'Windbuffet Belt +1', Augment = '"Triple Atk."+8' },
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
    Feet = AF_FEET,
    Ear2 = "Moonshade Earring"
})

sets['Idle']['Balanced'] = gFunc.Combine(sets.Idle, {
    Feet = AF_FEET,
    Ear2 = "Moonshade Earring"
})
sets['Idle']['Defensive'] = gFunc.Combine(sets.Idle['Balanced'], {
    Feet = AF_FEET,
    Ear2 = "Moonshade Earring"
})

sets['Resting']={}

sets.THF['MAB'] = gFunc.Combine(sets.AllJobs['MAB'], {
    Head="Wayfarer Circlet",
    Body="Sombra Harness",
    Waist = "Aquiline Belt",
    Legs = "Limbo Trousers",
    Feet="Sombra Leggings"

})

sets.THF['Magic'] = {}
sets.THF['Magic']['Cure'] = gFunc.Combine(sets.AllJobs['Midcast']['Cure'], {})
sets.THF['Magic']['BLU_Physical'] = {}
sets.THF['Magic']['BLU_Buffs'] = {}
sets.THF['Magic']['BLU_Nukes'] = gFunc.Combine(sets.THF['MAB'], {})
sets.THF['Magic']['Elemental Magic'] = gFunc.Combine(sets.THF['MAB'], {})

sets.THF['Magic']['Helixes'] = gFunc.Combine(sets.THF['Magic']['Elemental Magic'], {})
sets.THF['Magic']['Helixes']['Light Arts'] = gFunc.Combine(sets.THF['Magic']['Helixes'], {})
sets.THF['Magic']['Helixes']['Dark Arts'] = gFunc.Combine(sets.THF['Magic']['Helixes'], {})

sets.THF['Magic']['Enspells'] = gFunc.Combine(sets.AllJobs['Midcast']['Enspell'], {})

sets.THF['DayWeatherBonus'] = {}

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
sets.THF['WeaponSkills'] = gFunc.Combine(sets.AllJobs['WeaponSkills']['WSD'], {
    Ammo = { Name = 'Fire Bomblet', Augment = { [1] = 'Weapon Skill Acc.+2', [2] = 'Weapon skill damage +5%', [3] = 'DMG:+2', [4] = 'Attack+7', [5] = 'Accuracy+7' } }, --5% WSD
    Hands= "Meg. Gloves +2", --WSD (All hits) +7%
    Head = AF_HEAD, --WSD+6%
})
sets.THF['WeaponSkills']["Evisceration"] = gFunc.Combine(sets.THF['WeaponSkills'], {
    Ammo={Name="Yetshila +1", Augments={[1]='"Triple Atk."+4', [2]="Critical Hit Rate +10"}}, --12% Crit Rate, 6% Damage
    Head={Name="Mummu Bonnet +2",Augments={}}, -- 5% Crit Rate
    -- Body={Name=RELIC_BODY, Augments={}},
    -- Hands={Name="Mummu Wrists +2", Augments={}}, -- 6% Crit Rate
    Legs={Name="Mummu Kecks +2", Augments={}}, --
    Feet={Name="Mummu Gamash. +2",Augments={}},

})
sets.THF['WeaponSkills']["Dancing Edge"] = gFunc.Combine(sets.THF['WeaponSkills'], {})
sets.THF['WeaponSkills']["Mercy Stroke"] = gFunc.Combine(sets.THF['WeaponSkills'], {})
sets.THF['WeaponSkills']["Mandalic Stab"] = gFunc.Combine(sets.THF['WeaponSkills'], {})
sets.THF['WeaponSkills']["Rudra's Storm"] = gFunc.Combine(sets.THF['WeaponSkills'], {
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
sets.THF['WeaponSkills']["Aeolian Edge"] = gFunc.Combine(sets.THF['MAB'], {
    Head="Chimera Hairpin"
})
sets.THF['WeaponSkills']["Exenterator"] = gFunc.Combine(sets.THF['WeaponSkills'], {})

sets['Unknown'] = {}
sets['Dead'] = {}