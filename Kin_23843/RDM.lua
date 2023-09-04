AF_HEAD = "Atro. Chapeau +3"
AF_BODY = "Atrophy Tabard +2"
AF_HANDS = "Atrophy Gloves +2"
AF_LEGS = "Atrophy Tights +2"
AF_FEET = "Atro. Boots +2"
RELIC_HEAD = "Viti. Chapeau +3"
RELIC_BODY = "Viti. Tabard +3"
RELIC_HANDS = "Viti. Gloves +2"
RELIC_LEGS = "Viti. Tights +1"
RELIC_FEET = "Vitiation Boots +2"
EMPYREAN_HEAD = { Name="Leth. Chapell +1" }
EMPYREAN_BODY = "Lethargy Sayon +1"
EMPYREAN_HANDS = "Leth. Gantherots +1"
EMPYREAN_LEGS = "Leth. Fuseau +1"
EMPYREAN_FEET = "Leth. Houseaux +1"

gFunc.LoadFile('../includes/NocSouls/common') --Load common gearsets for the Server specified in includes/lua

-- Sword, DualWield, Daggers, Combo
weapons = "Sword"
-- Balanced, Aggressive, or Defensive TP sets.
engagedType = "Balanced"
-- Balanced, or Defensive Idle sets.
-- idleType = "Balanced"

-- The type of magic we're shooting for:
-- MAB: Full MAB setup
-- MCrit: Focus on 100% crit rate, base set is MAB
-- MBurst: Focus on Magic Burst damage, base set is MCrit
MagStyle = "MAB"

-- Buffs
buffs = T{"Protect V","Shell V","Haste II", "Blink","Stoneskin","Aquaveil","Phalanx", "Temper", "Gain-MND", "Refresh II", "Ice Spikes"}

wsChain = {}
wsChain['4 Step'] = {"Requiescat","Savage Blade","Knights of Round","Chant du Cygne"}
wsChain['5 Step'] = {"Savage Blade","Chant du Cygne","Knights of Round","Savage Blade","Chant du Cygne"}
wsChain['6 Step'] = {"Requiescat","Savage Blade","Chant du Cygne","Knights of Round","Savage Blade","Chant du Cygne"}

wsChain = wsChain[wsChainSteps ..' Step']

sets.default={}
sets.RDM={}
--------------------------------------
--      BEGIN ENGAGED GEARSETS      --
--------------------------------------
sets.default['Engaged'] = gFunc.Combine(sets.AllJobs['TP'],{})
-- Weapon options
sets.default['Engaged']['Sword'] ={
    Main = { Name = 'Almace' },
    Sub = { Name = 'Genbu\'s Shield' },
}
sets.default['Engaged']['DualWield'] = {
    Main = { Name = 'Almace' },
    Sub = { Name = 'Fettering Blade'}
}
sets.default['Engaged']['Daggers'] = {
    Main = { Name = 'Mandau' },
    Sub = { Name = 'Genbu\'s Shield' },
}
sets.default['Engaged']['Combo'] = {
    Main = { Name = 'Almace' },
    Sub = { Name = 'Mandau'}
}


-- Every day killing things
sets.default['Engaged']['Balanced'] = gFunc.Combine(sets.default['Engaged'], {
    Head="Volte Cap",
    Body="Volte Jupon",
    Hands="Volte Gloves",
    Legs="Volte Hose",
    Feet="Volte Boots",
    Waist={ Name="Windbuffet Belt +1", Augment = '"Triple Atk."+8' },
})

-- Every day attacky things!
sets.default['Engaged']['Aggressive'] = gFunc.Combine(sets.default['Engaged'], {
})

-- Every day defensive things
sets.default['Engaged']['Defensive'] = gFunc.Combine(sets.default['Engaged']['Balanced'], {
    Head=AF_HEAD,
    Body=AF_BODY,
    Legs=AF_LEGS,
    Feet=AF_FEET,
    Ring2="Purity Ring",
})

-- Specific set for TH
sets.default['Engaged']['TH'] = gFunc.Combine(sets.AllJobs['TH'], {})

