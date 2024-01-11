AF_HEAD = "Atro. Chapeau +3"
AF_BODY = "Atrophy Tabard +2"
AF_HANDS = {Name="Atrophy Gloves +3",Augment=ENHANCE20}
AF_LEGS = {Name="Atrophy Tights +3",Augment=ENHANCE20}
AF_FEET = "Atro. Boots +2"
RELIC_HEAD = {Name="Viti. Chapeau +3", Augment=ENFEEBLE20}
RELIC_BODY = {Name="Viti. Tabard +3", Augment=ENHANCE20}
RELIC_HANDS = "Viti. Gloves +2"
RELIC_LEGS = "Viti. Tights +1"
RELIC_FEET = {Name="Vitiation Boots +3", Augment=ENFEEBLE20}
EMPYREAN_HEAD = {Name="Aoidos' Calot +2",Augment=''}
EMPYREAN_HANDS = {Name="Ad. Mnchtte. +2",Augment=''}
EMPYREAN_BODY = {Name="Aoidos' Hngrln. +2", Augment=''}
EMPYREAN_LEGS = {Name="Aoidos' Rhing. +2",Augment=''}
EMPYREAN_FEET = {Name="Aoidos' Cothrn. +2",Augment=''}

sets.default={}
sets.BRD={}
sets.Idle = {}
sets.Engaged = {}
--------------------------------------
--      BEGIN ENGAGED GEARSETS      --
--------------------------------------
sets['Engaged'] = gFunc.Combine(sets.AllJobs['TP'],{})
-- Weapon options
sets['Engaged']['Sword'] = gFunc.Combine(sets['Engaged'], {
    Main = { Name = 'Almace' },
    Sub = { Name = 'Evalach +1' },
})
sets['Engaged']['DualWield'] = gFunc.Combine(sets['Engaged'], {
    Main = { Name = 'Almace' },
    Sub = { Name = 'Fettering Blade'}
})
sets['Engaged']['Daggers'] = gFunc.Combine(sets['Engaged'], {
    Main = { Name = 'Mandau' },
    Sub = { Name = 'Genesis Shield' },
})
sets['Engaged']['Combo'] = gFunc.Combine(sets['Engaged'], {
    Main = { Name = 'Almace' },
    Sub = { Name = 'Mandau'}
})
sets['Engaged']['Staff'] = gFunc.Combine(sets['Engaged'], {
    Hands = { Name="Shedir Gages" },
    Main = { Name="Lehbrailg +1" },
    Sub = { Name="Elan Strap" },
})


-- Every day killing things
sets['Engaged']['Balanced'] = gFunc.Combine(sets['Engaged'], {
    Main = 'Mandau',
    Sub = 'Joyeuse',
    Range = 'Gjallarhorn',
    Head = { Name = 'Emperor Hairpin', Augment = '"Store TP"+20' },
    Neck = { Name = 'Peacock Charm', Augment = '"Store TP"+20' },
    Ear1 = { Name = 'Dodge Earring', Augment = '"Store TP"+20' },
    Ear2 = 'Suppanomimi',
    Body = { Name = 'Brd. Jstcorps +1' },
    Hands = { Name = 'Savage Gauntlets', Augment = '"Store TP"+20' },
    Ring1 = { Name = 'Defending Ring', Augment = '"Counter"+40' },
    Ring2 = { Name = 'Rajas Ring', Augment = '"Store TP"+40' },
    Back = { Name = 'Jaguar Mantle', Augment = 'Attack+40' },
    Waist = { Name = 'Ryl.Kgt. Belt', Augment = '"Store TP"+20' },
    Legs = { Name = 'Savage Loincloth', Augment = '"Store TP"+20' },
    Feet = { Name = 'Savage Gaiters', Augment = '"Store TP"+20' },    
})

-- Every day attacky things!
sets['Engaged']['Aggressive'] = gFunc.Combine(sets['Engaged'], {
})

-- Every day defensive things
sets['Engaged']['Defensive'] = gFunc.Combine(sets['Engaged']['Balanced'], {
    Sub="Genbu's Shield",
    Ring2="Purity Ring",
})

-- Specific set for TH
sets['Engaged']['TH'] = gFunc.Combine(sets.AllJobs['TH'], {})

--------------------------------------
--          BEGIN IDLE GEARSETS     --
--------------------------------------
-- Move speed forms our base, along with any all jobs DT- we have
sets.Idle = gFunc.Combine(sets.AllJobs['DT'], {
	Legs="Crimson Cuisses",
    Feet="Iaso Boots",
})

