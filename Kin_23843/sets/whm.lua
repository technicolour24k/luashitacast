AF_HEAD = "Theo. Cap +1"
AF_BODY = "Theo. Bliaut +1"
AF_HANDS = "Theo. Mitts +1"
AF_LEGS = "Theo. Pant. +1"
AF_FEET = "Theo. Duckbills +1"
RELIC_HEAD = "Piety Cap +1"
RELIC_BODY = "Piety Bliaut +1"
RELIC_HANDS = "Piety Mitts +1"
RELIC_LEGS = "Piety Pant. +1"
RELIC_FEET = "Piety Duckbills +1"
EMPYREAN_HEAD = { Name="Eber's Cap +1" }
EMPYREAN_BODY = "Eber's Bliaut +1"
EMPYREAN_HANDS = "Eber's Mitts +1"
EMPYREAN_LEGS = "Eber's Pant. +1"
EMPYREAN_FEET = "Eber's Duckbills +1"

sets.default={}
sets.WHM={}
--------------------------------------
--      BEGIN ENGAGED GEARSETS      --
--------------------------------------
sets['Engaged'] = gFunc.Combine(sets.AllJobs['TP'],{

})
-- Weapon options
sets['Engaged']['Club'] ={
    Main = { Name = 'Eosuchus Club' },
    Sub = { Name = 'Genbu\'s Shield' },
}
sets['Engaged']['DualWield'] = {
    Main = { Name = 'Eosuchus Club' },
    Sub = { Name = 'Gambanteinn'}
}
sets['Engaged']['Staff'] = {
    Main = { Name = 'Eminent Staff' },
}
sets['Engaged']['Healer'] = {
    Main = { Name = 'Earth Staff' },
}


-- Every day killing things
sets['Engaged']['Balanced'] = gFunc.Combine(sets['Engaged'], {

})

-- Every day attacky things!
sets['Engaged']['Aggressive'] = gFunc.Combine(sets['Engaged'], {
})

-- Every day defensive things
sets['Engaged']['Defensive'] = gFunc.Combine(sets['Engaged']['Balanced'], {

})


--------------------------------------
--          BEGIN IDLE GEARSETS     --
--------------------------------------
sets['Idle']  = gFunc.Combine(sets.AllJobs['DT'], {
    Head=RELIC_HEAD,
	Body=AF_BODY,
    Feet="Iaso Boots",
    Ear2 = "Moonshade Earring"
})
sets['Idle']['Balanced'] = gFunc.Combine(sets.Idle, {})
sets['Idle']['Defensive'] = gFunc.Combine(sets.Idle['Balanced'], {})

sets.default['Resting']={}
sets.default['Zoning']={}
sets.default['Dead']={}
sets.default['Unknown']={}

sets.WHM['MAB'] = gFunc.Combine(sets.AllJobs['MAB'], {
    Head=EMPYREAN_HEAD,
    Body="Gyve Doublet",
    Hands="Jhakri Cuffs +2",
    Legs="Gyve Trousers",
    Feet=RELIC_FEET,
})

sets.WHM['Magic'] = {}
sets.WHM['Magic']['Cure'] =  gFunc.Combine(sets.AllJobs['Midcast']['Cure'], {

})

sets.WHM['Magic']['BLU_Physical'] = {}
sets.WHM['Magic']['BLU_Buffs'] = {}
sets.WHM['Magic']['BLU_Nukes'] = gFunc.Combine(sets.WHM['MAB'], {})
sets.WHM['Magic']['EnhancingDuration'] = gFunc.Combine(sets.AllJobs['Midcast']['EnhancingDuration'], {
    Hands=AF_HANDS,
    Feet=EMPYREAN_FEET
})

sets.WHM['Magic']['EnfeeblingDuration'] = gFunc.Combine(sets.AllJobs['Midcast']['EnfeeblingDuration'], {
})

