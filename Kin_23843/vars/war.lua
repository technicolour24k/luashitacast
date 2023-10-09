-- GAxe, GSword, Sword
weapons = "GAxe"
-- Balanced, Aggressive, or Defensive TP sets.
engagedType = "Balanced"
-- Balanced, or Defensive Idle sets.
-- idleType = "Balanced"

-- The type of magic we're shooting for:
-- MAB: Full MAB setup
-- MCrit: Focus on 100% crit rate, base set is MAB
-- MBurst: Focus on Magic Burst damage, base set is MCrit
MagStyle = "MAB"

-- Buffs
buffs = T{"Protect V","Shell V","Haste II", "Blink","Stoneskin","Aquaveil","Phalanx", "Temper", "Gain-MND", "Refresh II", "Ice Spikes"}

wsChain = {}
wsChain['4 Step'] = {}
wsChain['5 Step'] = {}
wsChain['6 Step'] = {"Infernal Scythe","Shadow of Death","Entropy","Quietus","Catastrophe","Quietus"}

wsChain = wsChain[wsChainSteps ..' Step']