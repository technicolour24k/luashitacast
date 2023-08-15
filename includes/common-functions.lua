-- itemInArray documentation
-- @param tab: The table to check
-- @param val: The value we're looking in the table for
function itemInArray (tab, val)
    for index, value in ipairs(tab) do
        if value == val then
            return true
        end
    end
    return false
end

function equip(set)
    gFunc.EquipSet(set)
end

-- evaluateVariableValue documentation
-- @param varName: Variable name to evaluate the contents of. Used in THF to get the contents of statusType when evaluated into either idleType or engagedType.
function evaluateVariableValue(varName)
    local func = loadstring("return " .. varName)
    if func then
      return func()
    end
  end


-- spellContains documentation
-- @param spell: The name of the spell you're comparing against. Recommendation: gData.GetAction().Name
-- @param contains: The string you're looking for
function spellContains(spell, contains)
	if (string.find(spell,contains)) then
		return true
	else
		return false
	end
end

function infoLog(text)
    gFunc.Echo(2, "[Info] "..text)
end

function debugLog(text)
    gFunc.Echo(3, "[Debug] "..text)
end

function errorLog(text)
    gFunc.Echo(68, "[Error] "..text)
end

function sendCommand(cmd)
    AshitaCore:GetChatManager():QueueCommand(-1, cmd);
end

function buffIsActive(buff)
    if (gData.GetBuffCount(buff) >0) then
		-- infoLog("Buff found: "..buff)
        return true
    else
		-- infoLog("Buff not found: "..buff)
        return false
    end
end

function clearStatuses()	
    local remedyListLength = #remedy_list
    local remedyOintmentListLength = #remedyOintment_list
    local panaceaListLength = #panacea_list
    local holyWaterListLength = #holyWater_list		
       -- Fail safe in case this accidentally triggers. Should be checked by the calling LUA. 
       if (config.oneClickRemedies) then
       for i=1, holyWaterListLength do
          if (buffIsActive(holyWater_list[i])) then
              sendCommand('/item "Hallowed Water" <me>')
              sendCommand('/item "Holy Water" <me>')
              break
          end
      end
      for i=1, remedyListLength do
           if (buffIsActive(remedy_list[i])) then
               sendCommand('/item "Remedy" <me>')
               break
           end
       end	
       for i=1, remedyOintmentListLength do
           if (buffIsActive(remedyOintment_list[i])) then
               sendCommand('/item "Rmdy. Ointment" <me>')
               break
           end
       end	
       for i=1, panaceaListLength do
           if (buffIsActive(panacea_list[i])) then
               sendCommand('/item "Panacea" <me>')
               break
           end
       end
    end
end

-- enemyImmunityCheck documentation
-- @param mob: The name of the mob, recommend: gData.GetActionTarget().Name
-- @param spell: The name of the spell, recommend: gData.GetAction().Name
function enemyImmunityCheck (mob,spell)
	if (enemy[mob]) then
		for key,value in pairs(enemy[mob]) do 
			if (spellContains(spell,value)) then
				infoLog(mob .. " is immune to " .. value .. ". Cancelling spell")
				gFunc.CancelAction()
			end
		end
	end
end

-- wait documentation
-- @param time: The time you want to wait, in seconds
function wait (time)
	coroutine.sleep(time)
	return true
end


--- CancelBuff documentation
-- @param spell: The name of the spell you're using. Recommendation: spell.english
-- @param casttime: The base cast time of the spell you're using. Recommendation: spell.cast_time
-- @param FC: The amount of FastCast you will have
-- @param buff: The buff name you're targeting (e.g. "Sneak")
-- @param skill: The type of skill you're using, e.g. JobAbility, EnhancingMagic, etc.
function cancelBuff(spell, casttime, FC, buff, skill) --Requires debuff addon

	--Setup amount of Fast Cast available
	local FastCastAmount = FC
	
	-- Multiply out Fast Cast - 80% Fast Cast will result in a 0.2 multiplier (20%)
	-- Setting FastCastAmount properly lets FastCastMultiplier to determine how quickly we need to cancel buffs
	local FastCastMultiplier = ((100 - FastCastAmount)/100)
	if (config.showFastCastInfo) then infoLog("[FastCastMultiplier] FastCastMultiplier: ((100 - " .. FastCastAmount..") /100 = " .. FastCastMultiplier) end

	--Last responsible moment to cancel is 30% of your total FastCastMultiplier - 80% Fast Cast means 20% total cast time (10s => 2s). Take 75% of this final amount to cancel out, stopping any rogue late cancels
	FastCastMultiplier = FastCastMultiplier*0.3
	if (config.showFastCastInfo) then infoLog("[FastCastMultiplier] Cancel After: ((FastCastMultiplier * 0.75 = " .. FastCastMultiplier) end

	if (itemInArray(autoCancelList,spell)) then
		infoLog("[AutoCancel List] "..spell.." found in auto-cancel list.")

		if (config.showFastCastInfo) then
			infoLog("[FCInfo] Base casting time: " ..casttime)
			infoLog("[FCInfo] Fast Cast Amount: " ..FastCastAmount.."%. Fast Cast Multiplier is: " ..FastCastMultiplier..". Cancelling spells at "..(FastCastMultiplier*100).."%.")
		end
		
		if (not(skill == "JobAbility") and not(skill == "Jig")) then
			delay = ((casttime * FastCastMultiplier)/1000)
		else
			delay = 0
		end
		
		if (config.showCancelInfo) then
			infoLog("[CancelInfo] Delay to cancel buff: " ..delay)
		end
		
		if buff == nil then --if we haven't passed a buff down, cancel the spell
			wait(delay)
			sendCommand('/cancel '..spell)
			if (config.showCancelInfo) then
				infoLog("Cancelling "..spell.." in "..delay.."s")
			end
		else
			wait(delay)
			sendCommand('/cancel '..buff)
			if (config.showCancelInfo) then
				infoLog("Cancelling "..buff.." in "..delay.."s [Buff Parameter Sent]")
			end
		end
	end
end

-- announceSpell documentation
-- @param spell: The name of the spell you're using. Recommendation: spell.english
-- @param target: The target of the spell you're using. Recommendation: spell.target.name
-- @param chatmode: The chatmode you want to send info through. Recommendation: p
function announceSpell(spell,target,chatmode)
	local announcementList = T{"Accomplice","Collaborator","Stun"}
	if (announcementList:contains(spell)) then
		sendCommand('/'..chatmode..' '..spell..' => '..target)
	end
end

function weatherCheck(ele, skill)
    local env = gData.GetEnvironment()
    
	if (debugEnabled()) then
		debugLog("=== weatherCheck ===")
		debugLog("Skill: "..skill)
		debugLog("Element: "..ele)
		debugLog("Weather Element: "..env.WeatherElement)
		debugLog("Day Element: ".. env.DayElement)
	end

    if not (skill) then skill = null end

	if ((itemInArray(magicList,skill)) or (skill==null)) then
		if ((ele == env.WeatherElement) or (ele == env.DayElement)) then
			infoLog('Weather or Day element matches spell element')
			equip(sets.Obis[ele]) --Equip standard obi, force fallback below
			equip(sets.Obis['AIO']) --Force fallback onto Hachirin-no-Obi, just in case individual obis no longer exist
			if (sets[player.MainJob]['DayWeatherBonus']) then
				equip (sets[player.MainJob]['DayWeatherBonus'])
			end
		end
	end
end

function debugEnabled()
	if ((gSettings.Debug) and (config.debug)) then
		return true
	else
		return false
	end
end

infoLog("Loaded common functions")