sets.WHM['Magic']['Enhancing Magic'] = gFunc.Combine(sets.WHM['Magic']['EnhancingDuration'],{
    -- Body=RELIC_BODY,
    -- Legs=AF_LEGS,
    Feet=AF_FEET,
    -- Ear1="Andoaa Earring",
    -- Ring1={ name="Stikini Ring +1", augments={'"Refresh"+20','"Refresh"+20','"Refresh"+20','"Refresh"+20',}},

})
sets.WHM['Magic']['Enfeebling Magic'] = gFunc.Combine(sets.WHM['Magic']['EnfeeblingDuration'],{
    Ammo = { Name = 'Erlene\'s Notebook'},
    Head=AF_HEAD,
    Body=EMPYREAN_BODY,
    Hands=EMPYREAN_HANDS,
    Legs=AF_LEGS,
    Feet=RELIC_FEET,
    Neck = { Name = 'Stoicheion Medal'},
    Ear1="Regal Earring",
    Ear2={ Name="Moonshade Earring", Augment={'"Refresh"+10','"Fast Cast"+5','"Regen"+10','"Store TP"+5',}},
    Back = { Name = 'Izdubar Mantle'},

})
sets.WHM['Magic']['Elemental Magic'] = gFunc.Combine(sets.WHM['MAB'], {})
sets.WHM['Magic']['Dark Magic'] = {}

sets.WHM['Magic']['Helixes'] = gFunc.Combine(sets.WHM['Magic']['Elemental Magic'], {})
sets.WHM['Magic']['Helixes']['Light Arts'] = gFunc.Combine(sets.WHM['Magic']['Helixes'], {})
sets.WHM['Magic']['Helixes']['Dark Arts'] = gFunc.Combine(sets.WHM['Magic']['Helixes'], {})

sets.WHM['Magic']['StatusNA'] = {
    Main="Yagrush"
}

--------------------------------------
--           BEGIN JA GEARSETS      --
--------------------------------------
sets.JobAbility={}
sets.JobAbility["Benediction"] = {}
sets.JobAbility["Divine Seal"] = {}
sets.JobAbility['Martyr']= {}
sets.JobAbility['Devotion']= {}
sets.JobAbility['Divine Caress']= {}
sets.JobAbility["Spontaneity"] = {}
sets.JobAbility['Sacrosanctity']= {}
sets.JobAbility['Asylum'] = {}

--------------------------------------
--           BEGIN WS GEARSETS      --
--------------------------------------
sets.WeaponSkills["True Strike"] = gFunc.Combine(sets.AllJobs['WeaponSkills']['WSD'], {}) --"Acc varies by TP". Needs a lot of Acc boost
sets.WeaponSkills["Skullbreaker"] = gFunc.Combine(sets.AllJobs['WeaponSkills']['WSD'], {})
sets.WeaponSkills["Judgment"] = gFunc.Combine(sets.AllJobs['WeaponSkills']['WSD'], {})
sets.WeaponSkills["Black Halo"] = gFunc.Combine(sets.AllJobs['WeaponSkills']['WSD'], {
    Neck = {Name="Tlamiztli Collar",Augment = TA12},
    Waist = {Name="Windbuffet Belt +1",Augment = TA12 },
    Back = {Name="Buquwik Cape"},
})
sets.WeaponSkills["Mystic Boon"] = gFunc.Combine(sets.AllJobs['WeaponSkills']['WSD'], {})
sets.WeaponSkills["Exudation"] = gFunc.Combine(sets.AllJobs['WeaponSkills']['WSD'], {})
sets.WeaponSkills["Randgrith"] = gFunc.Combine(sets.AllJobs['WeaponSkills']['WSD'], {})
sets.WeaponSkills["Dagan"] = gFunc.Combine(sets.AllJobs['WeaponSkills']['WSD'], {}) --HP/MP only effects, no standard mods needed.

--FTP Replicating WS
sets.WeaponSkills['Hexa Strike'] = gFunc.Combine(sets.AllJobs['WeaponSkills']['Fotia'], {})
sets.WeaponSkills['Realmrazer'] = gFunc.Combine(sets.AllJobs['WeaponSkills']['Fotia'], {}) -- Acc heavy WS "varies by TP".

-- MAB modded WS
sets.WeaponSkills["Flash Nova"] = gFunc.Combine(sets.WHM['MAB'],{})