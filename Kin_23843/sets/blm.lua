AF_HEAD = ""
AF_BODY = ""
AF_HANDS = {Name="Spae. Gloves +3",}
AF_LEGS = {Name="Spae. Tonban +3",}
AF_FEET = ""
RELIC_HEAD = {Name="Arch. Petasos +3", }
RELIC_BODY = {Name="", }
RELIC_HANDS = "Arch. Gloves +2"
RELIC_LEGS = "Arch. Tonban +2"
RELIC_FEET = {Name="Arch. Sabots +3", }
EMPYREAN_HEAD = {Name="",}
EMPYREAN_BODY = {Name="", }
EMPYREAN_HANDS = {Name="Wicce Gloves +1", }
EMPYREAN_LEGS = ""
EMPYREAN_FEET = {Name="Wicce Sabots +1", }



sets.default={}
sets.BLM={}
sets.Idle = {}
sets.Engaged = {}
--------------------------------------
--      BEGIN ENGAGED GEARSETS      --
--------------------------------------
sets['Engaged'] = gFunc.Combine(sets.AllJobs['TP'],{})
-- Weapon options
sets['Engaged']['Staff'] = gFunc.Combine(sets['Engaged'], {
})


-- Every day killing things
sets['Engaged']['Balanced'] = gFunc.Combine(sets['Engaged'], {
    -- Head="Volte Cap",
    -- Body="Volte Jupon",
    -- Hands="Volte Bracers",
    -- Legs="Volte Hose",
    -- Feet="Volte Boots",
    Waist={ Name="Windbuffet Belt +1", Augment = TA12 },
})

-- Every day attacky things!
sets['Engaged']['Aggressive'] = gFunc.Combine(sets['Engaged'], {})

-- Every day defensive things
sets['Engaged']['Defensive'] = gFunc.Combine(sets['Engaged']['Balanced'], {})

-- Specific set for TH
sets['Engaged']['TH'] = gFunc.Combine(sets.AllJobs['TH'], {})

--------------------------------------
--          BEGIN IDLE GEARSETS     --
--------------------------------------
-- Move speed forms our base, along with any all jobs DT- we have
sets.Idle = gFunc.Combine(sets.AllJobs['DT'], {
    Feet="Herald's Gaiters",
})

-- Add refresh/regen/etc to our Idle set
sets.Idle['Balanced'] = gFunc.Combine(sets.Idle, {
    Ear2="Moonshade Earring",
})

-- More defensive Idle things? Try to max DT over Regen/Refresh
sets.Idle['Defensive'] = gFunc.Combine(sets.Idle['Balanced'], {
     Ear2="Etiolation Earring", --3% MDT (19% total + Shell5 @29% MDT > 48% total)
     Head="Volte Cap",
     Body="Volte Jupon",
     Hands="Volte Bracers",
     Legs="Volte Hose",
     Feet="Volte Boots",

})

-- sets['Idle']['Aggressive'] = gFunc.Combine(sets['Idle']['Balanced'], {})

sets['Resting']={}

sets.BLM['MAB'] = gFunc.Combine(sets.AllJobs['MAB'], {
    Sub = 'Willpower Grip',
    Ammo = { Name = 'Erlene\'s Notebook', Augment = MAB32 },
    Head = RELIC_HEAD,
    Neck = { Name = 'Deviant Necklace', Augment = MAB40 },
    Ear1 = { Name = 'Friomisi Earring', Augment = MAB32 },
    Ear2 = { Name = 'Hecate\'s Earring', Augment = MAB32},
    Body = { Name = 'Gyve Doublet', Augment = MAB32 },
    Hands = { Name = 'Jhakri Cuffs +2', Augment = MAB32 },
    Ring1 = { Name = 'Shiva Ring +1', Augment = MAB32 },
    Ring2 = { Name = 'Acumen Ring', Augment = MAB32 },
    Back = { Name = 'Toro Cape', Augment = MAB32 },
    Waist = { Name = 'Yamabuki-no-Obi', Augment = MAB32 },
    Legs = RELIC_LEGS
})

sets.BLM['MAB']['Fire'] = gFunc.Combine(sets.BLM['MAB'],{
    Main="Melisseus Staff", 
})
sets.BLM['MAB']['Wind'] = gFunc.Combine(sets.BLM['MAB'],{
    Main="Melisseus Staff", 
    Back="Kaikias' Cape"
})
sets.BLM['MAB']['Water'] = gFunc.Combine(sets.BLM['MAB'],{})
sets.BLM['MAB']['Earth'] = gFunc.Combine(sets.BLM['MAB'],{
    Neck="Quanpur Necklace"
})
sets.BLM['MAB']['Thunder'] = gFunc.Combine(sets.BLM['MAB'],{})
sets.BLM['MAB']['Ice'] = gFunc.Combine(sets.BLM['MAB'],{
    Main="Ngqoqwanb",
})
sets.BLM['MAB']['Light'] = gFunc.Combine(sets.BLM['MAB'],{})
sets.BLM['MAB']['Dark'] = gFunc.Combine(sets.BLM['MAB'],{
    Head="Pixie Hairpin +1"
})

