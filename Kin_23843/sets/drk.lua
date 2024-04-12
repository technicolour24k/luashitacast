AF_HEAD = "Ig. Burgeonet +2"
AF_BODY = "Ignominy Cuirass +2"
AF_HANDS = "Ig. Gauntlets +2"
AF_LEGS = "Ig. Flanchard +2"
AF_FEET = "Ig. sollerets +2"
RELIC_HEAD = "Fall. Burgeonet +1"
RELIC_BODY = "Fall. Cuirass +1"
RELIC_HANDS = {Name="Fall. Fin. Gaunt. +1"}
RELIC_LEGS = {Name="Fall. Flanchard +1"}
RELIC_FEET = {Name="Fall. Sollerets +1",}
EMPYREAN_HEAD = ""
EMPYREAN_BODY = ""
EMPYREAN_HANDS = ""
EMPYREAN_LEGS = ""
EMPYREAN_FEET = ""



sets.default={}
sets.DRK={}
--------------------------------------
--      BEGIN ENGAGED GEARSETS      --
--------------------------------------
sets['Engaged'] = gFunc.Combine(sets.AllJobs['TP'],{})
-- Weapon options
sets['Engaged']['Scythe'] ={
    Main = { Name = 'Liberator' },
    Sub = { Name = 'Utu Grip' },
}
sets['Engaged']['GSword'] = {
    Main = { Name = 'Ragnarok' },
    Sub = { Name = 'Utu Grip'}
}
sets['Engaged']['Sword'] = {
    Main = { Name = 'Fettering Blade' },
    Sub = { Name = 'Steadfast Shield' },
}
sets['Engaged']['Combo'] = {
    Main = { Name = 'Almace' },
    Sub = { Name = 'Mandau'}
}


-- Every day killing things
sets['Engaged']['Balanced'] = gFunc.Combine(sets['Engaged'], {
    Waist={ Name="Windbuffet Belt +1", Augment = TA12 },
})

-- Every day attacky things!
sets['Engaged']['Aggressive'] = gFunc.Combine(sets['Engaged'], {
})

-- Every day defensive things
sets['Engaged']['Defensive'] = gFunc.Combine(sets['Engaged']['Balanced'], {
    Ring2="Purity Ring",
})

-- Specific set for TH
sets['Engaged']['TH'] = gFunc.Combine(sets.AllJobs['TH'], {})

--------------------------------------
--          BEGIN IDLE GEARSETS     --
--------------------------------------
-- Every day idle things: Move speed, regen, refresh
sets['Idle'] = gFunc.Combine(sets.AllJobs['DT'], {
	Legs="Crimson Cuisses",
    Ear2 = "Moonshade Earring"
})
-- More defensive Idle things? Try to max DT over Regen/Refresh
-- sets['Idle']['Defensive'] = gFunc.Combine(sets['Idle'], {
--     Ear2="Etiolation Earring", --3% MDT (19% total + Shell5 @29% MDT > 48% total)
-- })

sets.default['Resting']={}

sets.DRK['Occult Acumen'] = {}

sets.DRK['MAB'] = gFunc.Combine(sets.DRK['Occult Acumen'], {
    Head=EMPYREAN_HEAD, --25 MAB
    Body={Name="Gyve Doublet", Augment=MAB32}, --52 MAB
    Hands="Jhakri Cuffs +2", --40 MAB
    Legs={Name="Gyve Trousers", Augment=MAB32},--40 MAB
    Feet={Name="Vitiation Boots +2", Augment=MAB32}, -- 48 MAB, +3 is used for Enfeebling Magic sets
    Waist={Name="Yamabuki-no-Obi",Augment=MAB32},
})

