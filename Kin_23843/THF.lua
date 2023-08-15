AF_HEAD = "Pill. Bonnet +3"
AF_BODY = "Pillager's Vest +3"
AF_HANDS = "Pill. Armlets +3"
AF_LEGS = "Pill. Culottes +3"
AF_FEET = "Pill. Poulaines +3"
RELIC_HEAD = "Plun. Bonnet +1"
RELIC_BODY = "Plun. Vest +1"
RELIC_HANDS = "Plun. Armlets +1"
RELIC_LEGS = "Plun. Culottes +1"
RELIC_FEET = "Plun. Poulaines +1"
EMPYREAN_HEAD = { Name="Skulker's Bonnet +1", Augment = {[1]='DEX+4',[2]='"Triple Atk."+6'} }
EMPYREAN_BODY = "Skulker's Vest +1"
EMPYREAN_HANDS = "Skulk. Armlets +1"
EMPYREAN_LEGS = "Skulk. Culottes +1"
EMPYREAN_FEET = "Skulk. Poulaines +1"

--For THF, these weapons probably won't change much
weapons = "Daggers"
-- Balanced, Aggressive, or Defensive TP sets.
engagedType = "Balanced"
-- Balanced, or Defensive Idle sets.
idleType = "Balanced"

gFunc.LoadFile('../includes/NocSouls/common') --Load common gearsets for the Server specified in includes/lua

buffs = T{"Protect V","Shell V","Haste II", "Blink","Stoneskin","Aquaveil","Phalanx", "Temper", "Gain-DEX", "Refresh II", "Shock Spikes"}

wsChain = {}
wsChain['4 Step'] = {"Mandalic Stab","Evisceration","Rudra's Storm","Rudra's Storm"}
wsChain['5 Step'] = {"Rudra's Storm","Mandalic Stab","Evisceration","Rudra's Storm","Rudra's Storm"}
wsChain['6 Step'] = {"Mandalic Stab","Evisceration","Exenterator","Rudra's Storm","Evisceration","Rudra's Storm"}

wsChain = wsChain[wsChainSteps ..' Step']



sets.default={}
sets.THF={}
--------------------------------------
--      BEGIN ENGAGED GEARSETS      --
--------------------------------------
sets.default['Engaged'] = gFunc.Combine(sets.AllJobs['TP'],{})
-- Weapon options, unlikely to change for THF
sets.default['Engaged']['Daggers'] ={
    Main = { Name = 'Twashtar', Augment = 'DMG:+32' },
    Sub = { Name = 'Sandung', Augment = 'DMG:+32' },
}

-- Every day killing things
sets.default['Engaged']['Balanced'] = gFunc.Combine(sets.default['Engaged'], {
    Head = AF_HEAD,
    Body = AF_BODY,
    Hands = AF_HANDS,
    Legs = AF_LEGS,
    Feet = { Name = 'Savateur\'s Gaiters', Augment = { [1] = '"Store TP"+10', [2] = '"Subtle Blow"+30' } },
    Waist = { Name = 'Windbuffet Belt +1', Augment = '"Triple Atk."+8' },
})

-- Every day attacky things!
sets.default['Engaged']['Aggressive'] = gFunc.Combine(sets.default['Engaged'], {
})

-- Every day defensive things
sets.default['Engaged']['Defensive'] = gFunc.Combine(sets.default['Engaged']['Balanced'], {
    Body = AF_BODY,
    Head = AF_HEAD,
})

sets.default['Engaged']['MEva'] = gFunc.Combine(sets.default['Engaged'], {
    Body = AF_BODY,
    Hands = AF_HANDS,
    Legs = AF_LEGS,
    Feet = AF_FEET,
})

-- Specific PDT defensive things
sets.default['Engaged']['Defensive']['PDT'] = gFunc.Combine(sets.default['Engaged']['Defensive'], {
    Body = AF_BODY,
    Head = AF_HEAD,
})

-- Specific MDT defensive things
sets.default['Engaged']['Defensive']['MDT'] = gFunc.Combine(sets.default['Engaged']['Defensive'], {
    Body = AF_BODY,
    Head = AF_HEAD,
})

-- Specific set for TH
sets.default['Engaged']['TH'] = gFunc.Combine(sets.AllJobs['TH'], {
    Sub = "Sandung",
	Hands = RELIC_HANDS,
	Feet = EMPYREAN_FEET,
})

