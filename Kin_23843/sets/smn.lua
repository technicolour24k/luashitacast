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
EMPYREAN_HEAD = {Name="Leth. Chappel +1",Augment=MAB32}
EMPYREAN_BODY = {Name="Lethargy Sayon +1", Augment=ENFEEBLE20}
EMPYREAN_HANDS = {Name="Leth. Gantherots +1", Augment=ENFEEBLE20}
EMPYREAN_LEGS = "Leth. Fuseau +1"
EMPYREAN_FEET = {Name="Leth. Houseaux +1", Augment=ENHANCE20}



sets.default={}
sets.SMN={}
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
    -- Head="Volte Cap",
    -- Body="Volte Jupon",
    -- Hands="Volte Bracers",
    -- Legs="Volte Hose",
    -- Feet="Volte Boots",
    Waist={ Name="Windbuffet Belt +1", Augment = '"Triple Atk."+8' },
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

-- sets['Idle']['Aggressive'] = gFunc.Combine(sets['Idle']['Balanced'], {})

sets['Resting']={}

sets.SMN['MAB'] = gFunc.Combine(sets.AllJobs['MAB'], {
    Head=EMPYREAN_HEAD, --25 MAB
    Body={Name="Gyve Doublet", Augment=MAB32}, --52 MAB
    Hands="Jhakri Cuffs +2", --40 MAB
    Legs={Name="Gyve Trousers", Augment=MAB32},--40 MAB
    Feet={Name="Vitiation Boots +2", Augment=MAB32}, -- 48 MAB, +3 is used for Enfeebling Magic sets
    Waist={Name="Yamabuki-no-Obi",Augment=MAB32},
})

sets.SMN['MAB']['Fire'] = gFunc.Combine(sets.SMN['MAB'],{
    Main="Melisseus Staff", 
    Sub="Elan Strap"
})
sets.SMN['MAB']['Wind'] = gFunc.Combine(sets.SMN['MAB'],{
    Main="Melisseus Staff", 
    Sub="Elan Strap",
    Back="Kaikias' Cape"
})
sets.SMN['MAB']['Water'] = gFunc.Combine(sets.SMN['MAB'],{})
sets.SMN['MAB']['Earth'] = gFunc.Combine(sets.SMN['MAB'],{
    Neck="Quanpur Necklace"
})
sets.SMN['MAB']['Thunder'] = gFunc.Combine(sets.SMN['MAB'],{})
sets.SMN['MAB']['Ice'] = gFunc.Combine(sets.SMN['MAB'],{
    Main="Ngqoqwanb",
    Sub="Elan Strap"
})
sets.SMN['MAB']['Light'] = gFunc.Combine(sets.SMN['MAB'],{})
sets.SMN['MAB']['Dark'] = gFunc.Combine(sets.SMN['MAB'],{})

sets.SMN['MCrit'] = gFunc.Combine(sets.SMN['MAB'], {
    -- Neck = "Nefarious Collar" --3% MCrit TODO: AUG 20% MCrit 23%
    Ear1 = "Hecate's Earring", -- 3% MCrit TODO: AUG 20% MCrit 23%
    Ear2 = "Choleric Earring", -- 10% MCrit TODO: AUG 40% MCrit 50% (Snowtip Stone +1 x4)
    -- Waist = "Aswang Sash", -- 5% MCrit TODO: AUG 20% 25%
    -- Total 101% MCrit
})

sets.SMN['MBurst'] = gFunc.Combine(sets.SMN['MCrit'],{
    Head=AF_HEAD,
    Neck="Mizu. Kubikazari",
    Feet="Jhakri Pigaches +2"
})

sets.SMN['Magic'] = {}
sets.SMN['Magic']['Cure'] = gFunc.Combine(sets.AllJobs['Midcast']['Cure'],{
    Head="Iaso Mitra", --11%
    Hands="Bokwus Gloves", --13% => 24%
    Legs=AF_LEGS, --11% => 35%
    Back="Ghostfyre cape", --6% => 41%
    Ear2="Roundel Earring", --5% => 50%
    Ring2="Sirona's ring"
})

sets.SMN['Magic']['Cure II'] = gFunc.Combine(sets.SMN['Magic']['Cure'],{})
sets.SMN['Magic']['Cure III'] = gFunc.Combine(sets.SMN['Magic']['Cure'],{})
sets.SMN['Magic']['Cure IV'] = gFunc.Combine(sets.SMN['Magic']['Cure'],{})

