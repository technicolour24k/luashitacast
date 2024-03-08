AF_HEAD = {Name="Hachi. Hatsu. +2"}
AF_BODY = {Name="Hachiya "}
AF_HANDS = {Name="Hachiya "}
AF_LEGS = {Name="Hachiya "}
AF_FEET = {Name="Hachiya Kyahan +2"}
RELIC_HEAD = {Name="Mochi. Hatsuburi +3"}
RELIC_BODY = {Name="Mochi. "}
RELIC_HANDS = {Name="Mochi. "}
RELIC_LEGS = {Name="Mochi. "}
RELIC_FEET = {Name="Mochi. "}
EMPYREAN_HEAD = {Name="Hattori Zukin +1"}
EMPYREAN_BODY = {Name="Hattori PUPgi +1"}
EMPYREAN_HANDS = {Name="Hattori Tekko +1"}
EMPYREAN_LEGS = {Name="Hattori "}
EMPYREAN_FEET = {Name="Hattori Kyahan +1"}

sets.default={}
sets.PUP={}
--------------------------------------
--      BEGIN ENGAGED GEARSETS      --
--------------------------------------
sets['Engaged'] = gFunc.Combine(sets.AllJobs['TP'],{})
-- Weapon options, unlikely to change for PUP
sets['Engaged']['Katana'] = {
    Main = "Tct.Mag. Hooks"
}

-- Every day killing things
sets['Engaged']['Balanced'] = gFunc.Combine(sets['Engaged'], {
    Range="Animator",
    Head="Emperor Hairpin",
    Neck="Peacock Charm",
    Ear1 = "Dodge Earring",
    Ear2 = "Dodge Earring",
    Body="Savage Separates",
    Hands="Savage Gauntlets",
    Ring1="Rajas Ring",
    Ring2="Ascetic's Ring",
    Back="Beater's Mantle",
    Waist="Lizard Belt",
    Legs="Savage Loincloth",
    Feet="Savage Gaiters",
})

-- Every day attacky things!
sets['Engaged']['Aggressive'] = gFunc.Combine(sets['Engaged'], {})

-- Every day defensive things
sets['Engaged']['Defensive'] = gFunc.Combine(sets['Engaged']['Balanced'], {})
sets['Engaged']['MEva'] = gFunc.Combine(sets['Engaged'], {})

-- Specific set for TH
sets['Engaged']['TH'] = gFunc.Combine(sets.AllJobs['TH'], {})

--------------------------------------
--          BEGIN IDLE GEARSETS     --
--------------------------------------
-- Every day idle things: Move speed, regen, refresh
sets['Idle'] = gFunc.Combine(sets.AllJobs['DT'], {
    Feet="Hermes' Sandals"
})

sets['Idle']['Balanced'] = gFunc.Combine(sets.Idle, {})
sets['Idle']['Defensive'] = gFunc.Combine(sets.Idle['Balanced'], {})

sets['Resting']={}

sets.PUP['MAB'] = gFunc.Combine(sets.AllJobs['MAB'], {})

sets.PUP['Nuke'] = gFunc.Combine(sets.PUP['MAB'],{})

sets.PUP['MaxHaste'] = {
    Head=EMPYREAN_HEAD, --10%
    Body="Volte Jupon", --5% 
    Hands=EMPYREAN_HANDS, -- 5%
    Legs = {Name="Hiza. Hizayoroi +2", Augment=TA12}, --9%
    Feet=EMPYREAN_FEET, --5%
    Waist="Hurch'lan Sash", -- 7%
    Ear1 = "Belatz Pearl", --1% 42% total
}

