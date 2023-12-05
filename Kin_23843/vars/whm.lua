-- Club, Staff, DualWield, Healer
weapons = "Club"
-- Balanced, Aggressive, or Defensive TP sets.
engagedType = "Balanced"
-- Balanced, or Defensive Idle sets.
idleType = "Balanced"


-- The type of magic we're shooting for:
-- MAB: Full MAB setup
-- MCrit: Focus on 100% crit rate, base set is MAB
-- MBurst: Focus on Magic Burst damage, base set is MCrit
MagStyle = "MCrit"

-- Buffs
buffs = T{"Protect V","Shell V","Haste II", "Blink","Stoneskin","Aquaveil","Phalanx", "Temper", "Gain-MND", "Refresh II", "Shock Spikes"}

wsChain = {}
wsChain['4 Step'] = {"Requiescat","Savage Blade","Knights of Round","Chant du Cygne"}
wsChain['5 Step'] = {"Savage Blade","Chant du Cygne","Knights of Round","Savage Blade","Chant du Cygne"}
wsChain['6 Step'] = {"Requiescat","Savage Blade","Chant du Cygne","Knights of Round","Savage Blade","Chant du Cygne"}

wsChain = wsChain[wsChainSteps ..' Step']
