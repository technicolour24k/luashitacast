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

--gFunc.LoadFile('../includes/common-rules') --Load common rules for all states
gFunc.LoadFile('../includes/NocSouls/common') --Load common gearsets for the Server specified in includes/lua

-- Club, Staff, DualWield, Healer
weapons = "Club"
-- Balanced, Aggressive, or Defensive TP sets.
engagedType = "Balanced"
-- Balanced, or Defensive Idle sets.
idleType = "Balanced"

-- TH set?
thOn = false
sets.default={}
sets.WHM={}
--------------------------------------
--      BEGIN ENGAGED GEARSETS      --
--------------------------------------
sets['Engaged'] = gFunc.Combine(sets.AllJobs['TP'],{
    Ear1="Moonshade Earring",
    Ear2="Insomnia Earring",
    Neck="Healer's Torque",
    Ring1="Rajas Ring",
    Ring2="Castor's Ring"
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
    Head="Aya. Zucchetto +2",
    Body="Ayanmo Corazza +2",
    Hands="Aya. Manopolas +2",
    Legs="Aya. Cosciales +2",
    Feet="Aya. Gambieras +2",
    Waist={ Name="Windbuffet Belt +1", Augment = '"Triple Atk."+8' },
    --Head=AF_HEAD,
    --Body=AF_BODY,
    --Legs=AF_LEGS,
    --Hands=AF_HANDS,
    --Feet=AF_FEET
})

-- Every day attacky things!
sets['Engaged']['Aggressive'] = gFunc.Combine(sets['Engaged'], {
})

-- Every day defensive things
sets['Engaged']['Defensive'] = gFunc.Combine(sets['Engaged']['Balanced'], {
    Head=AF_HEAD,
    Body=AF_BODY,
    Legs=AF_LEGS,
    Feet=AF_FEET,
    -- Ring2="Purity Ring",
})

-- Specific set for TH
sets['Engaged']['TH'] = {
	Waist = "Chaac Belt"
}

--------------------------------------
--          BEGIN IDLE GEARSETS     --
--------------------------------------
sets['Idle']  = gFunc.Combine(sets.AllJobs['DT'], {
    Head=RELIC_HEAD,
	Body=AF_BODY,
    Feet="Herald's Gaiters",
    Ear2 = "Moonshade Earring"
})
-- More defensive Idle things? Try to max DT over Regen/Refresh
-- sets['Idle'] = gFunc.Combine(sets['Idle']['Balanced'], {
--     Ear2="Etiolation Earring", --3% MDT (19% total + Shell5 @29% MDT > 48% total)
-- })

sets.default['Resting']={}
sets.default['Zoning']={}
sets.default['Dead']={}
sets.default['Unknown']={}

sets.WHM['MAB'] = gFunc.Combine(sets.AllJobs['MAB'], {
    Head=EMPYREAN_HEAD,
    Body="Gyve Doublet",
    Hands="Jhakri Cuffs +1",
    Legs="Gyve Trousers",
    Feet=RELIC_FEET,
    Waist="Othila Sash",
    Ring2="Strendu Ring",
})

sets.WHM['Magic'] = {}
sets.WHM['Magic']['Cure'] = {
    Head="Iaso Mitra", --11%
    Hands="Bokwus Gloves", --13% => 24%
    Legs=AF_LEGS, --11% => 35%
    Back="Ghostfyre cape", --6% => 41%
    Neck="Phalaina locket", --4% => 45%
    Ear1="Roundel Earring", --5% => 50%
    Ring1="Lebeche Ring",
    Ring2="Sirona's ring"
}
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
    Ammo = {Name="Floestone",Augment={[1]='DEX+8',[2]='"Triple Atk."+4'} },
    Neck = {Name="Tlamiztli Collar",Augment = {[1]='"Triple Atk."+8'} },
    Ear1 = {Name="Mache Earring +1",Augment = {[1]='"Triple Atk."+8'} },
    Ear2 = {Name="Mache Earring +1",Augment = {[1]='"Triple Atk."+8'} },
    Waist = {Name="Windbuffet Belt +1",Augment = {[1]='"Triple Atk."+8'} },
    --Back = {Name="Dew Silk Cape +1",Augment = {[1]='"Triple Atk."+8'} },
    Back = {Name="Dew Silk Cape +1"},
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

profile = {}
profile.Sets = sets
--------------------------------------
--              BEGIN RULES         --
--------------------------------------



profile.OnLoad = function()
    profile.Packer = {}
    gSettings.AllowAddSet = true
    gSettings.FastCast = 80
    sendCommand('/exec setup/'..gData.GetPlayer().MainJob)
    sendCommand('/lockstyleset 001')
    sendCommand('/macro book 15')
    sendCommand('/macro set 1')
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
        if (weapons=="Club") then
            weapons="DualWield"
        elseif (weapons=="DualWield") then
            weapons="Healer"
        elseif (weapons=="Healer") then
            weapons="Staff"
        else
            weapons="Club"
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
    equip(sets[player.Status][evaluateVariableValue(statusType)])
end

profile.HandleDefault = function()
    player = gData.GetPlayer()
    statusType = string.lower(player.Status) .."Type"
    -- commonPetRules(sets, gData.GetAction().Name, gData.GetAction().Skill, gData.GetAction().Type)
    commonIdleRules(sets)
    
    if ((player.Status == "Zoning") or (player.Status ~= "Dead")) then
        if (debugEnabled()) then
            debugLog("player.Status: "..player.Status)
            debugLog("statusType: "..statusType)
        end
        equip(sets[player.Status][evaluateVariableValue(statusType)])
    end

    if (player.Status=="Engaged") then
        
        equip(sets[player.Status][weapons])
    end

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

    if (StatSpells:contains(action.Name)) then
        equip(sets.WHM['Magic']['StatusNA'])
    end

    if (eleWheel_list:contains(action.Name)) then
        equip(sets.WHM['MAB'])
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