--------------------------------------
--          BEGIN IDLE GEARSETS     --
--------------------------------------
-- Every day idle things: Move speed, regen, refresh
sets.default['Idle'] = gFunc.Combine(sets.AllJobs['DT'], {
    Head=RELIC_HEAD,
	Body=EMPYREAN_BODY,
	Legs="Crimson Cuisses",
    Ear2 = "Moonshade Earring"
})
-- More defensive Idle things? Try to max DT over Regen/Refresh
-- sets.default['Idle']['Defensive'] = gFunc.Combine(sets.default['Idle'], {
--     Ear2="Etiolation Earring", --3% MDT (19% total + Shell5 @29% MDT > 48% total)
-- })

sets.default['Resting']={}

sets.RDM['MAB'] = gFunc.Combine(sets.AllJobs['MAB'], {
    Head=EMPYREAN_HEAD, --25 MAB
    Body="Gyve Doublet", --52 MAB
    Hands="Jhakri Cuffs +1", --37 MAB, +2 => 40 MAB
    Legs="Gyve Trousers", --40 MAB
    Feet=RELIC_FEET, -- +2 = 48 MAB, +3 = 55 MAB
    Waist="Othila Sash",
})

sets.RDM['MCrit'] = gFunc.Combine(sets.RDM['MAB'], {
    -- Head = "A'as Circlet", -- 10% MCrit TODO: Get Item & AUG 20% MCrit (total 30%)
    Ear1 = "Hecate's Earring", -- 3% MCrit TODO: AUG 20% MCrit (total 23% >> 53%)
    Ear2 = "Choleric Earring", -- 10% MCrit TODO: AUG 20% MCrit (total 30% >> 83%)
    -- Waist = "Othila Sash", -- TODO: AUG 20% MCrit (total 20% >> 103%)
})

sets.RDM['MBurst'] = gFunc.Combine(sets.RDM['MCrit'],{
    Head=AF_HEAD,
    Neck="Mizu. Kubikazari",
    --Feet="Jhakri Pigaches +2"
})

sets.RDM['Magic'] = {}
sets.RDM['Magic']['Cure'] = {
    Head="Iaso Mitra", --11%
    Hands="Bokwus Gloves", --13% => 24%
    Legs=AF_LEGS, --11% => 35%
    Back="Ghostfyre cape", --6% => 41%
    Neck="Phalaina locket", --4% => 45%
    Ear1="Roundel Earring", --5% => 50%
    Ring1="Lebeche Ring",
    Ring2="Sirona's ring"
}
sets.RDM['Magic']['White Wind'] = gFunc.Combine(sets.RDM['Magic']['Cure'], {})
sets.RDM['Magic']['Restoral'] = gFunc.Combine(sets.RDM['Magic']['Cure'], {})
sets.RDM['Magic']['Plenilune Embrace'] = gFunc.Combine(sets.RDM['Magic']['Cure'], {})
sets.RDM['Magic']['Exuviation'] = gFunc.Combine(sets.RDM['Magic']['Cure'], {})
sets.RDM['Magic']['Magic Fruit'] = gFunc.Combine(sets.RDM['Magic']['Cure'], {})
sets.RDM['Magic']['Pollen'] = gFunc.Combine(sets.RDM['Magic']['Cure'], {})

sets.RDM['Magic']['BLU_Physical'] = {}
sets.RDM['Magic']['BLU_Buffs'] = {}
sets.RDM['Magic']['BLU_Nukes'] = gFunc.Combine(sets.RDM['MAB'], {})
sets.RDM['Magic']['EnhancingDuration'] = gFunc.Combine(sets.AllJobs['Midcast']['EnhancingDuration'], {
    Hands=AF_HANDS,
    Body=RELIC_BODY,
    Feet=EMPYREAN_FEET,
    Back="Sucellos's Cape",
})

sets.RDM['Magic']['EnfeeblingDuration'] = gFunc.Combine(sets.AllJobs['Midcast']['EnfeeblingDuration'], {
})

sets.RDM['Magic']['Enhancing Magic'] = gFunc.Combine(sets.RDM['Magic']['EnhancingDuration'],{
    Head="Umuthi Hat", --Not yet available, TODO: Grab it when it is.
    Neck="Enhancing Torque",
    Ear1="Andoaa Earring",
    Body=RELIC_BODY,
    Hands=AF_HANDS,
    Legs=AF_LEGS,
    Feet=EMPYREAN_FEET,
    Ring1="Stikini Ring +1",
    Ring2="Stikini Ring +1",
})