sets.SMN['Magic']['White Wind'] = gFunc.Combine(sets.SMN['Magic']['Cure'], {})
sets.SMN['Magic']['Restoral'] = gFunc.Combine(sets.SMN['Magic']['Cure'], {})
sets.SMN['Magic']['Plenilune Embrace'] = gFunc.Combine(sets.SMN['Magic']['Cure'], {})
sets.SMN['Magic']['Exuviation'] = gFunc.Combine(sets.SMN['Magic']['Cure'], {})
sets.SMN['Magic']['Magic Fruit'] = gFunc.Combine(sets.SMN['Magic']['Cure'], {})
sets.SMN['Magic']['Pollen'] = gFunc.Combine(sets.SMN['Magic']['Cure'], {})

sets.SMN['Magic']['BLU_Physical'] = {}
sets.SMN['Magic']['BLU_Buffs'] = {}
sets.SMN['Magic']['BLU_Nukes'] = gFunc.Combine(sets.SMN['MAB'], {})
sets.SMN['Magic']['EnhancingDuration'] = gFunc.Combine(sets.AllJobs['Midcast']['Enhancing Magic'], {
    Hands=AF_HANDS,
    Body=RELIC_BODY,
    Feet=EMPYREAN_FEET,
    Back="Sucellos's Cape",
})

sets.SMN['Magic']['EnfeeblingDuration'] = gFunc.Combine(sets.AllJobs['Midcast']['EnfeeblingDuration'], {
})

