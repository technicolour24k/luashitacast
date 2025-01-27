player = gData.GetPlayer();
mjob = player.MainJob
sjob = player.SubJob

config = {}
config.server = "NocSouls"
config.showSpellInfo = false --Show various facets of spell info - can be overwritten in individual LUAs
config.showFastCastInfo = false --Display Fast Cast info
config.showCancelInfo = false --Display info when cancelling buffs
config.oneClickRemedies = true --Activate remedies with a single command - defined in individual LUAs

config.debug = true
config.info = true
config.error = true
config.autosignet = false
signetTrack = false
signetCheckDelay = 300 --5min

thOn = false --TH Gear equip selection

wsChainSteps = 6
wsChainCounter = 1

activeArts = "default"

enspells = {"Enstone", "Enwater", "Enaero", "Enfire", "Enblizzard", "Enthunder", "Enlight","Endark", "Auspice"} --Store enspells for easily cancelling
conserveMP_list = --Store spells that get no benefit from Potency or anything outside ConserveMP
    {
    "Protect","Protect II","Protect III","Protect IV","Protect V","Protectra","Protectra II","Protectra III","Protectra IV","Protectra V",
    "Shell","Shell II","Shell III","Shell IV","Shell V","Shellra","Shellra II","Shellra III","Shellra IV","Shellra V",
    "Haste","Haste II",
    "Dia","Dia II","Dia III","Diaga",
    "Blaze Spikes","Ice Spikes","Shock Spikes",
    "Refresh","Refresh II"
}

eleWheel_list = {
    "Hyoton: Ichi", "Hyoton: Ni", "Hyoton: San",
    "Katon: Ichi", "Katon: Ni", "Katon: San",
    "Doton: Ichi", "Doton: Ni", "Doton: San",
    "Raiton: Ichi", "Raiton: Ni", "Raiton: San",
    "Suiton: Ichi", "Suiton: Ni", "Suiton: San",
    "Huton: Ichi", "Huton: Ni", "Huton: San"
}

CureSpells = {	'Cure', 'Cure II', 'Cure III', 'Cure IV', 'Cure V', 'Cure VI',
                'Curaga', 'Curaga II', 'Curaga III', 'Curaga IV', 'Curaga V',
                'Cura', 'Cura II', 'Cura III'}

StatSpells = {	'Poisona', 'Paralyna', 'Blindna', 'Silena', 'Stona', 'Viruna', 'Erase'}
RegenSpells = {'Regen', 'Regen II', 'Regen III', 'Regen IV', 'Regen V'}
Helixes = {'Geohelix','Hydrohelix','Anemohelix','Pyrohelix','Cryohelix','Ionohelix','Noctohelix','Luminohelix'}
Storms = {'Sandstorm','Rainstorm','Windstorm','Firestorm','Hailstorm','Thunderstorm','Voidstorm','Aurorastorm'}
NIN_nukes= {"Raiton: Ichi","Raiton: Ni","Raiton: San","Hyoton: Ichi","Hyoton: Ni","Hyoton: San","Huton: Ichi","Huton: Ni","Huton: San","Suiton: Ichi","Suiton: Ni","Suiton: San","Katon: Ichi","Katon: Ni","Katon: San","Doton: Ichi","Doton: Ni","Doton: San"}

BLU_Buffs = {"Nat. Meditation","Occultation","Erratic Flutter","Diamondhide","Magic Fruit"}
BLU_Nukes = {"Searing Tempest","Spectral Floe","Silent Storm","Entomb","Anvil Lightning","Scouring Spate","Palling Salvo","Atra. Libations", "Dark Orb", "Thermal Pulse"}
BLU_Physical = {"Thrashing Assault","Sinker Drill"}

--Below 4 lists are used by oneClickRemedies to know which statuses get assigned to which medicine
remedy_list = {"Blind","Paralysis","Silence","Poison"}
remedyOintment_list = {"Disease", "Plague"}
panacea_list = {"Bind", "Bio", "Burn", "Choke", "Dia", "Flash", "Frost", "Gravity", "Rasp", "Slow", "Stun", "Weight", "Attack Down", "Defense Down", "STR Down", "AGI Down", "DEX Down", "VIT Down","INT Down", "MND Down", "Max HP Down","Max MP Down"}
holyWater_list = {"Curse","Doom"}

magicList = {"White Magic", "Black Magic", "Summoning", "Ninjutsu", "Bard Song", "Blue Magic"}
obiList = {"Healing Magic","Elemental Magic","Dark Magic","Blue Magic"}

--Setup list of buffs to be autocancelled
autoCancelList = {"Enstone", "Enwater", "Enaero", "Enfire", "Enblizzard", "Enthunder", "Stoneskin", "Blaze Spikes","Ice Spikes", "Shock Spikes", "Sneak", "Spectral Jig"}

TOAUZones = {"Aht Urhgan Whitegate", "Al Zahbi","The Colosseum","Nashmau","Bhaflau Thickets","Caedarva Mire","Mount Zhayolm","Wajaom Woodlands","Halvung","Alzadaal Undersea Ruins","Aydeewa Subterrane","Arrapago Reef","Mamook","Hazhalm Testing Grounds","Navukgo Execution Chamber","Talacca Cove","The Ashu Talif","Ilrusi Atoll","Lebros Cavern","Leujaoam Sanctum","Mamool Ja Training Grounds","Nyzul Isle","Periqia","Arrapago Remnants","Bhaflau Remnants","Silver Sea Remnants","Zhayolm Remnants"}

WOTGZones = {"Castle Oztroja [S]", "Garlaige Citadel [S]", "Meriphataud Mountains [S]", "Sauromugue Champaign [S]", "Beadeaux [S]", "Crawlers' Nest [S]", "Pashhow Marshlands [S]", "Rolanberry Fields [S]", "Vunkerl Inlet [S]", "Beaucedine Glacier [S]", "Bastok Markets [S]", "Grauberg [S]", "North Gustaberg [S]", "Ruhotz Silvermines", "Batallia Downs [S]", "The Eldieme Necropolis [S]", "La Vaule [S]", "Jugner Forest [S]", "East Ronfaure [S]", "Everbloom Hollow", "Southern San d'Oria [S]", "Fort Karugo-Narugo [S]", "Ghoyu's Reverie", "Windurst Waters [S]", "West Sarutabaruta [S]", "The Threshold", "Walk of Echoes", "Provenance", "Xarcabard [S]", "Castle Zvahl Baileys [S]", "Castle Zvahl Keep [S]", "Throne Room [S]"}