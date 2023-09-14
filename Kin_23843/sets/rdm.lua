AF_HEAD = "Atro. Chapeau +3"
AF_BODY = "Atrophy Tabard +2"
AF_HANDS = "Atrophy Gloves +3"
AF_LEGS = "Atrophy Tights +3"
AF_FEET = "Atro. Boots +2"
RELIC_HEAD = {Name="Viti. Chapeau +3", Augment=ENFEEBLE16}
RELIC_BODY = {Name="Viti. Tabard +3", Augment=ENHANCE16}
RELIC_HANDS = "Viti. Gloves +2"
RELIC_LEGS = "Viti. Tights +1"
RELIC_FEET = {Name="Vitiation Boots +3", Augment=ENFEEBLE16}
EMPYREAN_HEAD = "Leth. Chapell +1"
EMPYREAN_BODY = {Name="Lethargy Sayon +1", Augment=ENFEEBLE16}
EMPYREAN_HANDS = {Name="Leth. Gantherots +1", Augment=ENFEEBLE16}
EMPYREAN_LEGS = "Leth. Fuseau +1"
EMPYREAN_FEET = "Leth. Houseaux +1"



sets.default={}
sets.RDM={}
--------------------------------------
--      BEGIN ENGAGED GEARSETS      --
--------------------------------------
sets.default['Engaged'] = gFunc.Combine(sets.AllJobs['TP'],{})
-- Weapon options
sets.default['Engaged']['Sword'] ={
    Main = { Name = 'Almace' },
    Sub = { Name = 'Genbu\'s Shield' },
}
sets.default['Engaged']['DualWield'] = {
    Main = { Name = 'Almace' },
    Sub = { Name = 'Fettering Blade'}
}
sets.default['Engaged']['Daggers'] = {
    Main = { Name = 'Mandau' },
    Sub = { Name = 'Genbu\'s Shield' },
}
sets.default['Engaged']['Combo'] = {
    Main = { Name = 'Almace' },
    Sub = { Name = 'Mandau'}
}


-- Every day killing things
sets.default['Engaged']['Balanced'] = gFunc.Combine(sets.default['Engaged'], {
    Head="Volte Cap",
    Body="Volte Jupon",
    Hands="Volte Gloves",
    Legs="Volte Hose",
    Feet="Volte Boots",
    Waist={ Name="Windbuffet Belt +1", Augment = '"Triple Atk."+8' },
})

-- Every day attacky things!
sets.default['Engaged']['Aggressive'] = gFunc.Combine(sets.default['Engaged'], {
})

-- Every day defensive things
sets.default['Engaged']['Defensive'] = gFunc.Combine(sets.default['Engaged']['Balanced'], {
    Head=AF_HEAD,
    Body=AF_BODY,
    Legs=AF_LEGS,
    Feet=AF_FEET,
    Ring2="Purity Ring",
})

-- Specific set for TH
sets.default['Engaged']['TH'] = gFunc.Combine(sets.AllJobs['TH'], {})

--------------------------------------
--          BEGIN IDLE GEARSETS     --
--------------------------------------
-- Every day idle things: Move speed, regen, refresh
sets.default['Idle'] = gFunc.Combine(sets.AllJobs['DT'], {
    Head=RELIC_HEAD,
	Body=EMPYREAN_BODY,
	Legs="Crimson Cuisses",
    Feet="Iaso Boots",
    Ear2 = "Moonshade Earring"
})
-- More defensive Idle things? Try to max DT over Regen/Refresh
-- sets.default['Idle']['Defensive'] = gFunc.Combine(sets.default['Idle'], {
--     Ear2="Etiolation Earring", --3% MDT (19% total + Shell5 @29% MDT > 48% total)
-- })

sets.default['Resting']={}

