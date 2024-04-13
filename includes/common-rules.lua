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
    if (cmd[1]=="blu") then
        debugLog("Received: "..cmd[1].."["..cmd[2].."]")
        debugLog("Spell: "..bluspells[cmd[2]].spell)
        debugLog("Target: "..bluspells[cmd[2]].target)
        sendCommand('/blusets setn 20 '..bluspells[cmd[2]].spell)
        coroutine.sleep(0.1)
        sendCommand('/ma "'..bluspells[cmd[2]].spell..'"<'..bluspells[cmd[2]].target..'>')
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
    -- ashita.events.register('packet_in', 'packet_in_callback1', function (e)
    --     -- Known packet IDs
    --     -- e.id 103 = status update
    --     -- e.id 14 = mob movements
    --     -- e.id 68 = mount up?
    --     -- e.id 23 = digging?

    --     infoLog(e.id)
    --     --if (e.id==68) then
    --         --equip(sets.Chocobo['Mount'])
    --     --end
    --     if (e.id == 26) then
    --         infoLog("26 triggered")
    --         equip(sets.Chocobo['Dig'])
    --     end
    --     if (e.id == 17) then
    --         infoLog("17 triggered")
    --         equip(sets.Chocobo['Dig'])
    --     end
    --     if (e.id == 47) then
    --         infoLog("47 triggered")
    --         equip(sets.Chocobo['Dig'])
    --     end
    -- end)
    -- Closing packet checks..

    if ((buffIsActive("Light Arts")) or (buffIsActive("Addendum: White"))) then
        activeArts = "Light Arts"
        debugLog("Light Arts found - setting activeArts to" ..activeArts)
    elseif ((buffIsActive("Dark Arts")) or (buffIsActive("Addendum: Black"))) then
        activeArts = "Dark Arts"
        debugLog("Dark Arts found - setting activeArts to" ..activeArts)
    end

    local temp = evaluateVariableValue(statusType)
    equipAppropriateGear()   
    debugLog("Equipping sets["..player.Status.."]["..evaluateVariableValue(statusType).."]")

    if (player.Status=="Engaged") then
        debugLog("Equipping sets["..player.Status.."]["..weapons.."]")
        equipAppropriateGear()
        debugLog("Equipping sets["..player.Status.."]["..evaluateVariableValue(statusType).."]")

        if (thOn) then
            equip(sets['Engaged']['TH'])
        end

        debugLog("Player Main Level: "..player.MainJobSync )
        debugLog("Player Subjob: "..player.SubJob)
        equip(sets[player.Status][weapons])

        if ((player.MainJobSync  < 99) and (player.SubJob == "MNK")) then
            debugLog("player.MainJobSync is under 99 ["..player.MainJobSync.."]")
            debugLog("player.SubJob is "..player.SubJob)
            equip(sets.default['90'])
            
            if (player.MainJobSync  > 69) then
                debugLog("player.MainJobSync is over 69 ["..player.MainJobSync.."]")
                equip(sets.default['70'])
            elseif (player.MainJobSync  > 49) then
                debugLog("player.MainJobSync is over 49 ["..player.MainJobSync.."]")
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

