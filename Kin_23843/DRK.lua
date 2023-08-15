AF_HEAD = "Atro. Chapeau +2"
AF_BODY = "Atrophy Tabard +2"
AF_HANDS = "Atrophy Gloves +2"
AF_LEGS = "Atrophy Tights +2"
AF_FEET = "Atro. Boots +2"
RELIC_HEAD = "Viti. Chapeau +1"
RELIC_BODY = "Viti. Tabard +1"
RELIC_HANDS = "Viti. Gloves +1"
RELIC_LEGS = "Viti. Tights +1"
RELIC_FEET = "Vitiation Boots +1"
EMPYREAN_HEAD = { Name="Leth. Chapell +1" }
EMPYREAN_BODY = "Lethargy Sayon +1"
EMPYREAN_HANDS = "Leth. Gantherots +1"
EMPYREAN_LEGS = "Leth. Fuseau +1"
EMPYREAN_FEET = "Leth. Houseaux +1"

-- Sword, DualWield, Daggers, Combo
weapons = "Sword"
-- Balanced, Aggressive, or Defensive TP sets.
engagedType = "Balanced"
-- Balanced, or Defensive Idle sets.
-- idleType = "Balanced"

-- TH set?
thOn = false
gFunc.LoadFile('../includes/NocSouls/common') --Load common gearsets for the Server specified in includes/lua

sets.default={}
sets.DRK={}
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
    Head="Aya. Zucchetto +2",
    Body="Ayanmo Corazza +2",
    Hands="Aya. Manopolas +2",
    Legs="Aya. Cosciales +2",
    Feet="Aya. Gambieras +2",
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
sets.default['Engaged']['TH'] = {
	Waist = "Chaac Belt"
}

sets.default['50'] = {
    Main={Name="Premium Mogti"},
    Range={Name="Artemis's Bow",Augment={[1]='"Store TP"+20'}},
    Head={Name="Emperor Hairpin",Augment={[1]='"Store TP"+20'}},
    Neck={Name="Peacock Charm",Augment={[1]='"Store TP"+20'}},
    Ear1={Name="Dodge Earring",Augment={[1]='"Store TP"+20'}},
    Ear2={Name="Dodge Earring",Augment={[1]='"Store TP"+20'}},
    Body={Name="Savage Separates",Augment={[1]='"Store TP"+20'}},
    Hands={Name="Savage Gauntlets",Augment={[1]='"Store TP"+20'}},
    Ring2={Name="Rajas Ring",Augment={[1]='"Store TP"+20'}},
    Ring1={Name="Safeguard Ring",Augment={[1]='"Store TP"+20'}},
    Back={Name="Beater's Mantle",Augment={[1]='"Store TP"+20'}},
    Waist={Name="Lizard Belt",Augment={[1]='"Store TP"+20'}},
    Legs={Name="Savage Loincloth",Augment={[1]='"Store TP"+20'}},
    Feet={Name="Savage Gaiters",Augment={[1]='"Store TP"+20'}},
}
sets.default['70'] = gFunc.Combine(sets.default['50'],{
    Ring1="Defending Ring"
})
sets.default['90'] = {}

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