sets.RDM['MAB'] = gFunc.Combine(sets.AllJobs['MAB'], {
    Head=EMPYREAN_HEAD, --25 MAB
    Body={Name="Gyve Doublet", Augment=MAB32}, --52 MAB
    Hands="Jhakri Cuffs +2", --37 MAB, +2 => 40 MAB
    Legs={Name="Gyve Trousers", Augment=MAB32},--40 MAB
    Feet={Name="Vitiation Boots +3", Augment=MAB32}, -- 48 MAB, +3 is used for Enfeebling Magic sets
    Waist="Othila Sash",
})

sets.RDM['MCrit'] = gFunc.Combine(sets.RDM['MAB'], {
    -- Head = "A'as Circlet", -- 10% MCrit TODO: Get Item & AUG 20% MCrit (total 30%)
    Ear1 = "Hecate's Earring", -- 3% MCrit TODO: AUG 20% MCrit (total 23% >> 53%)
    Ear2 = "Choleric Earring", -- 10% MCrit TODO: AUG 20% MCrit (total 30% >> 83%)
    -- Waist = "Othila Sash", -- TODO: AUG 20% MCrit (total 20% >> 103%)
})

sets.RDM['MBurst'] = gFunc.Combine(sets.RDM['MCrit'],{
    Head=AF_HEAD,
    Neck="Mizu. Kubikazari",
    --Feet="Jhakri Pigaches +2"
})

sets.RDM['Magic'] = {}
sets.RDM['Magic']['Cure'] = {
    Head="Iaso Mitra", --11%
    Hands="Bokwus Gloves", --13% => 24%
    Legs=AF_LEGS, --11% => 35%
    Back="Ghostfyre cape", --6% => 41%
    Neck="Phalaina locket", --4% => 45%
    Ear1="Roundel Earring", --5% => 50%
    Ring1="Lebeche Ring",
    Ring2="Sirona's ring"
}
sets.RDM['Magic']['White Wind'] = gFunc.Combine(sets.RDM['Magic']['Cure'], {})
sets.RDM['Magic']['Restoral'] = gFunc.Combine(sets.RDM['Magic']['Cure'], {})
sets.RDM['Magic']['Plenilune Embrace'] = gFunc.Combine(sets.RDM['Magic']['Cure'], {})
sets.RDM['Magic']['Exuviation'] = gFunc.Combine(sets.RDM['Magic']['Cure'], {})
sets.RDM['Magic']['Magic Fruit'] = gFunc.Combine(sets.RDM['Magic']['Cure'], {})
sets.RDM['Magic']['Pollen'] = gFunc.Combine(sets.RDM['Magic']['Cure'], {})

sets.RDM['Magic']['BLU_Physical'] = {}
sets.RDM['Magic']['BLU_Buffs'] = {}
sets.RDM['Magic']['BLU_Nukes'] = gFunc.Combine(sets.RDM['MAB'], {})
sets.RDM['Magic']['EnhancingDuration'] = gFunc.Combine(sets.AllJobs['Midcast']['Enhancing Magic'], {
    Hands=AF_HANDS,
    Body=RELIC_BODY,
    Feet=EMPYREAN_FEET,
    Back="Sucellos's Cape",
})

sets.RDM['Magic']['EnfeeblingDuration'] = gFunc.Combine(sets.AllJobs['Midcast']['EnfeeblingDuration'], {
})

sets.RDM['Magic']['Enhancing Magic'] = gFunc.Combine(sets.RDM['Magic']['EnhancingDuration'],{
    Head="Umuthi Hat", --Not yet available, TODO: Grab it when it is.
    Neck= {Name="Enhancing Torque", Augment=ENHANCE16},
    Ear1={Name="Andoaa Earring",Augment=ENHANCE16},
    Body=RELIC_BODY,
    Hands=AF_HANDS,
    Legs=AF_LEGS,
    Feet=EMPYREAN_FEET,
    Ring1={Name="Stikini Ring +1",Augment=ENHANCE16},
    Ring2="Stikini Ring +1",
    Back={Name="Estoqueur's cape", Augment=ENHANCE16},
})

