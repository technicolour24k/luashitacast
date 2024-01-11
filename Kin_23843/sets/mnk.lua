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
EMPYREAN_BODY = {Name="Hattori MNKgi +1"}
EMPYREAN_HANDS = {Name="Hattori Tekko +1"}
EMPYREAN_LEGS = {Name="Hattori "}
EMPYREAN_FEET = {Name="Hattori Kyahan +1"}

sets.default={}
sets.MNK={}
--------------------------------------
--      BEGIN ENGAGED GEARSETS      --
--------------------------------------
sets['Engaged'] = gFunc.Combine(sets.AllJobs['TP'],{})
-- Weapon options, unlikely to change for MNK
sets['Engaged']['Katana'] = {
    Main = "Tct.Mag. Hooks"
}

-- Every day killing things
sets['Engaged']['Balanced'] = gFunc.Combine(sets['Engaged'], {
    Waist = { Name = 'Shetal Stone', Augment = { [1] = '"Dual Wield"+16', [2] = '"Store TP"+20', [3] = '"Subtle Blow"+20' } },
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
sets['Idle'] = gFunc.Combine(sets.AllJobs['DT'], {})

sets['Idle']['Balanced'] = gFunc.Combine(sets.Idle, {})
sets['Idle']['Defensive'] = gFunc.Combine(sets.Idle['Balanced'], {})

sets['Resting']={}

sets.MNK['MAB'] = gFunc.Combine(sets.AllJobs['MAB'], {})

sets.MNK['Nuke'] = gFunc.Combine(sets.MNK['MAB'],{})

sets.MNK['MaxHaste'] = {
    Head=EMPYREAN_HEAD, --10%
    Body="Volte Jupon", --5% 
    Hands=EMPYREAN_HANDS, -- 5%
    Legs = {Name="Hiza. Hizayoroi +2", Augment=TA12}, --9%
    Feet=EMPYREAN_FEET, --5%
    Waist="Hurch'lan Sash", -- 7%
    Ear1 = "Belatz Pearl", --1% 42% total
}

sets.MNK['Magic'] = {}
sets.MNK['Magic']['Cure'] = gFunc.Combine(sets.AllJobs['Midcast']['Cure'], {})
sets.MNK['Magic']['BLU_Physical'] = {}
sets.MNK['Magic']['BLU_Buffs'] = {}
sets.MNK['Magic']['BLU_Nukes'] = gFunc.Combine(sets.MNK['MAB'], {})
sets.MNK['Magic']['MNKjutsu'] = gFunc.Combine(sets.MNK['MAB'], {
    Head=RELIC_HEAD,
    Hands=EMPYREAN_HANDS
})
sets.MNK['Magic']['Enspells'] = gFunc.Combine(sets.AllJobs['Midcast']['Enspell'], {})
sets.MNK['Magic']['Utsusemi'] = gFunc.Combine(sets.MNK['MaxHaste'],{
    Feet=EMPYREAN_FEET
})
sets.MNK['Magic']['Utsusemi: Ichi'] = gFunc.Combine(sets.MNK['Magic']['Utsusemi'],{})
sets.MNK['Magic']['Utsusemi: Ni'] = gFunc.Combine(sets.MNK['Magic']['Utsusemi'],{})
sets.MNK['Magic']['Migawari: Ichi'] = {
    Body=EMPYREAN_BODY
}

sets.MNK['Nuke']['Fire'] = gFunc.Combine(sets.MNK['Nuke'],{})
sets.MNK['Nuke']['Wind'] = gFunc.Combine(sets.MNK['Nuke'],{})
sets.MNK['Nuke']['Water'] = gFunc.Combine(sets.MNK['Nuke'],{})
sets.MNK['Nuke']['Earth'] = gFunc.Combine(sets.MNK['Nuke'],{})
sets.MNK['Nuke']['Thunder'] = gFunc.Combine(sets.MNK['Nuke'],{})
sets.MNK['Nuke']['Ice'] = gFunc.Combine(sets.MNK['Nuke'],{})
sets.MNK['Nuke']['Light'] = gFunc.Combine(sets.MNK['Nuke'],{})
sets.MNK['Nuke']['Dark'] = gFunc.Combine(sets.MNK['Nuke'],{
    Head="Pixie Hairpin +1"
})

sets.MNK['MAB']['Fire'] = gFunc.Combine(sets.MNK['MAB'],{})
sets.MNK['MAB']['Wind'] = gFunc.Combine(sets.MNK['MAB'],{})
sets.MNK['MAB']['Water'] = gFunc.Combine(sets.MNK['MAB'],{})
sets.MNK['MAB']['Earth'] = gFunc.Combine(sets.MNK['MAB'],{})
sets.MNK['MAB']['Thunder'] = gFunc.Combine(sets.MNK['MAB'],{})
sets.MNK['MAB']['Ice'] = gFunc.Combine(sets.MNK['MAB'],{})
sets.MNK['MAB']['Light'] = gFunc.Combine(sets.MNK['MAB'],{})
sets.MNK['MAB']['Dark'] = gFunc.Combine(sets.MNK['MAB'],{
    Head="Pixie Hairpin +1"
})

sets.MNK['DayWeatherBonus'] = {}

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
sets['WeaponSkills']["Blade: Teki"] = gFunc.Combine(sets.MNK['MAB']['Water'], {})
sets['WeaponSkills']["Blade: Yu"] = gFunc.Combine(sets.MNK['MAB']['Water'], {})
sets['WeaponSkills']["Blade: To"] = gFunc.Combine(sets.MNK['MAB']['Ice'], {})
sets['WeaponSkills']["Blade: Chi"] = gFunc.Combine(sets.MNK['MAB']['Earth'], {})
sets['WeaponSkills']["Blade: Ei"] = gFunc.Combine(sets.MNK['MAB']['Dark'], {
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
