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
sets.RDM={}
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
    Main = { Name="Ngqoqwanb" },
    Sub = { Name="Elan Strap" },
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

sets.RDM['MAB'] = gFunc.Combine(sets.AllJobs['MAB'], {
    Head=EMPYREAN_HEAD, --25 MAB
    Body={Name="Gyve Doublet", Augment=MAB32}, --52 MAB
    Hands="Jhakri Cuffs +2", --40 MAB
    Legs={Name="Gyve Trousers", Augment=MAB32},--40 MAB
    Feet={Name="Vitiation Boots +2", Augment=MAB32}, -- 48 MAB, +3 is used for Enfeebling Magic sets
    Waist={Name="Eschan Stone",Augment=MAB40},
})

sets.RDM['MAB']['Fire'] = gFunc.Combine(sets.RDM['MAB'],{
    Main="Melisseus Staff", 
    Sub="Elan Strap"
})
sets.RDM['MAB']['Wind'] = gFunc.Combine(sets.RDM['MAB'],{
    Main="Melisseus Staff", 
    Sub="Elan Strap",
    Back="Kaikias' Cape"
})
sets.RDM['MAB']['Water'] = gFunc.Combine(sets.RDM['MAB'],{})
sets.RDM['MAB']['Earth'] = gFunc.Combine(sets.RDM['MAB'],{
    Neck="Quanpur Necklace"
})
sets.RDM['MAB']['Thunder'] = gFunc.Combine(sets.RDM['MAB'],{})
sets.RDM['MAB']['Ice'] = gFunc.Combine(sets.RDM['MAB'],{
    Main="Ngqoqwanb",
    Sub="Elan Strap"
})
sets.RDM['MAB']['Light'] = gFunc.Combine(sets.RDM['MAB'],{})
sets.RDM['MAB']['Dark'] = gFunc.Combine(sets.RDM['MAB'],{})

sets.RDM['MCrit'] = gFunc.Combine(sets.RDM['MAB'], {    
    Ear2 = {Name="Choleric Earring",}, -- 10% MCrit rate
    Ring1 = {Name="Resonance Ring",Augment=MCRIT40}, --5% MCrit rate +40% aug 
    Ring2 = {Name="Locus Ring",Augment=MCRIT40}, --5% MCrit rate +40% aug
})

sets.RDM['MBurst'] = gFunc.Combine(sets.RDM['MCrit'],{
    Head=AF_HEAD,
    Neck="Mizu. Kubikazari",
    Feet="Jhakri Pigaches +2",
})

sets.RDM['Magic'] = {}
sets.RDM['Magic']['Cure'] = gFunc.Combine(sets.AllJobs['Midcast']['Cure'],{
    Head="Iaso Mitra", --11%
    Hands="Bokwus Gloves", --13% => 24%
    Legs=AF_LEGS, --11% => 35%
    Back="Ghostfyre cape", --6% => 41%
    Ear2="Roundel Earring", --5% => 50%
    Ring2="Sirona's ring"
})

sets.RDM['Magic']['Cure II'] = gFunc.Combine(sets.RDM['Magic']['Cure'],{})
sets.RDM['Magic']['Cure III'] = gFunc.Combine(sets.RDM['Magic']['Cure'],{})
sets.RDM['Magic']['Cure IV'] = gFunc.Combine(sets.RDM['Magic']['Cure'],{})

sets.RDM['Magic']['White Wind'] = gFunc.Combine(sets.RDM['Magic']['Cure'], {})
sets.RDM['Magic']['Restoral'] = gFunc.Combine(sets.RDM['Magic']['Cure'], {})
sets.RDM['Magic']['Plenilune Embrace'] = gFunc.Combine(sets.RDM['Magic']['Cure'], {})
sets.RDM['Magic']['Exuviation'] = gFunc.Combine(sets.RDM['Magic']['Cure'], {})
sets.RDM['Magic']['Magic Fruit'] = gFunc.Combine(sets.RDM['Magic']['Cure'], {})
sets.RDM['Magic']['Pollen'] = gFunc.Combine(sets.RDM['Magic']['Cure'], {})

sets.RDM['Magic']['BLU_Physical'] = {}
sets.RDM['Magic']['BLU_Buffs'] = {}
sets.RDM['Magic']['BLU_Nukes'] = gFunc.Combine(sets.RDM['MAB'], {})
sets.RDM['Magic']['Enhancing Magic'] = gFunc.Combine(sets.AllJobs['Midcast']['Enhancing Magic'], {
    Hands=AF_HANDS,
    Body=RELIC_BODY,
    Feet=EMPYREAN_FEET,
    Back="Sucellos's Cape",
})