sets.BLM['MCrit'] = gFunc.Combine(sets.BLM['MAB'], {
    Ear2 = "Choleric Earring", -- 10% MCrit TODO: AUG 40% MCrit 50% (Snowtip Stone +1 x4)

})

sets.BLM['MBurst'] = gFunc.Combine(sets.BLM['MCrit'],{
    Head=AF_HEAD,
    Neck="Mizu. Kubikazari",
    Feet="Jhakri Pigaches +2"
})

sets.BLM['Magic'] = {}
sets.BLM['Magic']['Cure'] = gFunc.Combine(sets.AllJobs['Midcast']['Cure'],{
    Head="Iaso Mitra", --11%
    Hands="Bokwus Gloves", --13% => 24%
    Legs=AF_LEGS, --11% => 35%
    Back="Ghostfyre cape", --6% => 41%
    Ear2="Roundel Earring", --5% => 50%
    Ring2="Sirona's ring"
})

sets.BLM['Magic']['Cure II'] = gFunc.Combine(sets.BLM['Magic']['Cure'],{})
sets.BLM['Magic']['Cure III'] = gFunc.Combine(sets.BLM['Magic']['Cure'],{})
sets.BLM['Magic']['Cure IV'] = gFunc.Combine(sets.BLM['Magic']['Cure'],{})

sets.BLM['Magic']['White Wind'] = gFunc.Combine(sets.BLM['Magic']['Cure'], {})
sets.BLM['Magic']['Restoral'] = gFunc.Combine(sets.BLM['Magic']['Cure'], {})
sets.BLM['Magic']['Plenilune Embrace'] = gFunc.Combine(sets.BLM['Magic']['Cure'], {})
sets.BLM['Magic']['Exuviation'] = gFunc.Combine(sets.BLM['Magic']['Cure'], {})
sets.BLM['Magic']['Magic Fruit'] = gFunc.Combine(sets.BLM['Magic']['Cure'], {})
sets.BLM['Magic']['Pollen'] = gFunc.Combine(sets.BLM['Magic']['Cure'], {})

sets.BLM['Magic']['BLU_Physical'] = {}
sets.BLM['Magic']['BLU_Buffs'] = {}
sets.BLM['Magic']['BLU_Nukes'] = gFunc.Combine(sets.BLM['MAB'], {})
sets.BLM['Magic']['EnhancingDuration'] = gFunc.Combine(sets.AllJobs['Midcast']['Enhancing Magic'], {
    Hands=AF_HANDS,
    Body=RELIC_BODY,
    Feet=EMPYREAN_FEET,
    Back="Sucellos's Cape",
})

sets.BLM['Magic']['EnfeeblingDuration'] = gFunc.Combine(sets.AllJobs['Midcast']['EnfeeblingDuration'], {
})

sets.BLM['Magic']['Enhancing Magic'] = gFunc.Combine(sets.BLM['Magic']['EnhancingDuration'],{
    Head={Name="Umuthi Hat",Augment=ENHANCE20},
    Neck= {Name="Enhancing Torque", Augment=ENHANCE20},
    Ear1={Name="Andoaa Earring",Augment=ENHANCE20},
    Body=RELIC_BODY,
    Hands=AF_HANDS,
    Legs=AF_LEGS,
    Feet=EMPYREAN_FEET,
    Ring1={Name="Stikini Ring +1",Augment=ENHANCE20},
    Ring2={Name="Stikini Ring +1",Augment=ENHANCE20},
    Back={Name="Estoqueur's cape", Augment=ENHANCE20},
})

sets.BLM['Magic']['Enfeebling Magic'] = gFunc.Combine(sets.BLM['Magic']['EnfeeblingDuration'],{
    Ammo={ Name="Quartz Tathlum", Augment=ENFEEBLE20}, --Enfeebling skill+
    Head=RELIC_HEAD, --Enfeebling Skill+
    Neck={ Name="Dls. Torque +1"}, --Enfeebling Potency +7
    Ear2={ Name="Moonshade Earring", Augment={'"Refresh"+10','"Fast Cast"+5','"Regen"+10','"Store TP"+5',}}, -- Enfeebling Magic potency +3
    Body=EMPYREAN_BODY, --Enfeebling Potency +14
    Hands=EMPYREAN_HANDS, -- Enfeebling skill+ BONUS: Saboteur potency when active
    Ring1={Name="Stikini Ring +1",Augment=ENFEEBLE20},
    Ring2={Name="Stikini Ring +1",Augment=ENFEEBLE20},
    Back={ Name="Sucellos's Cape", Augment=ENFEEBLE20}, --Enfeebling Potency +10
    Legs={Name="Psycloth Lappas", Augment=ENFEEBLE20},
    Feet=RELIC_FEET, --Enfeebling Potency+ 5(AF+2) or 10 (AF+3)
})
sets.BLM['Magic']['Elemental Magic'] = gFunc.Combine(sets.BLM['MAB'], {})
sets.BLM['Magic']['Dark Magic'] = gFunc.Combine(sets.BLM['MAB'],{})

