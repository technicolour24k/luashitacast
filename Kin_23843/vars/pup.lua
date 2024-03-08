--For THF, these weapons probably won't change much
weapons = "Katana"
-- Balanced, Aggressive, or Defensive TP sets.
engagedType = "Balanced"
-- Balanced, or Defensive Idle sets.
idleType = "Balanced"

buffs = T{"Protect V","Shell V","Haste II","Stoneskin","Aquaveil","Phalanx", "Temper", "Gain-INT", "Shock Spikes"}

wsChain = {}
wsChain['4 Step'] = {"Blade: Shun", "Blade: Hi", "Blade: Kamu", "Blade: Shun"}
wsChain['5 Step'] = {"Blade: Ei","Blade: Ku","Blade: Retsu","Blade: Hi","Blade: Hi"}
wsChain['6 Step'] = {"Blade: Ei","Blade: Jin","Blade: Ei", "Blade: Kamu", "Blade: Shun","Blade: Shun"}

wsChain = wsChain[wsChainSteps ..' Step']

infoLog('vars/'..mjob..' loaded')