sets.RDM['Magic']['Enfeebling Magic'] = gFunc.Combine(sets.RDM['Magic']['EnfeeblingDuration'],{
    Ammo={ Name="Quartz Tathlum", Augment=ENFEEBLE16}, --Enfeebling skill+
    Head=RELIC_HEAD, --Enfeebling Skill+
    Neck={ Name="Dls. Torque +1"}, --Enfeebling Potency +7
    Ear2={ Name="Moonshade Earring", Augment={'"Refresh"+10','"Fast Cast"+5','"Regen"+10','"Store TP"+5',}}, -- Enfeebling Magic potency +3
    Body=EMPYREAN_BODY, --Enfeebling Potency +14
    Hands=EMPYREAN_HANDS, -- Enfeebling skill+ BONUS: Saboteur potency when active
    Ring1={Name = "Stikini Ring +1"},
    Ring2={Name = "Stikini Ring +1"},
    Back={ Name="Sucellos's Cape", Augment=ENFEEBLE16}, --Enfeebling Potency +10
    Legs={Name="Portent Pants", Augment=ENFEEBLE16},
    Feet=RELIC_FEET, --Enfeebling Potency+ 5(AF+2) or 10 (AF+3)
})
sets.RDM['Magic']['Elemental Magic'] = gFunc.Combine(sets.RDM['MAB'], {})
sets.RDM['Magic']['Dark Magic'] = {}

sets.RDM['Magic']['Dispel'] = gFunc.Combine(sets.RDM['Magic']['Enfeebling Magic'], {
    Neck="Dls. Torque +1"
})

sets.RDM['Magic']['Helixes'] = gFunc.Combine(sets.RDM['Magic']['Elemental Magic'], {})
sets.RDM['Magic']['Helixes']['Light Arts'] = gFunc.Combine(sets.RDM['Magic']['Helixes'], {})
sets.RDM['Magic']['Helixes']['Dark Arts'] = gFunc.Combine(sets.RDM['Magic']['Helixes'], {})

sets.RDM['Magic']['Gains'] = gFunc.Combine(sets.RDM['Magic']['Enhancing Magic'], {
    Body=RELIC_BODY,
    Hands=RELIC_HANDS,
    Feet=EMPYREAN_FEET,
    Neck="Dls. Torque +1",
    Back="Sucellos's Cape",
})
sets.RDM['Magic']['Gain-STR'] = gFunc.Combine(sets.RDM['Magic']['Gains'],{})
sets.RDM['Magic']['Gain-MND'] = gFunc.Combine(sets.RDM['Magic']['Gains'],{})
sets.RDM['Magic']['Gain-INT'] = gFunc.Combine(sets.RDM['Magic']['Gains'],{})
sets.RDM['Magic']['Gain-DEX'] = gFunc.Combine(sets.RDM['Magic']['Gains'],{})
sets.RDM['Magic']['Gain-AGI'] = gFunc.Combine(sets.RDM['Magic']['Gains'],{})
sets.RDM['Magic']['Gain-VIT'] = gFunc.Combine(sets.RDM['Magic']['Gains'],{})
sets.RDM['Magic']['Gain-CHR'] = gFunc.Combine(sets.RDM['Magic']['Gains'],{})

sets.RDM['DayWeatherBonus'] = {Back="Twilight Cape"}
--------------------------------------
--           BEGIN JA GEARSETS      --
--------------------------------------
sets.JobAbility["Chainspell"] = {}
sets.JobAbility["Convert"] = {}
sets.JobAbility['Composure']= {
    Head=EMPYREAN_HEAD,
    Body=EMPYREAN_BODY,
    Hands=EMPYREAN_HANDS,
    Legs=EMPYREAN_LEGS,
    Feet=EMPYREAN_FEET
}
sets.JobAbility["Spontaneity"] = {}
sets.JobAbility['Saboteur']= {Hands=EMPYREAN_HANDS}
sets.JobAbility['Stymie'] = {}