sets.BLM['Magic']['Dispel'] = gFunc.Combine(sets.BLM['Magic']['Enfeebling Magic'], {
    Neck="Dls. Torque +1"
})

sets.BLM['Magic']['Drain'] = gFunc.Combine(sets.AllJobs['Midcast']['DrainAspir'],{
    Head={Name="Appetence Crown", Augment=DRAINASPIR40},
    Waist={Name="Fucho-no-Obi",Augment=DRAINASPIR40},
})
sets.BLM['Magic']['Drain II'] = gFunc.Combine(sets.BLM['Magic']['Drain'],{})
sets.BLM['Magic']['Aspir'] = gFunc.Combine(sets.BLM['Magic']['Drain'],{})
sets.BLM['Magic']['Aspir II'] = gFunc.Combine(sets.BLM['Magic']['Drain'],{})

sets.BLM['Magic']['Impact'] = {
    Body = "Twilight Cloak"
}

sets.BLM['Magic']['Helixes'] = gFunc.Combine(sets.BLM['Magic']['Elemental Magic'], {})
sets.BLM['Magic']['Helixes']['Light Arts'] = gFunc.Combine(sets.BLM['Magic']['Helixes'], {})
sets.BLM['Magic']['Helixes']['Dark Arts'] = gFunc.Combine(sets.BLM['Magic']['Helixes'], {})

sets.BLM['Magic']['Gains'] = gFunc.Combine(sets.BLM['Magic']['Enhancing Magic'], {
    Hands=RELIC_HANDS,
    Neck="Dls. Torque +1",
})
sets.BLM['Magic']['Gain-STR'] = gFunc.Combine(sets.BLM['Magic']['Gains'],{})
sets.BLM['Magic']['Gain-MND'] = gFunc.Combine(sets.BLM['Magic']['Gains'],{})
sets.BLM['Magic']['Gain-INT'] = gFunc.Combine(sets.BLM['Magic']['Gains'],{})
sets.BLM['Magic']['Gain-DEX'] = gFunc.Combine(sets.BLM['Magic']['Gains'],{})
sets.BLM['Magic']['Gain-AGI'] = gFunc.Combine(sets.BLM['Magic']['Gains'],{})
sets.BLM['Magic']['Gain-VIT'] = gFunc.Combine(sets.BLM['Magic']['Gains'],{})
sets.BLM['Magic']['Gain-CHR'] = gFunc.Combine(sets.BLM['Magic']['Gains'],{})

sets.BLM['Misc'] = {}
sets.BLM['Misc']['Max HP'] = {}
sets.BLM['Magic']['Dread Spikes'] = gFunc.Combine(sets.BLM['Misc']['Max HP'],{})
sets.BLM['DayWeatherBonus'] = {
    Back="Twilight Cape",
    Waist="Hachirin-no-Obi"
}
sets.BLM['SorcTonban'] = { Legs="Sorcerer's Tonban +1"}
--------------------------------------
--           BEGIN JA GEARSETS      --
--------------------------------------
sets.JobAbility["Manafont"] = {}
sets.JobAbility["Elemental Seal"] = {}
sets.JobAbility['Mana Wall']= {}
sets.JobAbility["Enmity Douse"] = {}
sets.JobAbility['Manawell']= {}
sets.JobAbility['Subtle Sorcery'] = {}
sets.JobAbility['Cascade'] = {}

--------------------------------------
--           BEGIN WS GEARSETS      --
--------------------------------------
sets.WeaponSkills["Evisceration"] = gFunc.Combine(sets.AllJobs['WeaponSkills']['WSD'], {})
sets.WeaponSkills["Mercy Stroke"] = gFunc.Combine(sets.AllJobs['WeaponSkills']['WSD'], {})

--FTP Replicating WS

-- MAB modded WS
sets.WeaponSkills['Tartarus Torpor'] = gFunc.Combine(sets.BLM['MAB']['Dark'], {})
sets.WeaponSkills['Vidohunir'] = gFunc.Combine(sets.BLM['MAB']['Dark'], {})
sets.WeaponSkills['Cataclysm'] = gFunc.Combine(sets.BLM['MAB']['Dark'], {})
sets.WeaponSkills["Aeolian Edge"] = gFunc.Combine(sets.BLM['MAB'],{})

sets.WeaponSkills['Earth Crusher'] = gFunc.Combine(sets.BLM['MAB'], {})
sets.WeaponSkills['Rock Crusher'] = gFunc.Combine(sets.BLM['MAB'], {})
sets.WeaponSkills['Starburst'] = gFunc.Combine(sets.BLM['MAB'], {})
sets.WeaponSkills['Sunburst'] = gFunc.Combine(sets.BLM['MAB'], {})
sets.WeaponSkills['Omniscience'] = gFunc.Combine(sets.BLM['MAB'], {})
sets.WeaponSkills['Sunburst'] = gFunc.Combine(sets.BLM['MAB'], {})
sets.WeaponSkills['Sunburst'] = gFunc.Combine(sets.BLM['MAB'], {})


sets['Unknown'] = {}
sets['Dead'] = {}