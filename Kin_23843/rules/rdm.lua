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
        if (weapons=="Sword") then
            weapons="DualWield"
        elseif (weapons=="DualWield") then
            weapons="Combo"
        elseif (weapons=="Combo") then
            weapons="Daggers"
        elseif (weapons=="Daggers") then
            weapons="Staff"
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

    -- if (args[1] == 'crush') then
    --     sendCommand('/blusets setn 1 "Tenebral Crush"')
    --     coroutine.sleep(0.3)
    --     infoLog('Tenebral Crush hopefully loaded?')
    --     killSpell = true
    --     sendCommand('/ma "Tenebral Crush" <t>')
    --     infoLog('Tenebral Crush hopefully executed..?')
    -- end
    
    equip(sets['Engaged'][weapons])
end

profile.HandleDefault = function()
    player = gData.GetPlayer()
    target = gData.GetTarget()
    
    if not (player.Status == "Unknown") then
        statusType = string.lower(player.Status) .."Type"
        -- commonPetRules(sets, gData.GetAction().Name, gData.GetAction().Skill, gData.GetAction().Type)
        commonIdleRules(sets)
        
        equipment = gData.GetEquipment()
        if (equipment['Main'].Name == sets['Engaged']['Staff']['Main'].Name) then
            infoLog("Your hands match your set main!")
        end
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
    gSettings.FastCast = 80
    commonPrecastRules(sets, gData.GetAction().Name, gData.GetAction().Skill, gData.GetAction().Type)

end

profile.HandleMidcast = function()
    action = gData.GetAction()
    target = gData.GetActionTarget()

    commonMidcastRules(sets, gData.GetAction().Name, gData.GetAction().Skill, gData.GetAction().Type)
    announceSpell(action.Name, target.Name, "p")

    if (action.Skill=="Elemental Magic") then
        if (sets.RDM[MagStyle][action.Element]) then
            equip(sets.RDM[MagStyle][action.Element]) 
        else
             equip(sets.RDM[MagStyle])
        end
    end
    if (sets[player.MainJob]['Magic'][spell]) then
        equip(sets[player.MainJob]['Magic'][spell])
    end
    
    if(buffIsActive("Saboteur") and (action.Skill=="Enfeebling Magic")) then
        equip(sets.JobAbility['Saboteur'])
    end
    if (action.Name=="Impact") then
        equip(sets.RDM['Magic']['Impact'])
    end
    
    weatherCheck(action.Element, action.Skill) -- Calling skill is checked by weatherCheck. This is called by common-rules, but needs to be reset after checking RDM specific ele sets
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