profile.HandleCommand = function(args)
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
        if (weapons=="XBow") then
            weapons="Bow"
        elseif (weapons=="Bow") then
            weapons="Sword"
        elseif (weapons=="Sword") then
            weapons="XBow"
        else
            weapons="XBow"
        end
        infoLog("Weapons updated to: " ..weapons)
    end

    equip(sets[player.Status][weapons])
end

profile.HandleDefault = function()
    player = gData.GetPlayer()
    target = gData.GetTarget()
    
    statusType = string.lower(player.Status) .."Type"
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

    if (player.MainJobSync < 99) then
        if (debugEnabled()) then
            debugLog("Main level: "..player.MainJobLevel)
            debugLog("Sync'd Level: "..player.MainJobSync)
        end
        if (spellContains(action.Name, "helix")) then
            equip(sets.AllJobs['Midcast']['Helixes'])
        end
    end


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

infoLog('rules/'..mjob..' loaded')