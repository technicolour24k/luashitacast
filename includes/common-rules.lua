--commonCommandRules documentation
-- @param sets: Your sets table
-- @param cmd: Command passed to /lac fwd
function commonCommandRules (sets, cmd)
    --Good to have in for the sake of having easy access to colours
    if (cmd[1] =='colourtest') then
        for i = 1, 255, 1 do
            gFunc.Echo(i, "Colour test: "..i)
        end
    end

    if (cmd[1]=="status-check") then
       clearStatuses() 
    end

    if (cmd[1]=="recraft") then
        if (cmd[2]) then
            recraft(cmd[2])
        else
            errorLog("Missing second parameter: repetitions. Number expected.")
        end
    end

    if (cmd[1]=="crystals") then
        if (cmd[2]) then
            r = cmd[2]
            for i=1, r, 1 do
                sendCommand('/item "Wind Cluster" <me>')
                coroutine.sleep(2)
            end
        else
            errorLog("Missing second parameter: repetitions. Number expected.")
        end
    end

    if (cmd[1]=="dig") then
        if (cmd[2]) then
            r = cmd[2]
            sendCommand('/equip Body "Blue racing silks"')
            for i=1, r, 1 do
                infoLog("[Dig] Digging: "..i.." of "..r)
                sendCommand('/dig')
                coroutine.sleep(1)
            end
        else
            errorLog("Missing second parameter: repetitions. Number expected.")
        end
    end

    -- Function to recursively display the names of subtables
    function printSubTableNames(tbl, prefix)
        tbl = tbl or sets
        prefix = prefix or ""
        for key, value in pairs(tbl) do
            local name = prefix .. key
            if type(value) == "table" then
                debugLog("Sub-table found:", name)
                printSubTableNames(value, name .. ".")
            end
        end
    end

    if(cmd[1]=="check-sets") then
        -- prefix = prefix or ""
        -- for key, value in pairs(sets) do
        --     local name = prefix .. key
        --     if type(value) == "table" then
        --         debugLog("Sub-table found:" ..name)
        --     end
        -- end
        printSubTableNames(cmd[2])
    end

    if (cmd[1] == 'toggle-TH') then
        if (thOn) then
            thOn = false
        else
            thOn = true
        end
        infoLog("TH: ".. tostring(thOn))
    end


    if (cmd[1]=='buff-cycle') then
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

        for i=1, #buffs, 1 do
            sendCommand('/ma "'..buffs[i]..'" <me>')
            coroutine.sleep(5)
        end
        sendCommand('/ma "'..chosenEnspell..'" <me>')
    end

    if (cmd[1] == 'ws-chain') then
        if (cmd[2] == 'reset') then
            wsChainCounter = 1
            infoLog("Chain reset. Now at stage: "..wsChainCounter)
        end

        if (cmd[2]:contains('step')) then
            if (cmd[2]:contains('4-step')) then
                wsChain = wsChain['4 Step']
            elseif (cmd[2]:contains('5-step')) then
                wsChain = wsChain['5 Step']
            elseif (cmd[2]:contains('6-step')) then
                wsChain = wsChain['6 Step']
            else
                errorLog("Invalid step count provided. Valid options: 4, 5, or 6. Defaulted to ".. #wsChain)
            end
            infoLog("Setting Chain Step count to: " ..#wsChain)
        end

        if (cmd[2]:contains('ex')) then
            if (player.TP > 999) then
                infoLog("Current WS: ".. wsChain[wsChainCounter] .." ["..wsChainCounter.." of "..wsChainSteps.."]")
                sendCommand('/ws "'..wsChain[wsChainCounter]..'" <t>')
                wsChainCounter = wsChainCounter+1
                if (wsChainCounter > #wsChain) then
                    wsChainCounter = 1
                end
                infoLog("Next WS: "..wsChain[wsChainCounter])
            else
                errorLog("[ws-chain] Not enough TP. ["..player.TP.."]")
            end
        end
    end
end

--commonItemRules documentation
-- @param sets: Your sets table
-- @param item: Spell data/name [recommend: gData.GetAction().Name]
-- @param skill: The skill of the action [recommend: gData.GetAction().Skill]
-- @param type: The 'type' of skill [recommend: gData.GetAction().Type]

function commonItemRules (sets, item, type)
    if((item=="Holy Water") or (item=="Hallowed Water")) then
        equip(sets.AllJobs['HolyWater'])
    end

    if (spellContains(item,"Crystal")) then
        equip(sets.AllJobs['Crafting'])
    end
end

--commonAbilityRules documentation
-- @param sets: Your sets table
-- @param ability: Ability data/name [recommend: gData.GetAction().Name]
-- @param skill: The skill of the action [recommend: gData.GetAction().Skill]
-- @param type: The 'type' of skill [recommend: gData.GetAction().Type]
function commonAbilityRules (sets, ability, skill, type)
    if (sets.JobAbility[ability]) then
        equip(sets.JobAbility[ability])
    end

    if (type == "Quick Draw") then
        equip(sets.AllJobs['Quick Draw'])
        infoLog("Quick Draw: Equipping All Jobs set.")
    end

    if spellContains(action.Name, "Spectral Jig") then
        cancelBuff(action.Name, action.CastTime, gSettings.FastCast, "71")
    end

    if (gData.GetAction().Name) then
        infoLog("Action: "..gData.GetAction().Name)
    end

end

--commonPetRules documentation
-- @param sets: Your sets table
-- @param spell: Spell data/name [recommend: gData.GetAction().Name]
-- @param skill: The skill of the action [recommend: gData.GetAction().Skill]
-- @param type: The 'type' of skill [recommend: gData.GetAction().Type]
function commonPetRules (sets, spell, skill, type)

end


--commonIdleRules documentation
-- @param sets: Your sets table
-- @param spell: Spell data/name [recommend: gData.GetAction().Name]
-- @param skill: The skill of the action [recommend: gData.GetAction().Skill]
-- @param type: The 'type' of skill [recommend: gData.GetAction().Type]
function commonIdleRules (sets)
    statusType = string.lower(player.Status) .."Type"
    -- Adding packet checks..
    --ashita.events.register('packet_in', 'packet_in_callback1', function (e)
        -- Known packet IDs
        -- e.id 103 = status update
        -- e.id 14 = mob movements
        -- e.id 68 = mount up?
        -- e.id 23 = digging?

        -- infoLog(e.id)
        --if (e.id==68) then
            --equip(sets.Chocobo['Mount'])
        --end
        -- if (e.id == 23) then
        --     equip(sets.Chocobo['Dig'])
        -- end
    --end)
    -- Closing packet checks..

    if ((buffIsActive("Light Arts")) or (buffIsActive("Addendum: White"))) then
        activeArts = "Light Arts"
        if (debugEnabled()) then debugLog("Light Arts found - setting activeArts to" ..activeArts) end
    elseif ((buffIsActive("Dark Arts")) or (buffIsActive("Addendum: Black"))) then
        activeArts = "Dark Arts"
        if (debugEnabled()) then debugLog("Dark Arts found - setting activeArts to" ..activeArts) end
    end

    local temp = evaluateVariableValue(statusType)
    equipAppropriateGear()
    
    if(debugEnabled()) then debugLog("Equipping sets["..player.Status.."]["..evaluateVariableValue(statusType).."]") end

    if (player.Status=="Engaged") then
        equip(sets[player.Status][weapons])
        if(debugEnabled()) then debugLog("Equipping sets["..player.Status.."]["..weapons.."]") end
        equipAppropriateGear()
        if(debugEnabled()) then debugLog("Equipping sets["..player.Status.."]["..evaluateVariableValue(statusType).."]") end

        if (thOn) then
            equip(sets['Engaged']['TH'])
        end

        if(debugEnabled()) then
            debugLog("Player Main Level: "..player.MainJobSync )
            debugLog("Player Subjob: "..player.SubJob)
        end
        if ((player.MainJobSync  < 99) and (player.SubJob == "MNK")) then
            if (debugEnabled()) then
                debugLog("player.MainJobSync is under 99 ["..player.MainJobSync.."]")
                debugLog("player.SubJob is "..player.SubJob)
            end
            equip(sets.default['90'])
            
            if (player.MainJobSync  > 69) then
                if (debugEnabled()) then debugLog("player.MainJobSync is over 69 ["..player.MainJobSync.."]") end
                equip(sets.default['70'])
            elseif (player.MainJobSync  > 49) then
                if (debugEnabled()) then debugLog("player.MainJobSync is over 49 ["..player.MainJobSync.."]") end
                equip(sets.default['50'])
            end
        end
    else
        if (meme) then
            equip(sets.Meme)
        else
            if not (sets.Zones[gData.GetEnvironment().Area]) then
                -- equip(sets[player.Status][evaluateVariableValue(statusType)])
            else
                equip(sets.Zones[gData.GetEnvironment().Area])
            end
        end 
    end
    -- equipAppropriateGear()



end

--commonPrecastRules documentation
-- @param sets: Your sets table
-- @param spell: Spell data/name [recommend: gData.GetAction().Name]
-- @param skill: The skill of the action [recommend: gData.GetAction().Skill]
-- @param type: The 'type' of skill [recommend: gData.GetAction().Type]
function commonPrecastRules (sets, spell, skill, type)
    enemyImmunityCheck(gData.GetActionTarget(), spell)

    if (sets.AllJobs['FastCast'][spell]) then
	    equip(sets.AllJobs['FastCast'][spell])
	end

    equip(sets.AllJobs['FastCast'][skill])

    if (action.Skill == "Blue Magic") then
        sendCommand('/blusets setn 1 '..action.Name)
        coroutine.sleep(0.1)
        sendCommand('/ma "'..action.Name..'" <t>')
    end
end

--commonPreshotRules documentation
-- @param sets: Your sets table
-- @param spell: Spell data/name [recommend: gData.GetAction().Name]
-- @param skill: The skill of the action [recommend: gData.GetAction().Skill]
-- @param type: The 'type' of skill [recommend: gData.GetAction().Type]
function commonPreshotRules (sets, spell, skill, type)

end

--commonMidcastRules documentation
-- @param sets: Your sets table
-- @param spell: Spell data/name [recommend: gData.GetAction().Name]
-- @param skill: The skill of the action [recommend: gData.GetAction().Skill]
-- @param type: The 'type' of skill [recommend: gData.GetAction().Type]
function commonMidcastRules (sets, spell, skill, type)
    player = gData.GetPlayer()
    action = gData.GetAction()
    
    if (debugEnabled()) then
        debugLog("============ commonMidcastRules: Variables passed in ============")
        debugLog("spell:"..spell)
        debugLog("skill:"..skill)
        debugLog("type:"..type)
        debugLog("============ Raw Data Dump ============")
        debugLog("gData.GetAction().Name: "..gData.GetAction().Name)
        debugLog("gData.GetAction().Skill:"..gData.GetAction().Skill)
        debugLog("gData.GetAction().Type:"..gData.GetAction().Type)
        debugLog("gData.GetAction().Element:"..gData.GetAction().Element)
        debugLog("============ Action reference Data Dump ============")
        debugLog("action.Name: "..action.Name)
        debugLog("action.Skill:"..action.Skill)
        debugLog("action.Type:"..action.Type)
        debugLog("action.Element:"..action.Element)
        debugLog("sets."..player.MainJob.."['Magic']["..action.Skill.."]")
    end
    
    if (itemInArray(autoCancelList,spell)) then
        cancelBuff(action.Name, action.CastTime, gSettings.FastCast)
    elseif spellContains(action.Name, "Spikes") then
        cancelBuff(action.Name, action.CastTime, gSettings.FastCast, "34")
        cancelBuff(action.Name, action.CastTime, gSettings.FastCast, "35")
        cancelBuff(action.Name, action.CastTime, gSettings.FastCast, "38")
    end
        
    if (sets[player.MainJob]['Magic'][skill]) then
        equip(sets[player.MainJob]['Magic'][skill])
        if (debugEnabled()) then debugLog("Equipping sets["..player.MainJob.."]['Magic']["..skill.."]") end
    elseif (sets.AllJobs['Midcast'][skill]) then
        equip(sets.AllJobs['Midcast'][skill])
        if (debugEnabled()) then debugLog("Equipping sets.AllJobs['Midcast']["..skill.."]") end
    end

    if (sets[player.MainJob]['Magic'][spell]) then
        equip(sets[player.MainJob]['Magic'][spell])
        if (debugEnabled()) then debugLog("Equipping sets["..player.MainJob.."]['Magic']["..spell.."]") end
    elseif sets.AllJobs['Midcast'][spell] then
        equip(sets.AllJobs['Midcast'][spell])
        if (debugEnabled()) then debugLog("Equipping sets.AllJobs['Midcast']["..spell.."]") end
    end
    if ((spellContains(spell, "Cure")) or (spellContains(spell,"Cura"))) then
        equip(sets[player.MainJob]['Magic'].Cure)
        if (debugEnabled()) then debugLog("Equipping sets["..player.MainJob.."]['Magic'].Cure") end
    end

    if (itemInArray(enspells,spell)) then
        equip(sets.AllJobs['Midcast']['Enspell'])
        if (debugEnabled()) then debugLog("Equipping sets.AllJobs['Midcast']['Enspell']") end
    end

    if (itemInArray(conserveMP_list,spell)) then
        equip(sets.AllJobs['ConserveMP'])
        if (debugEnabled()) then debugLog("Equipping sets.AllJobs['ConserveMP']") end

    end

    if ((player.MainJob == "BLU") or (player.SubJob=="BLU")) then
        if (itemInArray(BLU_Nukes,spell)) then
            if (sets[player.MainJob]['Magic']['BLU_Nukes']) then
                equip(sets[player.MainJob]['Magic']['BLU_Nukes'])
                if (debugEnabled()) then debugLog("Equipping sets["..player.MainJob.."]['Magic']['BLU_Nukes']") end
            elseif (sets.AllJobs['Midcast']['BLU_Nukes']) then
                equip(sets.AllJobs['Midcast']['BLU_Nukes'])
                if (debugEnabled()) then debugLog("Equipping sets.AllJobs['Midcast']['BLU_Nukes']") end
            end
        elseif (itemInArray(BLU_Buffs,spell)) then
            if (sets[player.MainJob]['Magic']['BLU_Buffs']) then
                equip(sets[player.MainJob]['Magic']['BLU_Buffs'])
                if (debugEnabled()) then debugLog("Equipping sets["..player.MainJob.."]['Magic']['BLU_Buffs']") end
            elseif (sets.AllJobs['Midcast']['BLU_Buffs']) then
                equip(sets.AllJobs['Midcast']['BLU_Buffs'])
                if (debugEnabled()) then debugLog("Equipping sets.AllJobs['Midcast']['BLU_Buffs']") end
            end
        elseif (itemInArray(BLU_Physical,spell)) then
            if (sets[player.MainJob]['Magic']['BLU_Physical']) then
                equip(sets[player.MainJob]['Magic']['BLU_Physical'])
                if (debugEnabled()) then debugLog("Equipping sets["..player.MainJob.."]['Magic']['BLU_Physical']") end
            elseif (sets.AllJobs['Midcast']['BLU_Physical']) then
                equip(sets.AllJobs['Midcast']['BLU_Physical'])
                if (debugEnabled()) then debugLog("Equipping sets.AllJobs['Midcast']['BLU_Physical']") end
            end
        end
    end

    if ((player.MainJob=="SCH") or (player.SubJob=="SCH")) then
		if (itemInArray(Helixes,spell)) then
			if activeArts == "default" then
				equip(sets[player.MainJob]['Magic']['Helixes'])
                if (debugEnabled()) then debugLog("Equipping sets["..player.MainJob.."]['Magic']['Helixes']") end

			else
				equip(sets[player.MainJob]['Magic']['Helixes'][activeArts])
                if (debugEnabled()) then debugLog("Equipping sets["..player.MainJob.."]['Magic']['Helixes']["..activeArts.."]") end
			end
		end
	end

    if ((player.MainJob=="NIN") or (player.SubJob=="NIN")) then
        if (itemInArray(NIN_nukes,spell)) then
            -- equip(sets[player.MainJob]['Nuke'])
            -- if (sets[player.MainJob]['Nuke'][action.Element]) then
                equip(sets[player.MainJob]['Nuke'][action.Element])
                if (debugEnabled()) then debugLog("Equipping sets["..player.MainJob.."]['Nuke']["..action.Element.."]") end
            -- end
        end
    end
    
    weatherCheck(action.Element, action.Skill) -- Calling skill is checked by weatherCheck

end

--commonMidshotRules documentation
-- @param sets: Your sets table
-- @param spell: Spell data/name [recommend: gData.GetAction().Name]
-- @param skill: The skill of the action [recommend: gData.GetAction().Skill]
-- @param type: The 'type' of skill [recommend: gData.GetAction().Type]
function commonMidshotRules (sets, spell, skill, type)

end

--commonWeaponskillRules documentation
-- @param sets: Your sets table
-- @param spell: Spell data/name [recommend: gData.GetAction().Name]
-- @param skill: The skill of the action [recommend: gData.GetAction().Skill]
-- @param type: The 'type' of skill [recommend: gData.GetAction().Type]
function commonWeaponskillRules (sets, spell, skill, type)
    if (sets.WeaponSkills[spell]) then
	    equip(sets.WeaponSkills[spell])
	end
end

infoLog('Loaded common rules')