--------------------------------------
--           BEGIN WS GEARSETS      --
--------------------------------------
sets.WeaponSkills["Evisceration"] = gFunc.Combine(sets.AllJobs['WeaponSkills']['WSD'], {})
sets.WeaponSkills["Mercy Stroke"] = gFunc.Combine(sets.AllJobs['WeaponSkills']['WSD'], {})
sets.WeaponSkills["Aeolian Edge"] = gFunc.Combine(sets.RDM['MAB'],{})
sets.WeaponSkills["Exenterator"] = gFunc.Combine(sets.AllJobs['WeaponSkills']['WSD'], {})

--FTP Replicating WS
sets.WeaponSkills['Requiescat'] = gFunc.Combine(sets.AllJobs['WeaponSkills']['Fotia'], {})
sets.WeaponSkills['Chant du Cygne'] = gFunc.Combine(sets.AllJobs['WeaponSkills']['Fotia'], {})
sets.WeaponSkills['Swift Blade'] = gFunc.Combine(sets.AllJobs['WeaponSkills']['Fotia'], {})
sets.WeaponSkills['Vorpal Blade'] = gFunc.Combine(sets.AllJobs['WeaponSkills']['Fotia'], {})
-- MAB modded WS
sets.WeaponSkills['Sanguine Blade'] = gFunc.Combine(sets.RDM['MAB'], {})
sets.WeaponSkills['Uriel Blade'] = gFunc.Combine(sets.RDM['MAB'], {})
sets.WeaponSkills['Red Lotus Blade'] = gFunc.Combine(sets.RDM['MAB'], {})
sets.WeaponSkills['Burning Blade'] = gFunc.Combine(sets.RDM['MAB'], {})
sets.WeaponSkills['Shining Blade'] = gFunc.Combine(sets.RDM['MAB'], {})
sets.WeaponSkills['Seraph Blade'] = gFunc.Combine(sets.RDM['MAB'], {})
sets.WeaponSkills['Tartarus Torpor'] = gFunc.Combine(sets.RDM['MAB'], {})
sets.WeaponSkills['Earth Crusher'] = gFunc.Combine(sets.RDM['MAB'], {})
sets.WeaponSkills['Omniscience'] = gFunc.Combine(sets.RDM['MAB'], {})
sets.WeaponSkills['Rock Crusher'] = gFunc.Combine(sets.RDM['MAB'], {})
sets.WeaponSkills['Starburst'] = gFunc.Combine(sets.RDM['MAB'], {})
sets.WeaponSkills['Sunburst'] = gFunc.Combine(sets.RDM['MAB'], {})
sets.WeaponSkills['Seraph Blade'] = gFunc.Combine(sets.RDM['MAB'], {})
sets.WeaponSkills['Shining Strike'] = gFunc.Combine(sets.RDM['MAB'], {})
sets.WeaponSkills['Red Lotus Blade'] = gFunc.Combine(sets.RDM['MAB'], {})
sets.WeaponSkills['Sanguien Blade'] = gFunc.Combine(sets.RDM['MAB'], {})
sets.WeaponSkills['Burning Blade'] = gFunc.Combine(sets.RDM['MAB'], {})
sets.WeaponSkills['Flash Nova'] = gFunc.Combine(sets.RDM['MAB'], {})
sets.WeaponSkills['Shining Blade'] = gFunc.Combine(sets.RDM['MAB'], {})
sets.WeaponSkills['Seraph Strike'] = gFunc.Combine(sets.RDM['MAB'], {})
sets.WeaponSkills['Spirits Within'] = gFunc.Combine(sets.RDM['MAB'], {})

-- Standard mods
sets.WeaponSkills['Savage Blade'] = gFunc.Combine(sets.AllJobs['WeaponSkills']['WSD'],{--50% STR, 50% MND - Equal footing for both
    Head=RELIC_HEAD,
    Body="Ayanmo Corazza +2",
    Hands="Jhakri Cuffs +2",
    Legs=AF_LEGS,
    Feet=AF_FEET,
    Ammo="Floestone",
    Neck="Tlamiztli Collar",
    Ear1="Regal Earring",
    Ear2="Mache Earring +1",
    Back="Laic Mantle",
}) 
sets.WeaponSkills['Knights of Round'] = {}

sets.default['Unknown'] = {}
sets.default['Dead'] = {}