sets.RDM['Magic']['Enfeebling Magic'] = gFunc.Combine(sets.RDM['Magic']['EnfeeblingDuration'],{
    Ammo={ Name="Quartz Tathlum"}, --Enfeebling skill+
    Head=RELIC_HEAD, --Enfeebling Skill+
    Neck={ Name="Dls. Torque +1"}, --Enfeebling Potency +7
    Ear2={ Name="Moonshade Earring", Augment={'"Refresh"+10','"Fast Cast"+5','"Regen"+10','"Store TP"+5',}}, -- Enfeebling Magic potency +3
    Body=EMPYREAN_BODY, --Enfeebling Potency +14
    Hands=EMPYREAN_HANDS, -- Enfeebling skill+ BONUS: Saboteur potency when active
    Ring1={Name = "Stikini Ring +1"},
    Ring2={Name = "Stikini Ring +1"},
    Back={ Name="Sucellos's Cape"}, --Enfeebling Potency +10
    Legs="Portent Pants",
    Feet=RELIC_FEET, --Enfeebling Potency+ 5(AF+2) or 10 (AF+3)
})
sets.RDM['Magic']['Elemental Magic'] = gFunc.Combine(sets.RDM['MAB'], {})
sets.RDM['Magic']['Dark Magic'] = {}

sets.RDM['Magic']['Dispel'] = gFunc.Combine(sets.RDM['Magic']['Enfeebling Magic'], {
    Neck="Dls. Torque +1"
})

sets.RDM['Magic']['Helixes'] = gFunc.Combine(sets.RDM['Magic']['Elemental Magic'], {})
sets.RDM['Magic']['Helixes']['Light Arts'] = gFunc.Combine(sets.RDM['Magic']['Helixes'], {})
sets.RDM['Magic']['Helixes']['Dark Arts'] = gFunc.Combine(sets.RDM['Magic']['Helixes'], {})

sets.RDM['Magic']['Gains'] = gFunc.Combine(sets.RDM['Magic']['Enhancing Magic'], {
    Body=RELIC_BODY,
    Hands=RELIC_HANDS,
    Feet=EMPYREAN_FEET,
    Neck="Dls. Torque +1",
    Back="Sucellos's Cape",
})
sets.RDM['Magic']['Gain-STR'] = gFunc.Combine(sets.RDM['Magic']['Gains'],{})
sets.RDM['Magic']['Gain-MND'] = gFunc.Combine(sets.RDM['Magic']['Gains'],{})
sets.RDM['Magic']['Gain-INT'] = gFunc.Combine(sets.RDM['Magic']['Gains'],{})
sets.RDM['Magic']['Gain-DEX'] = gFunc.Combine(sets.RDM['Magic']['Gains'],{})
sets.RDM['Magic']['Gain-AGI'] = gFunc.Combine(sets.RDM['Magic']['Gains'],{})
sets.RDM['Magic']['Gain-VIT'] = gFunc.Combine(sets.RDM['Magic']['Gains'],{})
sets.RDM['Magic']['Gain-CHR'] = gFunc.Combine(sets.RDM['Magic']['Gains'],{})

sets.RDM['DayWeatherBonus'] = {Back="Twilight Cape"}
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
sets.WeaponSkills['Sanguien Blade'] = gFunc.Combine(sets.RDM['MAB'], {})
sets.WeaponSkills['Burning Blade'] = gFunc.Combine(sets.RDM['MAB'], {})
sets.WeaponSkills['Flash Nova'] = gFunc.Combine(sets.RDM['MAB'], {})
sets.WeaponSkills['Shining Blade'] = gFunc.Combine(sets.RDM['MAB'], {})
sets.WeaponSkills['Seraph Strike'] = gFunc.Combine(sets.RDM['MAB'], {})
sets.WeaponSkills['Spirits Within'] = gFunc.Combine(sets.RDM['MAB'], {})

-- Standard mods
sets.WeaponSkills['Savage Blade'] = gFunc.Combine(sets.AllJobs['WeaponSkills']['WSD'],{--50% STR, 50% MND - Equal footing for both
    Head=AF_HEAD,
    Body=AF_BODY,
    Hands="Jhakri Cuffs +1",
    Legs=AF_LEGS,
    Feet=AF_FEET,
    Ammo="Floestone",
    Neck="Imbodla Necklace",
    Ear1="Regal Earring",
    Ear2="Mache Earring +1",
    Back="Laic Mantle",
}) 
sets.WeaponSkills['Knights of Round'] = {}