--------------------------------------
--          BEGIN IDLE GEARSETS     --
--------------------------------------
-- Every day idle things: Move speed, regen, refresh
sets.default['Idle'] = gFunc.Combine(sets.AllJobs['DT'], {
    Feet = AF_FEET,
    Ear2 = "Moonshade Earring"
})

sets.default['Resting']={}

sets.THF['MAB'] = gFunc.Combine(sets.AllJobs['MAB'], {
    Head="Wayfarer Circlet",
    Waist = "Aquiline Belt",
    Legs = "Limbo Trousers"
})

sets.THF['Magic'] = {}
sets.THF['Magic']['Cure'] = {}
sets.THF['Magic']['BLU_Physical'] = {}
sets.THF['Magic']['BLU_Buffs'] = {}
sets.THF['Magic']['BLU_Nukes'] = gFunc.Combine(sets.THF['MAB'], {})
sets.THF['Magic']['Elemental Magic'] = gFunc.Combine(sets.THF['MAB'], {})

sets.THF['Magic']['Enspells'] = gFunc.Combine(sets.AllJobs['Midcast']['Enspell'], {})

--------------------------------------
--           BEGIN JA GEARSETS      --
--------------------------------------
sets.JobAbility["Perfect Dodge"] = gFunc.Combine(sets.AllJobs['JobAbility'],{})
sets.JobAbility["Sneak Attack"] = gFunc.Combine(sets.AllJobs['JobAbility'],{Hands = EMPYREAN_HANDS})
sets.JobAbility["Trick Attack"] = gFunc.Combine(sets.AllJobs['JobAbility'],{})
sets.JobAbility['Flee'] = gFunc.Combine(sets.AllJobs['JobAbility'],{Feet = AF_FEET})
sets.JobAbility['Accomplice'] = gFunc.Combine(sets.AllJobs['JobAbility'],{Head = EMPYREAN_HEAD})
sets.JobAbility['Collaborator'] = gFunc.Combine(sets.AllJobs['JobAbility'],{Head = EMPYREAN_HEAD})

--------------------------------------
--           BEGIN WS GEARSETS      --
--------------------------------------
sets.WeaponSkills["Evisceration"] = gFunc.Combine(sets.AllJobs['WeaponSkills']['WSD'], {
    Ammo={Name="Yetshila +1", Augments={[1]='"Triple Atk."+4', [2]="Critical Hit Rate +10"}}, --12% Crit Rate, 6% Damage
    Head={Name="Mummu Bonnet +2",Augments={}}, -- 5% Crit Rate
    -- Body={Name=RELIC_BODY, Augments={}},
    -- Hands={Name="Mummu Wrists +2", Augments={}}, -- 6% Crit Rate
    Legs={Name="Mummu Kecks +2", Augments={}}, --
    Feet={Name="Mummu Gamash. +2",Augments={}},

})
sets.WeaponSkills["Dancing Edge"] = gFunc.Combine(sets.AllJobs['WeaponSkills']['WSD'], {})
sets.WeaponSkills["Mercy Stroke"] = gFunc.Combine(sets.AllJobs['WeaponSkills']['WSD'], {})
sets.WeaponSkills["Mandalic Stab"] = gFunc.Combine(sets.AllJobs['WeaponSkills']['WSD'], {})
sets.WeaponSkills["Rudra's Storm"] = gFunc.Combine(sets.AllJobs['WeaponSkills']['Fotia'], {
    Head = EMPYREAN_HEAD,
    Body = AF_BODY,
    Hands = AF_HANDS,
    Legs = EMPYREAN_LEGS,
    Feet = RELIC_FEET,    
    Ammo = { Name = 'Fire Bomblet', Augment = { [1] = 'Weapon Skill Acc.+2', [2] = 'Weapon skill damage +5%', [3] = 'DMG:+2', [4] = 'Attack+7', [5] = 'Accuracy+7' } },
    Ear1 = { Name = 'Mache Earring +1', Augment = '"Triple Atk."+8' },
    Ear2 = { Name = 'Mache Earring +1', Augment = '"Triple Atk."+8' },
    Back = { Name = 'Canny Cape', Augment = '"Triple Atk."+8' },   
})
sets.WeaponSkills["Aeolian Edge"] = gFunc.Combine(sets.THF['MAB'], {})
sets.WeaponSkills["Exenterator"] = gFunc.Combine(sets.AllJobs['WeaponSkills']['WSD'], {})

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
    sendCommand('/lockstyleset 001')

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

    equip(sets.default[player.Status][evaluateVariableValue(statusType)])

    if (thOn) then
        equip(sets.default['Engaged']['TH'])
    end
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