sets.SMN['Magic']['Enhancing Magic'] = gFunc.Combine(sets.SMN['Magic']['EnhancingDuration'],{
    Head="Umuthi Hat", --Not yet available, TODO: Grab it when it is.
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

sets.SMN['Magic']['Enfeebling Magic'] = gFunc.Combine(sets.SMN['Magic']['EnfeeblingDuration'],{
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
sets.SMN['Magic']['Elemental Magic'] = gFunc.Combine(sets.SMN['MAB'], {})
sets.SMN['Magic']['Dark Magic'] = gFunc.Combine(sets.SMN['MAB'],{})

sets.SMN['Magic']['Dispel'] = gFunc.Combine(sets.SMN['Magic']['Enfeebling Magic'], {
    Neck="Dls. Torque +1"
})

sets.SMN['Magic']['Drain'] = gFunc.Combine(sets.SMN['Magic']['Dark Magic'],{
    Head={Name="Appetence Crown", Augment=DRAINASPIR40},
    Waist={Name="Fucho-no-Obi",Augment=DRAINASPIR40},
    Ear1={Name="Abyssal Earring",Augment=DRAINASPIR40},
    Ear2={Name="Silver Earring",Augment=DRAINASPIR40},
    Back={Name="Merciful Cape",Augment=DRAINASPIR40},
    Ring1={Name="Hermit\'s Ring",Augment=DRAINASPIR40,},
    Ring2={Name="Hermit\'s Ring",Augment=DRAINASPIR40,},
})
sets.SMN['Magic']['Drain II'] = gFunc.Combine(sets.SMN['Magic']['Drain'],{})
sets.SMN['Magic']['Aspir'] = gFunc.Combine(sets.SMN['Magic']['Drain'],{})
sets.SMN['Magic']['Aspir II'] = gFunc.Combine(sets.SMN['Magic']['Drain'],{})

sets.SMN['Magic']['Impact'] = {
    Body = "Twilight Cloak"
}

sets.SMN['Magic']['Helixes'] = gFunc.Combine(sets.SMN['Magic']['Elemental Magic'], {})
sets.SMN['Magic']['Helixes']['Light Arts'] = gFunc.Combine(sets.SMN['Magic']['Helixes'], {})
sets.SMN['Magic']['Helixes']['Dark Arts'] = gFunc.Combine(sets.SMN['Magic']['Helixes'], {})

sets.SMN['Magic']['Gains'] = gFunc.Combine(sets.SMN['Magic']['Enhancing Magic'], {
    Hands=RELIC_HANDS,
    Neck="Dls. Torque +1",
})
sets.SMN['Magic']['Gain-STR'] = gFunc.Combine(sets.SMN['Magic']['Gains'],{})
sets.SMN['Magic']['Gain-MND'] = gFunc.Combine(sets.SMN['Magic']['Gains'],{})
sets.SMN['Magic']['Gain-INT'] = gFunc.Combine(sets.SMN['Magic']['Gains'],{})
sets.SMN['Magic']['Gain-DEX'] = gFunc.Combine(sets.SMN['Magic']['Gains'],{})
sets.SMN['Magic']['Gain-AGI'] = gFunc.Combine(sets.SMN['Magic']['Gains'],{})
sets.SMN['Magic']['Gain-VIT'] = gFunc.Combine(sets.SMN['Magic']['Gains'],{})
sets.SMN['Magic']['Gain-CHR'] = gFunc.Combine(sets.SMN['Magic']['Gains'],{})

sets.SMN['Misc'] = {}
sets.SMN['Misc']['Max HP'] = {
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

sets.SMN['Magic']['Dread Spikes'] = gFunc.Combine(sets.SMN['Misc']['Max HP'],{})
sets.SMN['DayWeatherBonus'] = {
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
sets.WeaponSkills["Aeolian Edge"] = gFunc.Combine(sets.SMN['MAB'],{})
sets.WeaponSkills["Exenterator"] = gFunc.Combine(sets.AllJobs['WeaponSkills']['WSD'], {})

--FTP Replicating WS
sets.WeaponSkills['Requiescat'] = gFunc.Combine(sets.AllJobs['WeaponSkills']['Fotia'], {})
sets.WeaponSkills['Chant du Cygne'] = gFunc.Combine(sets.AllJobs['WeaponSkills']['Fotia'], {})
sets.WeaponSkills['Swift Blade'] = gFunc.Combine(sets.AllJobs['WeaponSkills']['Fotia'], {})
sets.WeaponSkills['Vorpal Blade'] = gFunc.Combine(sets.AllJobs['WeaponSkills']['Fotia'], {})
-- MAB modded WS
sets.WeaponSkills['Sanguine Blade'] = gFunc.Combine(sets.SMN['MAB'], {})
sets.WeaponSkills['Uriel Blade'] = gFunc.Combine(sets.SMN['MAB'], {})
sets.WeaponSkills['Red Lotus Blade'] = gFunc.Combine(sets.SMN['MAB'], {})
sets.WeaponSkills['Burning Blade'] = gFunc.Combine(sets.SMN['MAB'], {})
sets.WeaponSkills['Shining Blade'] = gFunc.Combine(sets.SMN['MAB'], {})
sets.WeaponSkills['Seraph Blade'] = gFunc.Combine(sets.SMN['MAB'], {})
sets.WeaponSkills['Tartarus Torpor'] = gFunc.Combine(sets.SMN['MAB'], {})
sets.WeaponSkills['Earth Crusher'] = gFunc.Combine(sets.SMN['MAB'], {})
sets.WeaponSkills['Omniscience'] = gFunc.Combine(sets.SMN['MAB'], {})
sets.WeaponSkills['Rock Crusher'] = gFunc.Combine(sets.SMN['MAB'], {})
sets.WeaponSkills['Starburst'] = gFunc.Combine(sets.SMN['MAB'], {})
sets.WeaponSkills['Sunburst'] = gFunc.Combine(sets.SMN['MAB'], {})
sets.WeaponSkills['Seraph Blade'] = gFunc.Combine(sets.SMN['MAB'], {})
sets.WeaponSkills['Shining Strike'] = gFunc.Combine(sets.SMN['MAB'], {})
sets.WeaponSkills['Red Lotus Blade'] = gFunc.Combine(sets.SMN['MAB'], {})
sets.WeaponSkills['Sanguien Blade'] = gFunc.Combine(sets.SMN['MAB'], {})
sets.WeaponSkills['Burning Blade'] = gFunc.Combine(sets.SMN['MAB'], {})
sets.WeaponSkills['Flash Nova'] = gFunc.Combine(sets.SMN['MAB'], {})
sets.WeaponSkills['Shining Blade'] = gFunc.Combine(sets.SMN['MAB'], {})
sets.WeaponSkills['Seraph Strike'] = gFunc.Combine(sets.SMN['MAB'], {})
sets.WeaponSkills['Spirits Within'] = gFunc.Combine(sets.SMN['MAB'], {})

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

sets['Unknown'] = {}
sets['Dead'] = {}