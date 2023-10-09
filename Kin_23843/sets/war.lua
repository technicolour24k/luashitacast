AF_HEAD = ""
AF_BODY = ""
AF_HANDS = ""
AF_LEGS = ""
AF_FEET = ""
RELIC_HEAD = ""
RELIC_BODY = ""
RELIC_HANDS = {}
RELIC_LEGS = {}
RELIC_FEET = {}
EMPYREAN_HEAD = ""
EMPYREAN_BODY = ""
EMPYREAN_HANDS = ""
EMPYREAN_LEGS = ""
EMPYREAN_FEET = ""



sets.default={}
sets.WAR={}
--------------------------------------
--      BEGIN ENGAGED GEARSETS      --
--------------------------------------
sets['Engaged'] = gFunc.Combine(sets.AllJobs['TP'],{})
-- Weapon options
sets['Engaged']['GAxe'] ={
    Main = { Name = 'Conqueror' },
    Sub = { Name = 'Utu Grip' },
}
sets['Engaged']['GSword'] = {
    Main = { Name = 'Ragnarok' },
    Sub = { Name = 'Utu Grip'}
}
sets['Engaged']['Sword'] = {
    Main = { Name = 'Sangarius +1' },
    Sub = { Name = 'Steadfast Shield' },
}

-- Every day killing things
sets['Engaged']['Balanced'] = gFunc.Combine(sets['Engaged'], {
    Waist={ Name="Windbuffet Belt +1", Augment = '"Triple Atk."+8' },
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
	Feet="Hermes' Sandals"
})
-- More defensive Idle things? Try to max DT over Regen/Refresh
-- sets['Idle']['Defensive'] = gFunc.Combine(sets['Idle'], {
--     Ear2="Etiolation Earring", --3% MDT (19% total + Shell5 @29% MDT > 48% total)
-- })

sets.default['Resting']={}

sets.WAR['Occult Acumen'] = {}

sets.WAR['MAB'] = gFunc.Combine(sets.WAR['Occult Acumen'], {})

sets.WAR['Magic'] = {}
sets.WAR['Magic']['Cure'] = {}
sets.WAR['Magic']['White Wind'] = gFunc.Combine(sets.WAR['Magic']['Cure'], {})
sets.WAR['Magic']['Restoral'] = gFunc.Combine(sets.WAR['Magic']['Cure'], {})
sets.WAR['Magic']['Plenilune Embrace'] = gFunc.Combine(sets.WAR['Magic']['Cure'], {})
sets.WAR['Magic']['Exuviation'] = gFunc.Combine(sets.WAR['Magic']['Cure'], {})
sets.WAR['Magic']['Magic Fruit'] = gFunc.Combine(sets.WAR['Magic']['Cure'], {})
sets.WAR['Magic']['Pollen'] = gFunc.Combine(sets.WAR['Magic']['Cure'], {})

sets.WAR['Magic']['BLU_Physical'] = {}
sets.WAR['Magic']['BLU_Buffs'] = {}
sets.WAR['Magic']['BLU_Nukes'] = gFunc.Combine(sets.WAR['MAB'], {})
sets.WAR['Magic']['EnhancingDuration'] = gFunc.Combine(sets.AllJobs['Midcast']['Enhancing Magic'], {})

sets.WAR['Magic']['EnfeeblingDuration'] = gFunc.Combine(sets.AllJobs['Midcast']['EnfeeblingDuration'], {
})

sets.WAR['Magic']['Enhancing Magic'] = gFunc.Combine(sets.WAR['Magic']['EnhancingDuration'],{
    Head="Umuthi Hat", --Not yet available, TODO: Grab it when it is.
    Neck= {Name="Enhancing Torque", Augment=ENHANCE16},
    Ear1={Name="Andoaa Earring",Augment=ENHANCE16},
    Ring1={Name="Stikini Ring +1",Augment=ENHANCE16},
    Ring2="Stikini Ring +1",
    Back={Name="Estoqueur's cape", Augment=ENHANCE16},
})

sets.WAR['Magic']['Enfeebling Magic'] = gFunc.Combine(sets.WAR['Magic']['EnfeeblingDuration'],{
    Ammo={ Name="Quartz Tathlum", Augment=ENFEEBLE16}, --Enfeebling skill+
    Ring1={Name = "Stikini Ring +1"},
    Ring2={Name = "Stikini Ring +1"},
})
sets.WAR['Magic']['Absorb'] = {}
sets.WAR['Magic']['Absorb-STR'] = gFunc.Combine(sets.WAR['Magic']['Absorb'], {})
sets.WAR['Magic']['Absorb-DEX'] = gFunc.Combine(sets.WAR['Magic']['Absorb'], {})
sets.WAR['Magic']['Absorb-VIT'] = gFunc.Combine(sets.WAR['Magic']['Absorb'], {})
sets.WAR['Magic']['Absorb-AGI'] = gFunc.Combine(sets.WAR['Magic']['Absorb'], {})
sets.WAR['Magic']['Absorb-INT'] = gFunc.Combine(sets.WAR['Magic']['Absorb'], {})
sets.WAR['Magic']['Absorb-MND'] = gFunc.Combine(sets.WAR['Magic']['Absorb'], {})
sets.WAR['Magic']['Absorb-CHR'] = gFunc.Combine(sets.WAR['Magic']['Absorb'], {})
sets.WAR['Magic']['Absorb-TP'] = gFunc.Combine(sets.WAR['Magic']['Absorb'], {})