sets.DRK['MAB'] = gFunc.Combine(sets.AllJobs['MAB'], {
    Head=EMPYREAN_HEAD,
    Body="Gyve Doublet",
    Hands="Jhakri Cuffs +1",
    Legs="Gyve Trousers",
    Feet=RELIC_FEET,
    Waist="Othila Sash",
    Ring2="Strendu Ring",
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
sets.DRK['Magic']['BLU_Physical'] = {}
sets.DRK['Magic']['BLU_Buffs'] = {}
sets.DRK['Magic']['BLU_Nukes'] = gFunc.Combine(sets.DRK['MAB'], {})
sets.DRK['Magic']['EnhancingDuration'] = gFunc.Combine(sets.AllJobs['Midcast']['EnhancingDuration'], {
    Hands=AF_HANDS,
    Feet=EMPYREAN_FEET
})

sets.DRK['Magic']['EnfeeblingDuration'] = gFunc.Combine(sets.AllJobs['Midcast']['EnfeeblingDuration'], {
})

sets.DRK['Magic']['Enhancing Magic'] = gFunc.Combine(sets.DRK['Magic']['EnhancingDuration'],{
    Body=RELIC_BODY,
    Legs=AF_LEGS,
    Feet=EMPYREAN_FEET,
    Ear1="Andoaa Earring",
    Ring1={ name="Stikini Ring +1", Augment={'"Refresh"+80',}},

})
sets.DRK['Magic']['Enfeebling Magic'] = gFunc.Combine(sets.DRK['Magic']['EnfeeblingDuration'],{
    Ammo={ name="Erlene's Notebook", Augment={'System: 1 ID: 131 Val: 7','System: 1 ID: 131 Val: 7','System: 1 ID: 131 Val: 7','System: 1 ID: 131 Val: 7',}},
    Head=AF_HEAD,
    Body=EMPYREAN_BODY,
    Hands=EMPYREAN_HANDS,
    Legs=AF_LEGS,
    Feet=RELIC_FEET,
    Neck={ name="Stoicheion Medal", Augment={'System: 1 ID: 131 Val: 7','System: 1 ID: 131 Val: 7','System: 1 ID: 131 Val: 7','System: 1 ID: 131 Val: 7',}},
    Ear1="Regal Earring",
    Ear2={ name="Moonshade Earring", Augment={'"Refresh"+10','"Fast Cast"+5','"Regen"+10','"Store TP"+5',}},
    Back={ name="Izdubar Mantle", Augment={'System: 1 ID: 131 Val: 7','System: 1 ID: 131 Val: 7','System: 1 ID: 131 Val: 7','System: 1 ID: 131 Val: 7',}},
    -- Ammo = { Name = 'Erlene\'s Notebook', Augment = {[1]='Mag. Acc+32 \"Mag. Atk. Bns.\"+32'}},
    -- Head = 'Atro. Chapeau +2',
    -- Neck = { Name = 'Stoicheion Medal', Augment = {  } },
    -- Ear1 = { Name = 'Hecate\'s Earring', Augment = {  } },
    -- Ear2 = { Name = 'Novio Earring', Augment = {  } },
    -- Body = 'Atrophy Tabard +2',
    -- Hands = 'Leth. Gantherots +1',
    -- Ring1 = { Name = 'Acumen Ring', Augment = {  } },
    -- Ring2 = { Name = 'Stikini Ring +1', Augment = '"Refresh"+80' },
    -- Back = { Name = 'Izdubar Mantle', Augment = {  } },
    -- Waist = { Name = 'Hachirin-no-Obi', Augment = {  } },
    -- Legs = 'Aya. Cosciales +2',
    -- Feet = { Name = 'Aya. Gambieras +2', Augment = '"Subtle Blow"+40' },
})
sets.DRK['Magic']['Elemental Magic'] = gFunc.Combine(sets.DRK['MAB'], {})
sets.DRK['Magic']['Dark Magic'] = {}

sets.DRK['Magic']['Helixes'] = gFunc.Combine(sets.DRK['Magic']['Elemental Magic'], {})
sets.DRK['Magic']['Helixes']['Light Arts'] = gFunc.Combine(sets.DRK['Magic']['Helixes'], {})
sets.DRK['Magic']['Helixes']['Dark Arts'] = gFunc.Combine(sets.DRK['Magic']['Helixes'], {})

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
sets.WeaponSkills["Aeolian Edge"] = gFunc.Combine(sets.DRK['MAB'],{})
sets.WeaponSkills["Exenterator"] = gFunc.Combine(sets.AllJobs['WeaponSkills']['WSD'], {})

--FTP Replicating WS
sets.WeaponSkills['Requiescat'] = gFunc.Combine(sets.AllJobs['WeaponSkills']['Fotia'], {})
sets.WeaponSkills['Chant du Cygne'] = gFunc.Combine(sets.AllJobs['WeaponSkills']['Fotia'], {})
sets.WeaponSkills['Swift Blade'] = gFunc.Combine(sets.AllJobs['WeaponSkills']['Fotia'], {})
sets.WeaponSkills['Vorpal Blade'] = gFunc.Combine(sets.AllJobs['WeaponSkills']['Fotia'], {})
-- MAB modded WS
sets.WeaponSkills['Sanguine Blade'] = gFunc.Combine(sets.DRK['MAB'], {})
sets.WeaponSkills['Uriel Blade'] = gFunc.Combine(sets.DRK['MAB'], {})
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

    if (args[1]=='buff-cycle') then
        local dayWeatherElementOpposites = {
            ['Fire'] = "Ice",
            ['Ice'] = "Wind",
            ['Wind'] = "Earth",
            ['Earth'] = "Thunder",
            ['Lightning'] = "Water",
            ['Water'] = "Fire",
            ['Light'] = "Dark",
            ['Dark'] = "Light",
            ['None'] = "None"
        }
        local enspellElements ={
            ['Fire'] = "Enfire",
            ['Ice'] = "Enblizzard",
            ['Wind'] = "Enaero",
            ['Earth'] = "Enstone",
            ['Lightning'] = "Enthunder",
            ['Water'] = "Enwater",
            ['Light'] = "Enthunder",
            ['Dark'] = "Enblizzard"
        }

        if (debugEnabled()) then
            debugLog("=================  Enspell checks  =================")
            debugLog("Day Element: "..env.DayElement)
            debugLog("Weather Element: "..env.WeatherElement)
            debugLog("Day opposition: "..env.DayElement.." : " .. dayWeatherElementOpposites[env.DayElement])
            debugLog("Weather opposition: "..env.WeatherElement.." : " .. dayWeatherElementOpposites[env.WeatherElement])
            if (dayWeatherElementOpposites[env.DayElement] ~= env.WeatherElement) then
                debugLog("Day & Weather Opposite: false")
            else
                debugLog("Day & Weather Opposite: true")
            end
        end
        if (dayWeatherElementOpposites[env.DayElement] ~= env.WeatherElement) then
            if (string.find(env.Weather, "x2")) then
                chosenEnspell = enspellElements[env.WeatherElement]
            else
                chosenEnspell = enspellElements[env.DayElement]
            end
        end

        local buffs = T{"Protect V","Shell V","Haste II", "Blink","Stoneskin","Aquaveil","Phalanx", chosenEnspell, "Temper", "Gain-MND", "Refresh II", "Ice Spikes"}
        for i=1, #buffs, 1 do
            sendCommand('/ma "'..buffs[i]..'" <me>')
            coroutine.sleep(5)
        end
    end
    equip(sets.default[player.Status][weapons])
end

profile.HandleDefault = function()
    player = gData.GetPlayer()
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
    
    if(debugEnabled()) then
        debugLog(action.Skill)
        debugLog("sets."..player.MainJob.."['Magic']["..action.Skill.."]")
    end
    -- cancelBuff(action.Name, action.CastTime, gSettings.FastCast)
    commonMidcastRules(sets, gData.GetAction().Name, gData.GetAction().Skill, gData.GetAction().Type)
    announceSpell(action.Name, target.Name, "p")
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