sets.DRK['Magic'] = {}
sets.DRK['Magic']['Cure'] = {
    Head="Iaso Mitra", --11%
    Hands="Bokwus Gloves", --13% => 24%
    Legs=AF_LEGS, --11% => 35%
    Back="Ghostfyre cape", --6% => 41%
    Neck="Phalaina locket", --4% => 45%
    Ear1="Roundel Earring", --5% => 50%
    Ring1="Lebeche Ring",
    Ring2="Sirona's ring"
}
sets.DRK['Magic']['White Wind'] = gFunc.Combine(sets.DRK['Magic']['Cure'], {})
sets.DRK['Magic']['Restoral'] = gFunc.Combine(sets.DRK['Magic']['Cure'], {})
sets.DRK['Magic']['Plenilune Embrace'] = gFunc.Combine(sets.DRK['Magic']['Cure'], {})
sets.DRK['Magic']['Exuviation'] = gFunc.Combine(sets.DRK['Magic']['Cure'], {})
sets.DRK['Magic']['Magic Fruit'] = gFunc.Combine(sets.DRK['Magic']['Cure'], {})
sets.DRK['Magic']['Pollen'] = gFunc.Combine(sets.DRK['Magic']['Cure'], {})

sets.DRK['Magic']['BLU_Physical'] = {}
sets.DRK['Magic']['BLU_Buffs'] = {}
sets.DRK['Magic']['BLU_Nukes'] = gFunc.Combine(sets.DRK['MAB'], {})
sets.DRK['Magic']['EnhancingDuration'] = gFunc.Combine(sets.AllJobs['Midcast']['Enhancing Magic'], {
    Hands=AF_HANDS,
    Body=RELIC_BODY,
    Feet=EMPYREAN_FEET,
    Back="Sucellos's Cape",
})

sets.DRK['Magic']['EnfeeblingDuration'] = gFunc.Combine(sets.AllJobs['Midcast']['EnfeeblingDuration'], {
})

