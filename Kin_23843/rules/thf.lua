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