sets.PUP['Magic'] = {}
sets.PUP['Magic']['Cure'] = gFunc.Combine(sets.AllJobs['Midcast']['Cure'], {})
sets.PUP['Magic']['BLU_Physical'] = {}
sets.PUP['Magic']['BLU_Buffs'] = {}
sets.PUP['Magic']['BLU_Nukes'] = gFunc.Combine(sets.PUP['MAB'], {})
sets.PUP['Magic']['PUPjutsu'] = gFunc.Combine(sets.PUP['MAB'], {
    Head=RELIC_HEAD,
    Hands=EMPYREAN_HANDS
})
sets.PUP['Magic']['Enspells'] = gFunc.Combine(sets.AllJobs['Midcast']['Enspell'], {})
sets.PUP['Magic']['Utsusemi'] = gFunc.Combine(sets.PUP['MaxHaste'],{
    Feet=EMPYREAN_FEET
})
sets.PUP['Magic']['Utsusemi: Ichi'] = gFunc.Combine(sets.PUP['Magic']['Utsusemi'],{})
sets.PUP['Magic']['Utsusemi: Ni'] = gFunc.Combine(sets.PUP['Magic']['Utsusemi'],{})
sets.PUP['Magic']['Migawari: Ichi'] = {
    Body=EMPYREAN_BODY
}

sets.PUP['Nuke']['Fire'] = gFunc.Combine(sets.PUP['Nuke'],{})
sets.PUP['Nuke']['Wind'] = gFunc.Combine(sets.PUP['Nuke'],{})
sets.PUP['Nuke']['Water'] = gFunc.Combine(sets.PUP['Nuke'],{})
sets.PUP['Nuke']['Earth'] = gFunc.Combine(sets.PUP['Nuke'],{})
sets.PUP['Nuke']['Thunder'] = gFunc.Combine(sets.PUP['Nuke'],{})
sets.PUP['Nuke']['Ice'] = gFunc.Combine(sets.PUP['Nuke'],{})
sets.PUP['Nuke']['Light'] = gFunc.Combine(sets.PUP['Nuke'],{})
sets.PUP['Nuke']['Dark'] = gFunc.Combine(sets.PUP['Nuke'],{
    Head="Pixie Hairpin +1"
})

sets.PUP['MAB']['Fire'] = gFunc.Combine(sets.PUP['MAB'],{})
sets.PUP['MAB']['Wind'] = gFunc.Combine(sets.PUP['MAB'],{})
sets.PUP['MAB']['Water'] = gFunc.Combine(sets.PUP['MAB'],{})
sets.PUP['MAB']['Earth'] = gFunc.Combine(sets.PUP['MAB'],{})
sets.PUP['MAB']['Thunder'] = gFunc.Combine(sets.PUP['MAB'],{})
sets.PUP['MAB']['Ice'] = gFunc.Combine(sets.PUP['MAB'],{})
sets.PUP['MAB']['Light'] = gFunc.Combine(sets.PUP['MAB'],{})
sets.PUP['MAB']['Dark'] = gFunc.Combine(sets.PUP['MAB'],{
    Head="Pixie Hairpin +1"
})

sets.PUP['DayWeatherBonus'] = {}

--------------------------------------
--           BEGIN JA GEARSETS      --
--------------------------------------
sets.JobAbility["Mijin Gakure"] = gFunc.Combine(sets.AllJobs['JobAbility'],{
    Main="Nagi",
})
sets.JobAbility["Yonin"] = gFunc.Combine(sets.AllJobs['JobAbility'],{})
sets.JobAbility["Innin"] = gFunc.Combine(sets.AllJobs['JobAbility'],{})
sets.JobAbility['Futae'] = gFunc.Combine(sets.AllJobs['JobAbility'],{})
sets.JobAbility['Issekigan'] = gFunc.Combine(sets.AllJobs['JobAbility'],{})
sets.JobAbility['Mikage'] = gFunc.Combine(sets.AllJobs['JobAbility'],{})

