--For THF, these weapons probably won't change much
weapons = "Daggers"
-- Balanced, Aggressive, or Defensive TP sets.
engagedType = "Balanced"
-- Balanced, or Defensive Idle sets.
idleType = "Balanced"

buffs = T{"Protect V","Shell V","Haste II", "Blink","Stoneskin","Aquaveil","Phalanx", "Temper", "Gain-DEX", "Refresh II", "Shock Spikes"}

wsChain = {}
wsChain['4 Step'] = {"Mandalic Stab","Evisceration","Rudra's Storm","Rudra's Storm"}
wsChain['5 Step'] = {"Rudra's Storm","Mandalic Stab","Evisceration","Rudra's Storm","Rudra's Storm"}
wsChain['6 Step'] = {"Mandalic Stab","Evisceration","Exenterator","Rudra's Storm","Evisceration","Rudra's Storm"}

wsChain = wsChain[wsChainSteps ..' Step']