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
sets.PLD={}
sets.Idle = {}
sets.Engaged = {}
--------------------------------------
--      BEGIN ENGAGED GEARSETS      --
--------------------------------------
sets['Engaged'] = gFunc.Combine(sets.AllJobs['TP'],{})
-- Weapon options
sets['Engaged']['Sword'] = gFunc.Combine(sets['Engaged'], {
    Main = { Name = 'Almace' },
    Sub = { Name = 'Adamas' },
})
sets['Engaged']['DualWield'] = gFunc.Combine(sets['Engaged'], {
    Main = { Name = 'Almace' },
    Sub = { Name = 'Fettering Blade'}
})
sets['Engaged']['MDT'] = gFunc.Combine(sets['Engaged'], {
    Main = { Name = 'Almace' },
    Sub = { Name = 'Aegis' },
})
sets['Engaged']['PDT'] = gFunc.Combine(sets['Engaged'], {
    Main = { Name = 'Almace' },
    Sub = { Name = 'Adamas'}
})
sets['Engaged']['Staff'] = gFunc.Combine(sets['Engaged'], {
    Main = { Name="Earth Staff" },
    Sub = { Name="Mephitis Grip" },
})


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
-- Move speed forms our base, along with any all jobs DT- we have
sets.Idle = gFunc.Combine(sets.AllJobs['DT'], {
	Legs="Crimson Cuisses",
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

sets['Resting']={}

sets.PLD['MAB'] = gFunc.Combine(sets.AllJobs['MAB'], {
    -- Head={Name='',Augment=''},
    Ear1={Name='Hecate\'s Earring',Augment=MAB32},
    Ear2={Name='Novio Earring',Augment=MAB40},
    -- Body={Name='',Augment=''},
    -- Hands={Name='',Augment=''},
    Ring1={Name='Acumen Ring',Augment=MAB32},
    -- Ring2={Name='',Augment=''},
    -- Legs={Name='Augury Cuisses +1',Augment=''},
    -- Feet={Name='',Augment=''}
})

sets.PLD['MAB']['Fire'] = gFunc.Combine(sets.PLD['MAB'],{
    Main="Melisseus Staff", 
    Sub="Elan Strap"
})
sets.PLD['MAB']['Wind'] = gFunc.Combine(sets.PLD['MAB'],{
    Main="Melisseus Staff", 
    Sub="Elan Strap",
    Back="Kaikias' Cape"
})
sets.PLD['MAB']['Water'] = gFunc.Combine(sets.PLD['MAB'],{})
sets.PLD['MAB']['Earth'] = gFunc.Combine(sets.PLD['MAB'],{
    Neck="Quanpur Necklace"
})
sets.PLD['MAB']['Thunder'] = gFunc.Combine(sets.PLD['MAB'],{})
sets.PLD['MAB']['Ice'] = gFunc.Combine(sets.PLD['MAB'],{
    Main="Ngqoqwanb",
    Sub="Elan Strap"
})
sets.PLD['MAB']['Light'] = gFunc.Combine(sets.PLD['MAB'],{})
sets.PLD['MAB']['Dark'] = gFunc.Combine(sets.PLD['MAB'],{})

sets.PLD['MCrit'] = gFunc.Combine(sets.PLD['MAB'], {    
    Ear2 = {Name="Choleric Earring",}, -- 10% MCrit rate
    Ring1 = {Name="Resonance Ring",Augment=MCRIT40}, --5% MCrit rate +40% aug 
    Ring2 = {Name="Locus Ring",Augment=MCRIT40}, --5% MCrit rate +40% aug
})

sets.PLD['MBurst'] = gFunc.Combine(sets.PLD['MCrit'],{
    Neck="Mizu. Kubikazari",
})

sets.PLD['Magic'] = {}
sets.PLD['Magic']['Cure'] = gFunc.Combine(sets.AllJobs['Midcast']['Cure'],{})
sets.PLD['Magic']['Cure II'] = gFunc.Combine(sets.PLD['Magic']['Cure'],{})
sets.PLD['Magic']['Cure III'] = gFunc.Combine(sets.PLD['Magic']['Cure'],{})
sets.PLD['Magic']['Cure IV'] = gFunc.Combine(sets.PLD['Magic']['Cure'],{})
sets.PLD['Magic']['White Wind'] = gFunc.Combine(sets.PLD['Magic']['Cure'], {})
sets.PLD['Magic']['Restoral'] = gFunc.Combine(sets.PLD['Magic']['Cure'], {})
sets.PLD['Magic']['Plenilune Embrace'] = gFunc.Combine(sets.PLD['Magic']['Cure'], {})
sets.PLD['Magic']['Exuviation'] = gFunc.Combine(sets.PLD['Magic']['Cure'], {})
sets.PLD['Magic']['Magic Fruit'] = gFunc.Combine(sets.PLD['Magic']['Cure'], {})
sets.PLD['Magic']['Pollen'] = gFunc.Combine(sets.PLD['Magic']['Cure'], {})

sets.PLD['Magic']['BLU_Physical'] = {}
sets.PLD['Magic']['BLU_Buffs'] = {}
sets.PLD['Magic']['BLU_Nukes'] = gFunc.Combine(sets.PLD['MAB'], {})
sets.PLD['Magic']['EnhancingDuration'] = gFunc.Combine(sets.AllJobs['Midcast']['Enhancing Magic'], {})
sets.PLD['Magic']['EnfeeblingDuration'] = gFunc.Combine(sets.AllJobs['Midcast']['EnfeeblingDuration'], {})

sets.PLD['Magic']['Enhancing Magic'] = gFunc.Combine(sets.PLD['Magic']['EnhancingDuration'],{
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

sets.PLD['Magic']['Enfeebling Magic'] = gFunc.Combine(sets.PLD['Magic']['EnfeeblingDuration'],{
    Ammo={ Name="Quartz Tathlum", Augment=ENFEEBLE20}, --Enfeebling skill+
    Ring1={Name="Stikini Ring +1",Augment=ENFEEBLE20},
    Ring2={Name="Stikini Ring +1",Augment=ENFEEBLE20},
})
sets.PLD['Magic']['Elemental Magic'] = gFunc.Combine(sets.PLD['MAB'], {})
sets.PLD['Magic']['Divine Magic'] = gFunc.Combine(sets.PLD['MAB'], {})
sets.PLD['Magic']['Dark Magic'] = gFunc.Combine(sets.PLD['MAB'],{})

sets.PLD['Magic']['Dispel'] = gFunc.Combine(sets.PLD['Magic']['Enfeebling Magic'], {})

sets.PLD['Magic']['Drain'] = gFunc.Combine(sets.AllJobs['Midcast']['DrainAspir'],{})
sets.PLD['Magic']['Drain II'] = gFunc.Combine(sets.PLD['Magic']['Drain'],{})
sets.PLD['Magic']['Aspir'] = gFunc.Combine(sets.PLD['Magic']['Drain'],{})
sets.PLD['Magic']['Aspir II'] = gFunc.Combine(sets.PLD['Magic']['Drain'],{})

sets.PLD['Magic']['Impact'] = {
    Body = "Twilight Cloak"
}

sets.PLD['Magic']['Helixes'] = gFunc.Combine(sets.PLD['Magic']['Elemental Magic'], {})
sets.PLD['Magic']['Helixes']['Light Arts'] = gFunc.Combine(sets.PLD['Magic']['Helixes'], {})
sets.PLD['Magic']['Helixes']['Dark Arts'] = gFunc.Combine(sets.PLD['Magic']['Helixes'], {})

sets.PLD['Magic']['Gains'] = gFunc.Combine(sets.PLD['Magic']['Enhancing Magic'], {})
sets.PLD['Magic']['Gain-STR'] = gFunc.Combine(sets.PLD['Magic']['Gains'],{})
sets.PLD['Magic']['Gain-MND'] = gFunc.Combine(sets.PLD['Magic']['Gains'],{})
sets.PLD['Magic']['Gain-INT'] = gFunc.Combine(sets.PLD['Magic']['Gains'],{})
sets.PLD['Magic']['Gain-DEX'] = gFunc.Combine(sets.PLD['Magic']['Gains'],{})
sets.PLD['Magic']['Gain-AGI'] = gFunc.Combine(sets.PLD['Magic']['Gains'],{})
sets.PLD['Magic']['Gain-VIT'] = gFunc.Combine(sets.PLD['Magic']['Gains'],{})
sets.PLD['Magic']['Gain-CHR'] = gFunc.Combine(sets.PLD['Magic']['Gains'],{})

sets.PLD['Misc'] = {}
sets.PLD['Misc']['Max HP'] = {
    Ammo={Name="Egoist's Tathlum", Augment=HP},
    Head={Name="Ares' Mask +1",},
    Neck={Name="Lavalier +1", Augment=HP}, --55HP
    Ear1={Name="Upsurge Earring", Augment=HP}, --55 MP > HP
    Ear2={Name="Cryptic Earring", Augment=HP},
    Hands={Name="Boor Bracelets", Augment=HP}, --70HP
    Ring1={Name="Bomb Queen Ring", Augment=HP}, --75HP
    Ring2={Name="Meridian Ring", Augment=HP}, --90HP
    Back={Name="Moonbeam Cape", Augment=HP},
    Waist={Name="Gold Mog. Belt", Augment=HP},
    Body={Name="Ares' Cuirass +1", Augment=HP},
    Legs={Name="Ares' Flanchard +1", Augment=HP},
    Feet={Name="Llwyd's Clogs", Augment=HP}

}

sets.PLD['Afflatus Cure'] = gFunc.Combine(sets.PLD['Misc']['Max HP'], sets.PLD['Magic']['Cure'])
sets.PLD['Magic']['Dread Spikes'] = gFunc.Combine(sets.PLD['Misc']['Max HP'],{})
sets.PLD['DayWeatherBonus'] = {
    Back="Twilight Cape",
    Waist="Hachirin-no-Obi"
}
--------------------------------------
--           BEGIN JA GEARSETS      --
--------------------------------------
sets.JobAbility["Invincible"] = {}
sets.JobAbility["Provoke"] = {}
sets.JobAbility['Focus']= {}
sets.JobAbility["Shield Bash"] = {}
sets.JobAbility['Holy Circle']= {}
sets.JobAbility['Sentinel'] = {}
sets.JobAbility['Rampart'] = {}
sets.JobAbility['Fealty'] = {}
sets.JobAbility['Chivalry'] = {}
sets.JobAbility['Divine Emblem'] = {}
sets.JobAbility['Sepulcher'] = {}
sets.JobAbility['Palisade'] = {}
sets.JobAbility['Intervene'] = {}
sets.JobAbility['Majesty'] = {}
sets.JobAbility['Spontaneity'] = {}



--------------------------------------
--           BEGIN WS GEARSETS      --
--------------------------------------
sets.WeaponSkills["Evisceration"] = gFunc.Combine(sets.AllJobs['WeaponSkills']['WSD'], {})
sets.WeaponSkills["Mercy Stroke"] = gFunc.Combine(sets.AllJobs['WeaponSkills']['WSD'], {})
sets.WeaponSkills["Aeolian Edge"] = gFunc.Combine(sets.PLD['MAB'],{})
sets.WeaponSkills["Exenterator"] = gFunc.Combine(sets.AllJobs['WeaponSkills']['WSD'], {})

--FTP Replicating WS
sets.WeaponSkills['Requiescat'] = gFunc.Combine(sets.AllJobs['WeaponSkills']['Fotia'], {})
sets.WeaponSkills['Chant du Cygne'] = gFunc.Combine(sets.AllJobs['WeaponSkills']['Fotia'], {})
sets.WeaponSkills['Swift Blade'] = gFunc.Combine(sets.AllJobs['WeaponSkills']['Fotia'], {})
sets.WeaponSkills['Vorpal Blade'] = gFunc.Combine(sets.AllJobs['WeaponSkills']['Fotia'], {})
-- MAB modded WS
sets.WeaponSkills['Sanguine Blade'] = gFunc.Combine(sets.PLD['MAB'], {
    Head="Pixie Hairpin +1"
})
sets.WeaponSkills['Uriel Blade'] = gFunc.Combine(sets.PLD['MAB'], {})
sets.WeaponSkills['Red Lotus Blade'] = gFunc.Combine(sets.PLD['MAB'], {})
sets.WeaponSkills['Burning Blade'] = gFunc.Combine(sets.PLD['MAB'], {})
sets.WeaponSkills['Shining Blade'] = gFunc.Combine(sets.PLD['MAB'], {})
sets.WeaponSkills['Seraph Blade'] = gFunc.Combine(sets.PLD['MAB'], {})
sets.WeaponSkills['Tartarus Torpor'] = gFunc.Combine(sets.PLD['MAB'], {
    Head="Pixie Hairpin +1"
})
sets.WeaponSkills['Earth Crusher'] = gFunc.Combine(sets.PLD['MAB'], {})
sets.WeaponSkills['Omniscience'] = gFunc.Combine(sets.PLD['MAB'], {})
sets.WeaponSkills['Rock Crusher'] = gFunc.Combine(sets.PLD['MAB'], {})
sets.WeaponSkills['Starburst'] = gFunc.Combine(sets.PLD['MAB'], {})
sets.WeaponSkills['Sunburst'] = gFunc.Combine(sets.PLD['MAB'], {})
sets.WeaponSkills['Seraph Blade'] = gFunc.Combine(sets.PLD['MAB'], {})
sets.WeaponSkills['Shining Strike'] = gFunc.Combine(sets.PLD['MAB'], {})
sets.WeaponSkills['Red Lotus Blade'] = gFunc.Combine(sets.PLD['MAB'], {})
sets.WeaponSkills['Burning Blade'] = gFunc.Combine(sets.PLD['MAB'], {})
sets.WeaponSkills['Flash Nova'] = gFunc.Combine(sets.PLD['MAB'], {})
sets.WeaponSkills['Shining Blade'] = gFunc.Combine(sets.PLD['MAB'], {})
sets.WeaponSkills['Seraph Strike'] = gFunc.Combine(sets.PLD['MAB'], {})
sets.WeaponSkills['Spirits Within'] = gFunc.Combine(sets.PLD['MAB'], {})

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