--------------------------------------
--           BEGIN WS GEARSETS      --
--------------------------------------
sets['WeaponSkills']['Base'] = gFunc.Combine(sets.AllJobs['WeaponSkills']['WSD'], {
    Ammo = { Name = 'Fire Bomblet', Augment = { [1] = 'Weapon Skill Acc.+2', [2] = 'Weapon skill damage +5%', [3] = 'DMG:+2', [4] = 'Attack+7', [5] = 'Accuracy+7' } }, --5% WSD
    Legs = {Name="Hiza. Hizayoroi +2",Augment=TA12},
    Head=AF_HEAD,
    Ring1 = {Name="Epona's Ring",Augment=TA8},
    Ring2 = {Name="Regal Ring",Augment=TA8},
    Back = {Name="Laic Mantle",Augment=SAVETP200},
    Waist = {Name="Chaac Belt",Augment=SAVETP200}
})

sets['WeaponSkills']['Fotia'] = gFunc.Combine(sets['WeaponSkills']['Base'], {
    Neck = { Name = 'Fotia Gorget' },
    Waist = { Name = "Fotia Belt" }
})

sets['WeaponSkills']['Crit'] = gFunc.Combine(sets['WeaponSkills']['Base'], {
    Ammo={Name="Yetshila +1", Augments={[1]='"Triple Atk."+4', [2]="Critical Hit Rate +10"}}, --12% Crit Rate, 6% Damage
    -- Commenting out these two, because Hiza Legs are 7% All Hit WSD, and Head is 5%/10% (+2/+3) First hit WSD
    -- Head={Name="Mummu Bonnet +2",Augments={}}, -- 5% Crit Rate
    -- Legs={Name="Mummu Kecks +2", Augments={}}, -- 7% Crit Rate
    Feet={Name="Mummu Gamash. +2",Augments={}}, --5% Crit Rate
})
sets['WeaponSkills']["Blade: Hi"] = gFunc.Combine(sets['WeaponSkills']['Crit'], {})
sets['WeaponSkills']["Blade: Jin"] = gFunc.Combine(sets['WeaponSkills']['Crit'], {})
sets['WeaponSkills']["Blade: Rin"] = gFunc.Combine(sets['WeaponSkills']['Crit'], {})
sets['WeaponSkills']["Blade: Teki"] = gFunc.Combine(sets.PUP['MAB']['Water'], {})
sets['WeaponSkills']["Blade: Yu"] = gFunc.Combine(sets.PUP['MAB']['Water'], {})
sets['WeaponSkills']["Blade: To"] = gFunc.Combine(sets.PUP['MAB']['Ice'], {})
sets['WeaponSkills']["Blade: Chi"] = gFunc.Combine(sets.PUP['MAB']['Earth'], {})
sets['WeaponSkills']["Blade: Ei"] = gFunc.Combine(sets.PUP['MAB']['Dark'], {
    Neck = {Name="Deviant Necklace", Augment=MAB40},
    Ear1 = {Name="Novio Earring", Augment=MAB40},
    Ear2 = {Name="Hecate's Earring",Augment=MAB32},
    Ring1 = {Name="Epona's Ring",Augment=TA8},
    Ring2 = {Name="Regal Ring", Augment=TA8}
})
sets['WeaponSkills']["Blade: Retsu"] = gFunc.Combine(sets['WeaponSkills']['Base'], {})
sets['WeaponSkills']["Blade: Ten"] = gFunc.Combine(sets['WeaponSkills']['Base'], {})
sets['WeaponSkills']["Blade: Ku"] = gFunc.Combine(sets['WeaponSkills']['Fotia'], {})
sets['WeaponSkills']["Blade: Shun"] = gFunc.Combine(sets['WeaponSkills']['Fotia'], {})
sets['WeaponSkills']["Blade: Metsu"] = gFunc.Combine(sets['WeaponSkills']['Base'], {})
sets['WeaponSkills']["Blade: Kamu"] = gFunc.Combine(sets['WeaponSkills']['Base'], {})

sets['Unknown'] = {}
sets['Dead'] = {}

infoLog('sets/'..mjob..' loaded')