sets.WAR['Magic']['Elemental Magic'] = gFunc.Combine(sets.WAR['MAB'], {})
sets.WAR['Magic']['Dark Magic'] = gFunc.Combine(sets.WAR['MAB'],{})

sets.WAR['Magic']['Dispel'] = gFunc.Combine(sets.WAR['Magic']['Enfeebling Magic'], {})

sets.WAR['Magic']['Drain'] = gFunc.Combine(sets.WAR['Magic']['Dark Magic'],{
    Ring1 = { Name = 'Scintillant Ring', Augment = { [1] = 'Magic Damage +7', [2] = 'Mag. Acc+7', [3] = '"Drain" and "Aspir" potency +3', [4] = 'Enfb.mag. skill +3' } },
    Ring2 = { Name = 'Scintillant Ring', Augment = { [1] = 'Magic Damage +2', [2] = 'Mag. Acc+2', [3] = '"Drain" and "Aspir" potency +2', [4] = 'Enfb.mag. skill +7' } },
})
sets.WAR['Magic']['Drain II'] = gFunc.Combine(sets.WAR['Magic']['Drain'],{})
sets.WAR['Magic']['Aspir'] = gFunc.Combine(sets.WAR['Magic']['Drain'],{})
sets.WAR['Magic']['Aspir II'] = gFunc.Combine(sets.WAR['Magic']['Drain'],{})

sets.WAR['Magic']['Dread Spikes'] = {}


sets.WAR['Magic']['Helixes'] = gFunc.Combine(sets.WAR['Magic']['Elemental Magic'], {})
sets.WAR['Magic']['Helixes']['Light Arts'] = gFunc.Combine(sets.WAR['Magic']['Helixes'], {})
sets.WAR['Magic']['Helixes']['Dark Arts'] = gFunc.Combine(sets.WAR['Magic']['Helixes'], {})

sets.WAR['Magic']['Gains'] = gFunc.Combine(sets.WAR['Magic']['Enhancing Magic'], {})
sets.WAR['Magic']['Gain-STR'] = gFunc.Combine(sets.WAR['Magic']['Gains'],{})
sets.WAR['Magic']['Gain-MND'] = gFunc.Combine(sets.WAR['Magic']['Gains'],{})
sets.WAR['Magic']['Gain-INT'] = gFunc.Combine(sets.WAR['Magic']['Gains'],{})
sets.WAR['Magic']['Gain-DEX'] = gFunc.Combine(sets.WAR['Magic']['Gains'],{})
sets.WAR['Magic']['Gain-AGI'] = gFunc.Combine(sets.WAR['Magic']['Gains'],{})
sets.WAR['Magic']['Gain-VIT'] = gFunc.Combine(sets.WAR['Magic']['Gains'],{})
sets.WAR['Magic']['Gain-CHR'] = gFunc.Combine(sets.WAR['Magic']['Gains'],{})

sets.WAR['Misc'] = {}
sets.WAR['Misc']['Max HP'] = {}

sets.WAR['Magic']['Dread Spikes'] = gFunc.Combine(sets.WAR['Misc']['Max HP'],{})
sets.WAR['DayWeatherBonus'] = {}
--------------------------------------
--           BEGIN JA GEARSETS      --
--------------------------------------
sets.JobAbility["Mighty Strikes"] = {}
sets.JobAbility["Berserk"] = {}
sets.JobAbility["Warcry"] = {}
sets.JobAbility['Defender'] = {}
sets.JobAbility['Aggressor'] = {}
sets.JobAbility['Provoke'] = {}
sets.JobAbility['Warrior\'s Charge'] = {}
sets.JobAbility['Tomahawk'] = {}
sets.JobAbility['Retaliation'] = {}
sets.JobAbility['Restraint'] = {}
sets.JobAbility['Blood Rage'] = {}
sets.JobAbility['Brazen Rush'] = {}