sets.RDM['Magic']['EnfeeblingDuration'] = gFunc.Combine(sets.AllJobs['Midcast']['EnfeeblingDuration'], {
})

sets.RDM['Magic']['EnhancingPotency'] = gFunc.Combine(sets.RDM['Magic']['Enhancing Magic'],{
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

sets.RDM['Magic']['Enfeebling Magic'] = gFunc.Combine(sets.RDM['Magic']['EnfeeblingDuration'],{
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
sets.RDM['Magic']['Elemental Magic'] = gFunc.Combine(sets.RDM['MAB'], {})
sets.RDM['Magic']['Dark Magic'] = gFunc.Combine(sets.RDM['MAB'],{})

sets.RDM['Magic']['Dispel'] = gFunc.Combine(sets.RDM['Magic']['Enfeebling Magic'], {
    Neck="Dls. Torque +1"
})

sets.RDM['Magic']['Drain'] = gFunc.Combine(sets.AllJobs['Midcast']['DrainAspir'],{
    Head={Name="Appetence Crown", Augment=DRAINASPIR40},
    Waist={Name="Fucho-no-Obi",Augment=DRAINASPIR40},
    Feet={Name="Merlinic Crackows",Augment=DRAINASPIR40},
})
sets.RDM['Magic']['Drain II'] = gFunc.Combine(sets.RDM['Magic']['Drain'],{})
sets.RDM['Magic']['Aspir'] = gFunc.Combine(sets.RDM['Magic']['Drain'],{})
sets.RDM['Magic']['Aspir II'] = gFunc.Combine(sets.RDM['Magic']['Drain'],{})

sets.RDM['Magic']['Impact'] = {
    Body = "Twilight Cloak"
}

sets.RDM['Magic']['Helixes'] = gFunc.Combine(sets.RDM['Magic']['Elemental Magic'], {})
sets.RDM['Magic']['Helixes']['Light Arts'] = gFunc.Combine(sets.RDM['Magic']['Helixes'], {})
sets.RDM['Magic']['Helixes']['Dark Arts'] = gFunc.Combine(sets.RDM['Magic']['Helixes'], {})

sets.RDM['Magic']['Gains'] = gFunc.Combine(sets.RDM['Magic']['EnhancingPotency'], {
    Hands=RELIC_HANDS,
    Neck="Dls. Torque +1",
})
sets.RDM['Magic']['Gain-STR'] = gFunc.Combine(sets.RDM['Magic']['Gains'],{})
sets.RDM['Magic']['Gain-MND'] = gFunc.Combine(sets.RDM['Magic']['Gains'],{})
sets.RDM['Magic']['Gain-INT'] = gFunc.Combine(sets.RDM['Magic']['Gains'],{})
sets.RDM['Magic']['Gain-DEX'] = gFunc.Combine(sets.RDM['Magic']['Gains'],{})
sets.RDM['Magic']['Gain-AGI'] = gFunc.Combine(sets.RDM['Magic']['Gains'],{})
sets.RDM['Magic']['Gain-VIT'] = gFunc.Combine(sets.RDM['Magic']['Gains'],{})
sets.RDM['Magic']['Gain-CHR'] = gFunc.Combine(sets.RDM['Magic']['Gains'],{})
sets.RDM['Magic']['Temper'] = gFunc.Combine(sets.RDM['Magic']['EnhancingPotency'], {})
sets.RDM['Misc'] = {}
sets.RDM['Misc']['Max HP'] = {
    Main={Name="Sagasinger", Augment=HP},
    Sub={Name="Bloodbead Ecu", Augment=HP},
    Head={Name="Volte Tiara", Augment=HP},
    Neck={Name="Lavalier +1", Augment=HP}, --55HP
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

sets.RDM['Magic']['Dread Spikes'] = gFunc.Combine(sets.RDM['Misc']['Max HP'],{})
sets.RDM['DayWeatherBonus'] = {
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
    Feet="Jhakri Pigaches +2",
    Ammo="Floestone",
    Neck={Name="Clotharius Torque",Augment=TA12},
    Ear1="Regal Earring",
    Ear2="Mache Earring +1",
    Back={Name="Laic Mantle",Augment=SAVETP200}
}) 
sets.WeaponSkills['Knights of Round'] = {}

sets['Unknown'] = {}
sets['Dead'] = {}