sets.DRK['Magic']['Enhancing Magic'] = gFunc.Combine(sets.DRK['Magic']['EnhancingDuration'],{
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

sets.DRK['Magic']['Enfeebling Magic'] = gFunc.Combine(sets.DRK['Magic']['EnfeeblingDuration'],{
    Ammo={ Name="Quartz Tathlum", Augment=ENFEEBLE16}, --Enfeebling skill+
    Ring1={Name = "Stikini Ring +1"},
    Ring2={Name = "Stikini Ring +1"},
})
sets.DRK['Magic']['Absorb'] = {
    head = DRK_AF_HEAD,
    hands = DRK_EMPYREAN_HANDS,
    back = "Chuparrosa Mantle"
}
sets.DRK['Magic']['Absorb-STR'] = gFunc.Combine(sets.DRK['Magic']['Absorb'], {})
sets.DRK['Magic']['Absorb-DEX'] = gFunc.Combine(sets.DRK['Magic']['Absorb'], {})
sets.DRK['Magic']['Absorb-VIT'] = gFunc.Combine(sets.DRK['Magic']['Absorb'], {})
sets.DRK['Magic']['Absorb-AGI'] = gFunc.Combine(sets.DRK['Magic']['Absorb'], {})
sets.DRK['Magic']['Absorb-INT'] = gFunc.Combine(sets.DRK['Magic']['Absorb'], {})
sets.DRK['Magic']['Absorb-MND'] = gFunc.Combine(sets.DRK['Magic']['Absorb'], {})
sets.DRK['Magic']['Absorb-CHR'] = gFunc.Combine(sets.DRK['Magic']['Absorb'], {})
sets.DRK['Magic']['Absorb-TP'] = gFunc.Combine(sets.DRK['Magic']['Absorb'], {})

sets.DRK['Magic']['Elemental Magic'] = gFunc.Combine(sets.DRK['MAB'], {})
sets.DRK['Magic']['Dark Magic'] = gFunc.Combine(sets.DRK['MAB'],{})

sets.DRK['Magic']['Dispel'] = gFunc.Combine(sets.DRK['Magic']['Enfeebling Magic'], {})

sets.DRK['Magic']['Drain'] = gFunc.Combine(sets.DRK['Magic']['Dark Magic'],{
    Hands=RELIC_HANDS,
    Ring1 = { Name = 'Scintillant Ring', Augment = { [1] = 'Magic Damage +7', [2] = 'Mag. Acc+7', [3] = '"Drain" and "Aspir" potency +3', [4] = 'Enfb.mag. skill +3' } },
    Ring2 = { Name = 'Scintillant Ring', Augment = { [1] = 'Magic Damage +2', [2] = 'Mag. Acc+2', [3] = '"Drain" and "Aspir" potency +2', [4] = 'Enfb.mag. skill +7' } },
    Head="Appetence Crown"
})
sets.DRK['Magic']['Drain II'] = gFunc.Combine(sets.DRK['Magic']['Drain'],{})
sets.DRK['Magic']['Aspir'] = gFunc.Combine(sets.DRK['Magic']['Drain'],{})
sets.DRK['Magic']['Aspir II'] = gFunc.Combine(sets.DRK['Magic']['Drain'],{})

sets.DRK['Magic']['Dread Spikes'] = {
    head = RELIC_HEAD,
    body = RELIC_BODY,
    hands = AF_HANDS,
    legs = AF_LEGS,
    feet = AF_FEET
}


sets.DRK['Magic']['Helixes'] = gFunc.Combine(sets.DRK['Magic']['Elemental Magic'], {})
sets.DRK['Magic']['Helixes']['Light Arts'] = gFunc.Combine(sets.DRK['Magic']['Helixes'], {})
sets.DRK['Magic']['Helixes']['Dark Arts'] = gFunc.Combine(sets.DRK['Magic']['Helixes'], {})

sets.DRK['Magic']['Gains'] = gFunc.Combine(sets.DRK['Magic']['Enhancing Magic'], {
    Body=RELIC_BODY,
    Hands=RELIC_HANDS,
    Feet=EMPYREAN_FEET,
    Neck="Dls. Torque +1",
    Back="Sucellos's Cape",
})
sets.DRK['Magic']['Gain-STR'] = gFunc.Combine(sets.DRK['Magic']['Gains'],{})
sets.DRK['Magic']['Gain-MND'] = gFunc.Combine(sets.DRK['Magic']['Gains'],{})
sets.DRK['Magic']['Gain-INT'] = gFunc.Combine(sets.DRK['Magic']['Gains'],{})
sets.DRK['Magic']['Gain-DEX'] = gFunc.Combine(sets.DRK['Magic']['Gains'],{})
sets.DRK['Magic']['Gain-AGI'] = gFunc.Combine(sets.DRK['Magic']['Gains'],{})
sets.DRK['Magic']['Gain-VIT'] = gFunc.Combine(sets.DRK['Magic']['Gains'],{})
sets.DRK['Magic']['Gain-CHR'] = gFunc.Combine(sets.DRK['Magic']['Gains'],{})

sets.DRK['Misc'] = {}
sets.DRK['Misc']['Max HP'] = {
    -- Main="Sagasinger",
    -- Sub="Bloodbead Ecu",
    Head="Volte Tiara",
    Neck="Lavalier +1", --55HP
    Ear1="Upsurge Earring", --55 MP > HP
    Ear2="Cryptic Earring",
    -- Body="Ros. Jaseran +1",
    Hands="Boor Bracelets", --70HP
    Ring1="Bomb Queen Ring", --75HP
    Ring2="Meridian Ring", --90HP
    Back="Moonbeam Cape",
    Waist="Gold Moogle Belt",
    -- Legs=AF_LEGS,
    -- Feet=AF_FEET

}

sets.DRK['Magic']['Dread Spikes'] = gFunc.Combine(sets.DRK['Misc']['Max HP'],{})
sets.DRK['DayWeatherBonus'] = {Back="Twilight Cape"}
--------------------------------------
--           BEGIN JA GEARSETS      --
--------------------------------------
sets.JobAbility["Blood Weapon"] = {}
sets.JobAbility["Souleater"] = {Head=AF_HEAD, left_ear="Moonshade Earring"}
sets.JobAbility["Arcane Circle"] = {Feet=AF_FEET}
sets.JobAbility['Last Resort'] = {Feet=RELIC_FEET}
sets.JobAbility['Weapon Bash'] = {Hands=AF_HANDS}
sets.JobAbility['Nether Void'] = {Legs=EMPYREAN_LEGS}
sets.JobAbility['Arcane Crest'] = {}
sets.JobAbility['Scarlet Delirium'] = {}
sets.JobAbility['Soul Enslavement'] = {}
sets.JobAbility['Consume Mana'] = {}

--------------------------------------
--           BEGIN WS GEARSETS      --
--------------------------------------
sets.WeaponSkills["Quietus"] = gFunc.Combine(sets.AllJobs['WeaponSkills']['WSD'], {})
sets.WeaponSkills["Catastrophe"] = gFunc.Combine(sets.AllJobs['WeaponSkills']['WSD'], {})
sets.WeaponSkills["Insurgency"] = gFunc.Combine(sets.AllJobs['WeaponSkills']['WSD'],{})
sets.WeaponSkills["Infernal Scythe"] = gFunc.Combine(sets.AllJobs['WeaponSkills']['WSD'], {})

--FTP Replicating WS
sets.WeaponSkills['Entropy'] = gFunc.Combine(sets.AllJobs['WeaponSkills']['Fotia'], {})
sets.WeaponSkills['Chant du Cygne'] = gFunc.Combine(sets.AllJobs['WeaponSkills']['Fotia'], {})
sets.WeaponSkills['Swift Blade'] = gFunc.Combine(sets.AllJobs['WeaponSkills']['Fotia'], {})
sets.WeaponSkills['Vorpal Blade'] = gFunc.Combine(sets.AllJobs['WeaponSkills']['Fotia'], {})
sets.WeaponSkills['Resolution'] = gFunc.Combine(sets.AllJobs['WeaponSkills']['Fotia'], {})

-- MAB modded WS
sets.WeaponSkills['Sanguine Blade'] = gFunc.Combine(sets.DRK['MAB'], {})
sets.WeaponSkills['Uriel Blade'] = gFunc.Combine(sets.DRK['MAB'], {})
sets.WeaponSkills['Red Lotus Blade'] = gFunc.Combine(sets.DRK['MAB'], {})
sets.WeaponSkills['Burning Blade'] = gFunc.Combine(sets.DRK['MAB'], {})
sets.WeaponSkills['Shining Blade'] = gFunc.Combine(sets.DRK['MAB'], {})
sets.WeaponSkills['Seraph Blade'] = gFunc.Combine(sets.DRK['MAB'], {})
sets.WeaponSkills['Tartarus Torpor'] = gFunc.Combine(sets.DRK['MAB'], {})
sets.WeaponSkills['Earth Crusher'] = gFunc.Combine(sets.DRK['MAB'], {})
sets.WeaponSkills['Omniscience'] = gFunc.Combine(sets.DRK['MAB'], {})
sets.WeaponSkills['Rock Crusher'] = gFunc.Combine(sets.DRK['MAB'], {})
sets.WeaponSkills['Starburst'] = gFunc.Combine(sets.DRK['MAB'], {})
sets.WeaponSkills['Sunburst'] = gFunc.Combine(sets.DRK['MAB'], {})
sets.WeaponSkills['Seraph Blade'] = gFunc.Combine(sets.DRK['MAB'], {})
sets.WeaponSkills['Shining Strike'] = gFunc.Combine(sets.DRK['MAB'], {})
sets.WeaponSkills['Red Lotus Blade'] = gFunc.Combine(sets.DRK['MAB'], {})
sets.WeaponSkills['Sanguien Blade'] = gFunc.Combine(sets.DRK['MAB'], {})
sets.WeaponSkills['Burning Blade'] = gFunc.Combine(sets.DRK['MAB'], {})
sets.WeaponSkills['Flash Nova'] = gFunc.Combine(sets.DRK['MAB'], {})
sets.WeaponSkills['Shining Blade'] = gFunc.Combine(sets.DRK['MAB'], {})
sets.WeaponSkills['Seraph Strike'] = gFunc.Combine(sets.DRK['MAB'], {})
sets.WeaponSkills['Spirits Within'] = gFunc.Combine(sets.DRK['MAB'], {})

-- Standard mods
sets.WeaponSkills['Savage Blade'] = gFunc.Combine(sets.AllJobs['WeaponSkills']['WSD'],{--50% STR, 50% MND - Equal footing for both
    Head=RELIC_HEAD,
    Body="Ayanmo Corazza +2",
    Hands="Jhakri Cuffs +2",
    Legs=AF_LEGS,
    Feet="Jhakri Pigaches +2",
    Ammo="Floestone",
    Neck={Name="Clotharius Torque",Augment=TA12},
    Ear1="Regal Earring",
    Ear2="Mache Earring +1",
    Back="Laic Mantle",
}) 
sets.WeaponSkills['Knights of Round'] = {}

sets.default['Unknown'] = {}
sets.default['Dead'] = {}