--------------------------------------
--           BEGIN WS GEARSETS      --
--------------------------------------
sets.WeaponSkills["Ukko's Fury"] = gFunc.Combine(sets.AllJobs['WeaponSkills']['WSD'], {})
sets.WeaponSkills["King's Justice"] = gFunc.Combine(sets.AllJobs['WeaponSkills']['WSD'], {})
sets.WeaponSkills["Metatron Torment"] = gFunc.Combine(sets.AllJobs['WeaponSkills']['WSD'],{})
sets.WeaponSkills["Upheaval"] = gFunc.Combine(sets.AllJobs['WeaponSkills']['WSD'], {})
sets.WeaponSkills["Fell Cleave"] = gFunc.Combine(sets.AllJobs['WeaponSkills']['WSD'], {})
sets.WeaponSkills["Steel Cyclone"] = gFunc.Combine(sets.AllJobs['WeaponSkills']['WSD'], {})
sets.WeaponSkills["Full Break"] = gFunc.Combine(sets.AllJobs['WeaponSkills']['WSD'], {})
sets.WeaponSkills['Savage Blade'] = gFunc.Combine(sets.AllJobs['WeaponSkills']['WSD'],{}) 

--FTP Replicating WS
sets.WeaponSkills['Entropy'] = gFunc.Combine(sets.AllJobs['WeaponSkills']['Fotia'], {})
sets.WeaponSkills['Chant du Cygne'] = gFunc.Combine(sets.AllJobs['WeaponSkills']['Fotia'], {})
sets.WeaponSkills['Swift Blade'] = gFunc.Combine(sets.AllJobs['WeaponSkills']['Fotia'], {})
sets.WeaponSkills['Vorpal Blade'] = gFunc.Combine(sets.AllJobs['WeaponSkills']['Fotia'], {})
sets.WeaponSkills['Requiescat'] = gFunc.Combine(sets.AllJobs['WeaponSkills']['Fotia'], {})
sets.WeaponSkills['Decimation'] = gFunc.Combine(sets.AllJobs['WeaponSkills']['Fotia'], {})
sets.WeaponSkills['Rampage'] = gFunc.Combine(sets.AllJobs['WeaponSkills']['Fotia'], {})
sets.WeaponSkills['Ruinator'] = gFunc.Combine(sets.AllJobs['WeaponSkills']['Fotia'], {})
sets.WeaponSkills['Resolution'] = gFunc.Combine(sets.AllJobs['WeaponSkills']['Fotia'], {})

-- MAB modded WS
sets.WeaponSkills['Sanguine Blade'] = gFunc.Combine(sets.WAR['MAB'], {})
sets.WeaponSkills['Uriel Blade'] = gFunc.Combine(sets.WAR['MAB'], {})
sets.WeaponSkills['Red Lotus Blade'] = gFunc.Combine(sets.WAR['MAB'], {})
sets.WeaponSkills['Burning Blade'] = gFunc.Combine(sets.WAR['MAB'], {})
sets.WeaponSkills['Shining Blade'] = gFunc.Combine(sets.WAR['MAB'], {})
sets.WeaponSkills['Seraph Blade'] = gFunc.Combine(sets.WAR['MAB'], {})
sets.WeaponSkills['Tartarus Torpor'] = gFunc.Combine(sets.WAR['MAB'], {})
sets.WeaponSkills['Earth Crusher'] = gFunc.Combine(sets.WAR['MAB'], {})
sets.WeaponSkills['Omniscience'] = gFunc.Combine(sets.WAR['MAB'], {})
sets.WeaponSkills['Rock Crusher'] = gFunc.Combine(sets.WAR['MAB'], {})
sets.WeaponSkills['Starburst'] = gFunc.Combine(sets.WAR['MAB'], {})
sets.WeaponSkills['Sunburst'] = gFunc.Combine(sets.WAR['MAB'], {})
sets.WeaponSkills['Seraph Blade'] = gFunc.Combine(sets.WAR['MAB'], {})
sets.WeaponSkills['Shining Strike'] = gFunc.Combine(sets.WAR['MAB'], {})
sets.WeaponSkills['Red Lotus Blade'] = gFunc.Combine(sets.WAR['MAB'], {})
sets.WeaponSkills['Sanguien Blade'] = gFunc.Combine(sets.WAR['MAB'], {})
sets.WeaponSkills['Burning Blade'] = gFunc.Combine(sets.WAR['MAB'], {})
sets.WeaponSkills['Flash Nova'] = gFunc.Combine(sets.WAR['MAB'], {})
sets.WeaponSkills['Shining Blade'] = gFunc.Combine(sets.WAR['MAB'], {})
sets.WeaponSkills['Seraph Strike'] = gFunc.Combine(sets.WAR['MAB'], {})
sets.WeaponSkills['Spirits Within'] = gFunc.Combine(sets.WAR['MAB'], {})

-- Standard mods

sets.default['Unknown'] = {}
sets.default['Dead'] = {}