-- commonUnknownRules documentation
-- @param sets: Your sets table
function commonUnknownRules (sets)
    equip(sets.Chocobo['Dig'])
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
    
    if (itemInArray(autoCancelList,spell)) then
        cancelBuff(action.Name, action.CastTime, gSettings.FastCast)
    elseif spellContains(action.Name, "Spikes") then
        cancelBuff(action.Name, action.CastTime, gSettings.FastCast, "34")
        cancelBuff(action.Name, action.CastTime, gSettings.FastCast, "35")
        cancelBuff(action.Name, action.CastTime, gSettings.FastCast, "38")
    end
        
    if (sets[player.MainJob]['Magic'][skill]) then
        equip(sets[player.MainJob]['Magic'][skill])
        debugLog("Equipping sets["..player.MainJob.."]['Magic']["..skill.."]")
    elseif (sets.AllJobs['Midcast'][skill]) then
        equip(sets.AllJobs['Midcast'][skill])
        debugLog("Equipping sets.AllJobs['Midcast']["..skill.."]")
    end

    if (sets[player.MainJob]['Magic'][spell]) then
        equip(sets[player.MainJob]['Magic'][spell])
        debugLog("Equipping sets["..player.MainJob.."]['Magic']["..spell.."]")
    elseif sets.AllJobs['Midcast'][spell] then
        equip(sets.AllJobs['Midcast'][spell])
        debugLog("Equipping sets.AllJobs['Midcast']["..spell.."]")
    end
    if ((spellContains(spell, "Cure")) or (spellContains(spell,"Cura"))) then
        equip(sets[player.MainJob]['Magic'].Cure)
        debugLog("Equipping sets["..player.MainJob.."]['Magic'].Cure")
    end

    if (itemInArray(enspells,spell)) then
        equip(sets.AllJobs['Midcast']['Enspell'])
        debugLog("Equipping sets.AllJobs['Midcast']['Enspell']")
    end

    if (itemInArray(conserveMP_list,spell)) then
        equip(sets.AllJobs['ConserveMP'])
        debugLog("Equipping sets.AllJobs['ConserveMP']")

    end

    if ((player.MainJob == "BLU") or (player.SubJob=="BLU")) then
        if (itemInArray(BLU_Nukes,spell)) then
            if (sets[player.MainJob]['Magic']['BLU_Nukes']) then
                equip(sets[player.MainJob]['Magic']['BLU_Nukes'])
                debugLog("Equipping sets["..player.MainJob.."]['Magic']['BLU_Nukes']")
            elseif (sets.AllJobs['Midcast']['BLU_Nukes']) then
                equip(sets.AllJobs['Midcast']['BLU_Nukes'])
                debugLog("Equipping sets.AllJobs['Midcast']['BLU_Nukes']")
            end
        elseif (itemInArray(BLU_Buffs,spell)) then
            if (sets[player.MainJob]['Magic']['BLU_Buffs']) then
                equip(sets[player.MainJob]['Magic']['BLU_Buffs'])
                debugLog("Equipping sets["..player.MainJob.."]['Magic']['BLU_Buffs']")
            elseif (sets.AllJobs['Midcast']['BLU_Buffs']) then
                equip(sets.AllJobs['Midcast']['BLU_Buffs'])
                debugLog("Equipping sets.AllJobs['Midcast']['BLU_Buffs']")
            end
        elseif (itemInArray(BLU_Physical,spell)) then
            if (sets[player.MainJob]['Magic']['BLU_Physical']) then
                equip(sets[player.MainJob]['Magic']['BLU_Physical'])
                debugLog("Equipping sets["..player.MainJob.."]['Magic']['BLU_Physical']")
            elseif (sets.AllJobs['Midcast']['BLU_Physical']) then
                equip(sets.AllJobs['Midcast']['BLU_Physical'])
                debugLog("Equipping sets.AllJobs['Midcast']['BLU_Physical']")
            end
        end
    end

    if ((player.MainJob=="SCH") or (player.SubJob=="SCH")) then
		if (itemInArray(Helixes,spell)) then
			if activeArts == "default" then
				equip(sets[player.MainJob]['Magic']['Helixes'])
                debugLog("Equipping sets["..player.MainJob.."]['Magic']['Helixes']")

			else
				equip(sets[player.MainJob]['Magic']['Helixes'][activeArts])
                debugLog("Equipping sets["..player.MainJob.."]['Magic']['Helixes']["..activeArts.."]")
			end
		end
	end

    if ((player.MainJob=="NIN") or (player.SubJob=="NIN")) then
        if (itemInArray(NIN_nukes,spell)) then
            -- equip(sets[player.MainJob]['Nuke'])
            -- if (sets[player.MainJob]['Nuke'][action.Element]) then
                equip(sets[player.MainJob]['Nuke'][action.Element])
                debugLog("Equipping sets["..player.MainJob.."]['Nuke']["..action.Element.."]")
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