sets.default['Unknown'] = {}
sets.default['Dead'] = {}

profile = {}
profile.Sets = sets
--------------------------------------
--              BEGIN RULES         --
--------------------------------------


profile.OnLoad = function()
    profile.Packer = {}
    gSettings.AllowAddSet = true
end


profile.OnUnload = function()

end

profile.HandleCommand = function(args)
    player = gData.GetPlayer()
    env = gData.GetEnvironment()
    action = gData.GetAction()
    statusType = string.lower(player.Status) .."Type"

    commonCommandRules(sets, args)
    if (args[1] == 'cycle-engaged') then
        if (engagedType=="Balanced") then
            engagedType="Defensive"
        elseif (engagedType=="Defensive") then
            engagedType="Aggressive"
        else
            engagedType="Balanced"
        end
        infoLog("engagedType updated to: " ..engagedType)
    end

    if (args[1] == 'cycle-idle') then
        if (idleType=="Balanced") then
            idleType="Defensive"
        else
            idleType="Balanced"
        end
        infoLog("idleType updated to: " ..idleType)
    end

    if (args[1] == 'cycle-weapons') then
        if (weapons=="Sword") then
            weapons="DualWield"
        elseif (weapons=="DualWield") then
            weapons="Combo"
        elseif (weapons=="Combo") then
            weapons="Dagger"
        else
            weapons="Sword"
        end
        infoLog("Weapons updated to: " ..weapons)
    end

    if (args[1] == 'cycle-magic') then
        if (MagStyle=="MAB") then
            MagStyle="MCrit"
        elseif (MagStyle=="MCrit") then
            MagStyle="MBurst"
        else
            MagStyle="MAB"
        end
        infoLog("MagStyle updated to: " ..MagStyle)
    end
    
    equip(sets.default[player.Status][weapons])
end

profile.HandleDefault = function()
    player = gData.GetPlayer()
    target = gData.GetTarget()
    
    statusType = string.lower(player.Status) .."Type"
    -- commonPetRules(sets, gData.GetAction().Name, gData.GetAction().Skill, gData.GetAction().Type)
    commonIdleRules(sets)

end

profile.HandleAbility = function()
    action = gData.GetAction()
    target = gData.GetActionTarget()
    commonAbilityRules(sets, gData.GetAction().Name, gData.GetAction().Skill, gData.GetAction().Type)
end

profile.HandleItem = function()
    item = gData.GetAction()
    target = gData.GetActionTarget()
    commonItemRules(sets, item.Name, item.Type)
end

profile.HandlePrecast = function()
    action = gData.GetAction()
    target = gData.GetActionTarget()
    gSettings.FastCast = 80
    commonPrecastRules(sets, gData.GetAction().Name, gData.GetAction().Skill, gData.GetAction().Type)
end

profile.HandleMidcast = function()
    action = gData.GetAction()
    target = gData.GetActionTarget()
    
    commonMidcastRules(sets, gData.GetAction().Name, gData.GetAction().Skill, gData.GetAction().Type)
    announceSpell(action.Name, target.Name, "p")

    if (action.Skill=="Elemental Magic") then
        equip(sets.RDM[MagStyle])
        debugLog("Casting a nuke.. Should equip Eremites ring?")

    end

    if(buffIsActive("Saboteur") and (action.Skill=="Enfeebling Magic")) then
        equip(sets.JobAbility['Saboteur'])
    end
end

profile.HandlePreshot = function()
    action = gData.GetAction()
    target = gData.GetActionTarget()
    commonPreshotRules(sets, gData.GetAction().Name, gData.GetAction().Skill, gData.GetAction().Type)
end

profile.HandleMidshot = function()
    action = gData.GetAction()
    target = gData.GetActionTarget()
    commonMidshotRules(sets, gData.GetAction().Name, gData.GetAction().Skill, gData.GetAction().Type)
end

profile.HandleWeaponskill = function()
    action = gData.GetAction()
    target = gData.GetActionTarget()
    commonWeaponskillRules(sets, gData.GetAction().Name, gData.GetAction().Skill, gData.GetAction().Type)
end

return profile