-- Add refresh/regen/etc to our Idle set
sets.Idle['Balanced'] = gFunc.Combine(sets.Idle, {
    Head=RELIC_HEAD,
    Body=EMPYREAN_BODY,
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


sets['Resting']={}

sets.BRD['MAB'] = gFunc.Combine(sets.AllJobs['MAB'], {
    Body={Name="Gyve Doublet", Augment=MAB32}, --52 MAB
    Legs={Name="Gyve Trousers", Augment=MAB32},--40 MAB
    Feet={Name="Vitiation Boots +2", Augment=MAB32}, -- 48 MAB, +3 is used for Enfeebling Magic sets
    Waist={Name="Eschan Stone",Augment=MAB40},
})

sets.BRD['MAB']['Fire'] = gFunc.Combine(sets.BRD['MAB'],{
    Main="Melisseus Staff", 
    Sub="Elan Strap"
})
sets.BRD['MAB']['Wind'] = gFunc.Combine(sets.BRD['MAB'],{
    Main="Melisseus Staff", 
    Sub="Elan Strap",
    Back="Kaikias' Cape"
})
sets.BRD['MAB']['Water'] = gFunc.Combine(sets.BRD['MAB'],{})
sets.BRD['MAB']['Earth'] = gFunc.Combine(sets.BRD['MAB'],{
    Neck="Quanpur Necklace"
})
sets.BRD['MAB']['Thunder'] = gFunc.Combine(sets.BRD['MAB'],{})
sets.BRD['MAB']['Ice'] = gFunc.Combine(sets.BRD['MAB'],{
    Main="Ngqoqwanb",
    Sub="Elan Strap"
})
sets.BRD['MAB']['Light'] = gFunc.Combine(sets.BRD['MAB'],{})
sets.BRD['MAB']['Dark'] = gFunc.Combine(sets.BRD['MAB'],{})

sets.BRD['MCrit'] = gFunc.Combine(sets.BRD['MAB'], {})

sets.BRD['MBurst'] = gFunc.Combine(sets.BRD['MCrit'],{})

sets.BRD['Magic'] = {}
sets.BRD['Magic']['Cure'] = gFunc.Combine(sets.AllJobs['Midcast']['Cure'],{})
sets.BRD['Magic']['Cure II'] = gFunc.Combine(sets.BRD['Magic']['Cure'],{})
sets.BRD['Magic']['Cure III'] = gFunc.Combine(sets.BRD['Magic']['Cure'],{})
sets.BRD['Magic']['Cure IV'] = gFunc.Combine(sets.BRD['Magic']['Cure'],{})

sets.BRD['Magic']['White Wind'] = gFunc.Combine(sets.BRD['Magic']['Cure'], {})
sets.BRD['Magic']['Restoral'] = gFunc.Combine(sets.BRD['Magic']['Cure'], {})
sets.BRD['Magic']['Plenilune Embrace'] = gFunc.Combine(sets.BRD['Magic']['Cure'], {})
sets.BRD['Magic']['Exuviation'] = gFunc.Combine(sets.BRD['Magic']['Cure'], {})
sets.BRD['Magic']['Magic Fruit'] = gFunc.Combine(sets.BRD['Magic']['Cure'], {})
sets.BRD['Magic']['Pollen'] = gFunc.Combine(sets.BRD['Magic']['Cure'], {})

sets.BRD['Magic']['BLU_Physical'] = {}
sets.BRD['Magic']['BLU_Buffs'] = {}
sets.BRD['Magic']['BLU_Nukes'] = gFunc.Combine(sets.BRD['MAB'], {})
sets.BRD['Magic']['EnhancingDuration'] = gFunc.Combine(sets.AllJobs['Midcast']['Enhancing Magic'], {})

sets.BRD['Magic']['EnfeeblingDuration'] = gFunc.Combine(sets.AllJobs['Midcast']['EnfeeblingDuration'], {})

sets.BRD['Magic']['Enhancing Magic'] = gFunc.Combine(sets.BRD['Magic']['EnhancingDuration'],{
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

sets.BRD['Magic']['Enfeebling Magic'] = gFunc.Combine(sets.BRD['Magic']['EnfeeblingDuration'],{
    Ammo={ Name="Quartz Tathlum", Augment=ENFEEBLE20}, --Enfeebling skill+
    Ring1={Name="Stikini Ring +1",Augment=ENFEEBLE20},
    Ring2={Name="Stikini Ring +1",Augment=ENFEEBLE20},
    Back={ Name="Sucellos's Cape", Augment=ENFEEBLE20}, --Enfeebling Potency +10
    Legs={Name="Psycloth Lappas", Augment=ENFEEBLE20},
})
sets.BRD['Magic']['Elemental Magic'] = gFunc.Combine(sets.BRD['MAB'], {})
sets.BRD['Magic']['Dark Magic'] = gFunc.Combine(sets.BRD['MAB'],{})
sets.BRD['Magic']['Singing'] = gFunc.Combine(sets.AllJobs['Midcast']['Singing'],{
    Neck="Aoidos' Matinee",
    Head=EMPYREAN_HEAD,
    Body=EMPYREAN_BODY,
    Hands=EMPYREAN_HANDS,
    Legs=EMPYREAN_LEGS,
    Feet=EMPYREAN_FEET
})

sets.BRD['Magic']['Magic Finale'] = gFunc.Combine(sets.BRD['Magic']['Singing'], {
})

sets.BRD['Magic']['Drain'] = gFunc.Combine(sets.AllJobs['Midcast']['DrainAspir'],{
    Head={Name="Appetence Crown", Augment=DRAINASPIR40},
    Waist={Name="Fucho-no-Obi",Augment=DRAINASPIR40},
})
sets.BRD['Magic']['Drain II'] = gFunc.Combine(sets.BRD['Magic']['Drain'],{})
sets.BRD['Magic']['Aspir'] = gFunc.Combine(sets.BRD['Magic']['Drain'],{})
sets.BRD['Magic']['Aspir II'] = gFunc.Combine(sets.BRD['Magic']['Drain'],{})

sets.BRD['Magic']['Impact'] = {
    Body = "Twilight Cloak"
}

sets.BRD['Magic']['Helixes'] = gFunc.Combine(sets.BRD['Magic']['Elemental Magic'], {})
sets.BRD['Magic']['Helixes']['Light Arts'] = gFunc.Combine(sets.BRD['Magic']['Helixes'], {})
sets.BRD['Magic']['Helixes']['Dark Arts'] = gFunc.Combine(sets.BRD['Magic']['Helixes'], {})

sets.BRD['Magic']['Gains'] = gFunc.Combine(sets.BRD['Magic']['Enhancing Magic'], {
    Hands=RELIC_HANDS,
    Neck="Dls. Torque +1",
})
sets.BRD['Magic']['Gain-STR'] = gFunc.Combine(sets.BRD['Magic']['Gains'],{})
sets.BRD['Magic']['Gain-MND'] = gFunc.Combine(sets.BRD['Magic']['Gains'],{})
sets.BRD['Magic']['Gain-INT'] = gFunc.Combine(sets.BRD['Magic']['Gains'],{})
sets.BRD['Magic']['Gain-DEX'] = gFunc.Combine(sets.BRD['Magic']['Gains'],{})
sets.BRD['Magic']['Gain-AGI'] = gFunc.Combine(sets.BRD['Magic']['Gains'],{})
sets.BRD['Magic']['Gain-VIT'] = gFunc.Combine(sets.BRD['Magic']['Gains'],{})
sets.BRD['Magic']['Gain-CHR'] = gFunc.Combine(sets.BRD['Magic']['Gains'],{})

sets.BRD['Misc'] = {}
sets.BRD['Misc']['Max HP'] = {
    Main={Name="Sagasinger", Augment=HP},
    Sub={Name="Bloodbead Ecu", Augment=HP},
    Head={Name="Volte Tiara", Augment=HP},
    Neck={Name="Inq. Bead Necklace", Augment=HP}, --55HP
    Ear1={Name="Upsurge Earring", Augment=HP}, --55 MP > HP
    Ear2={Name="Cryptic Earring", Augment=HP},
    Body={Name="Ros. Jaseran +1", Augment=HP},
    Hands={Name="Boor Bracelets", Augment=HP}, --70HP
    Ring1={Name="Bomb Queen Ring", Augment=HP}, --75HP
    Ring2={Name="Meridian Ring", Augment=HP}, --90HP
    Back={Name="Moonbeam Cape", Augment=HP},
    Waist={Name="Gold Moogle Belt", Augment=HP},
    --Legs={Name="Volte Tights", Augment=HP},
    Legs={Name=AF_LEGS, Augment=HP},
    Feet={Name=AF_FEET, Augment=HP},
}

sets.BRD['Magic']['Dread Spikes'] = gFunc.Combine(sets.BRD['Misc']['Max HP'],{})
sets.BRD['DayWeatherBonus'] = {
    Back="Twilight Cape",
    Waist="Hachirin-no-Obi"
}
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
sets.WeaponSkills["Aeolian Edge"] = gFunc.Combine(sets.BRD['MAB'],{})
sets.WeaponSkills["Exenterator"] = gFunc.Combine(sets.AllJobs['WeaponSkills']['WSD'], {})

--FTP Replicating WS
sets.WeaponSkills['Requiescat'] = gFunc.Combine(sets.AllJobs['WeaponSkills']['Fotia'], {})
sets.WeaponSkills['Chant du Cygne'] = gFunc.Combine(sets.AllJobs['WeaponSkills']['Fotia'], {})
sets.WeaponSkills['Swift Blade'] = gFunc.Combine(sets.AllJobs['WeaponSkills']['Fotia'], {})
sets.WeaponSkills['Vorpal Blade'] = gFunc.Combine(sets.AllJobs['WeaponSkills']['Fotia'], {})
-- MAB modded WS
sets.WeaponSkills['Sanguine Blade'] = gFunc.Combine(sets.BRD['MAB'], {})
sets.WeaponSkills['Uriel Blade'] = gFunc.Combine(sets.BRD['MAB'], {})
sets.WeaponSkills['Red Lotus Blade'] = gFunc.Combine(sets.BRD['MAB'], {})
sets.WeaponSkills['Burning Blade'] = gFunc.Combine(sets.BRD['MAB'], {})
sets.WeaponSkills['Shining Blade'] = gFunc.Combine(sets.BRD['MAB'], {})
sets.WeaponSkills['Seraph Blade'] = gFunc.Combine(sets.BRD['MAB'], {})
sets.WeaponSkills['Tartarus Torpor'] = gFunc.Combine(sets.BRD['MAB'], {})
sets.WeaponSkills['Earth Crusher'] = gFunc.Combine(sets.BRD['MAB'], {})
sets.WeaponSkills['Omniscience'] = gFunc.Combine(sets.BRD['MAB'], {})
sets.WeaponSkills['Rock Crusher'] = gFunc.Combine(sets.BRD['MAB'], {})
sets.WeaponSkills['Starburst'] = gFunc.Combine(sets.BRD['MAB'], {})
sets.WeaponSkills['Sunburst'] = gFunc.Combine(sets.BRD['MAB'], {})
sets.WeaponSkills['Seraph Blade'] = gFunc.Combine(sets.BRD['MAB'], {})
sets.WeaponSkills['Shining Strike'] = gFunc.Combine(sets.BRD['MAB'], {})
sets.WeaponSkills['Red Lotus Blade'] = gFunc.Combine(sets.BRD['MAB'], {})
sets.WeaponSkills['Sanguien Blade'] = gFunc.Combine(sets.BRD['MAB'], {})
sets.WeaponSkills['Burning Blade'] = gFunc.Combine(sets.BRD['MAB'], {})
sets.WeaponSkills['Flash Nova'] = gFunc.Combine(sets.BRD['MAB'], {})
sets.WeaponSkills['Shining Blade'] = gFunc.Combine(sets.BRD['MAB'], {})
sets.WeaponSkills['Seraph Strike'] = gFunc.Combine(sets.BRD['MAB'], {})
sets.WeaponSkills['Spirits Within'] = gFunc.Combine(sets.BRD['MAB'], {})

-- Standard mods
sets.WeaponSkills['Savage Blade'] = gFunc.Combine(sets.AllJobs['WeaponSkills']['WSD'],{--50% STR, 50% MND - Equal footing for both
    Head=RELIC_HEAD,
    Body="Ayanmo Corazza +2",
    Hands="Jhakri Cuffs +2",
    Legs=AF_LEGS,
    Feet="Jhakri Pigaches +2",
    Ammo="Floestone",
    Neck="Tlamiztli Collar",
    Ear1="Regal Earring",
    Ear2="Mache Earring +1",
    Back="Laic Mantle",
}) 
sets.WeaponSkills['Knights of Round'] = {}

sets['Unknown'] = {}
sets['Dead'] = {}