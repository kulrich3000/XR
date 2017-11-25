// ***************************
// LOG_Constants für Missionen
// ---------------------------
// (LOG_MISSION)
// ***************************
//ADDON
const string	TOPIC_Addon_PickForConstantino	=	"Herbs for Constantino";			
const string	TOPIC_Addon_Greg_NW				=	"The man with the eye patch";			
const string	TOPIC_Addon_Ornament			=	"The portal";			
const string	TOPIC_Addon_HolRiordian			=	"Riordian";			
const string	TOPIC_Addon_RingOfWater			=	"The' Ring of Water";
const string	TOPIC_Addon_KDW					=	"The Water Magicians";
const string	TOPIC_Addon_CavalornTheHut		=	"Cavalorn's old hut";
var int			TOPIC_End_CavalornTheHut;
const string	TOPIC_Addon_KillBrago			=	"Cavalorn's Bandits";
const string	TOPIC_Addon_Bandittrader		=	"The arms dealer of the bandits";
const string	TOPIC_Addon_MissingPeople		=	"The Missing Persons";
const string	TOPIC_Addon_WhoStolePeople		=	"Where are the missing people?";
const string	TOPIC_Addon_BringRangerToLares	=	"Replacement for Lares";
const string	TOPIC_Addon_TeleportsNW			=	"The Teleport Stones";
const string	TOPIC_Addon_Stoneplates			=	"stone tablets";
const string	TOPIC_Addon_RangerHelpKDF		=	"The easy way to the monastery";
var int			TOPIC_End_RangerHelpKDF;
const string	TOPIC_Addon_RangerHelpSLD		=	"The easy way to the mercenaries";
var int			TOPIC_End_RangerHelpSLD;
const string	TOPIC_Addon_RangerHelpMIL		=	"The easy way to militia";
const string	TOPIC_Addon_Joe					=	"Joe";
var int			TOPIC_END_Joe;
const string	TOPIC_Addon_BromorsGold			=	"Bromor's golden bowl";

const string	TOPIC_Addon_TeleportsADW		=	"The power of the focus stones";
const string	TOPIC_Addon_Sklaven				=	"Raven's slaves";
const string	TOPIC_Addon_Relicts				=	"relics"; 
const string	TOPIC_Addon_RavenKDW			=	"Raven"; 
const string	TOPIC_Addon_Lance				=	"The vanguard of the Water Magicians"; 
var int			TOPIC_End_Lance;
const string	TOPIC_Addon_HousesOfRulers		=	"The mansions of the builders"; 
const string	TOPIC_Addon_CanyonOrcs			=	"The Orcs in the Canyon"; 
var int			TOPIC_END_CanyonOrcs;
const string	TOPIC_Addon_BDTRuestung			=	"An armour of the bandits"; 
const string	TOPIC_Addon_Quarhodron			=	"The power of the dead guards"; 
const string	TOPIC_Addon_Klaue				=	"The Claw of Beliar"; 
var int			TOPIC_END_Klaue;
const string	TOPIC_Addon_Kammern				=	"The chambers of the temple"; 
const string	TOPIC_Addon_Flut				=	"The Sunken City"; 
var int			TOPIC_END_Flut;
const string	TOPIC_Addon_BaltramSkipTrade	=	"pirate trade";  
var int			TOPIC_END_BaltramSkipTrade; 							
const string	TOPIC_Addon_FarimsFish			=	"Trouble with militia"; 
const string	TOPIC_Addon_Lucia				=	"Lucia"; 
var int			TOPIC_END_Lucia;
const string	TOPIC_Addon_Erol				=	"dealer raid"; 


const string	TOPIC_Addon_VatrasAbloesung		=	"Replacement for Vatras";

// ******** Texte, die in alte Topics gepackt werden müssen *************

const string	LogText_Addon_SCKnowsMisspeapl 		=	"Many citizens of Khorinis are missing. No one seems to know what happened to them.";
const string	LogText_Addon_WilliamLeiche	 		=	"The body of a fisherman lies in the ruins east of the water magician's camp.";
const string	LogText_Addon_RavensGoldmine	 	=	"Raven has a mine and lets the slaves dig for gold there.";
const string	LogText_Addon_KDWRight			 	=	"Only a water magician has the right to include someone in the' Ring of Water'.";
const string	LogText_Addon_WilliamMissing	 	=	"William, one of the fishermen of the port of Khorinis, is one of the missing persons.";
const string	LogText_Addon_Relicts	 			=	"In Adano's temple, the rulers of Jharkendar have built 3 chambers full of deadly puzzles to stop all intruders. The coloured relics of the builders are the key to this.";
const string	LogText_Addon_SkipsRumToBaltram		=	"Skip gave me rum. He wants me to take him to Baltram.";

// Teach
const string	LogText_Addon_Cavalorn_Teach		=	"Cavalorn can show me how to use the bow and teach me to sneak.";
const string	LogText_Addon_SaturasTeach	 		=	"Saturas can teach me the magic circle.";
const string	LogText_Addon_MyxirTeach	 		=	"Myxir can teach me to read the foreign language of the builders.";
const string	LogText_Addon_RiordianTeach	 		=	"Riordian can teach my will-o' -the-wisp to look for things.";
const string	LogText_Addon_RiordianTeachAlchemy 	=	"Riordian can teach me the art of potions.";
const string	LogText_Addon_NefariusTeach			=	"Nefarius teaches me how to make runes.";
const string	LogText_Addon_Erol_Teach	 		=	"Dealer Erol can show me how to become stronger.";

// Trade
const string	LogText_Addon_CronosTrade	 		=	"The water magician Cronos has some interesting things to trade with me.";
const string	LogText_Addon_VatrasTrade	 		=	"Vatras takes away the strange stone tablets that can be found in this area. He promised me he'd pay me a fair price for this.";
const string	LogText_Addon_MartinTrade	 		=	"Martin the victualer can sell me things from the paladin's stock.";
const string	LogText_Addon_ErolTrade	 			=	"The dealer Erol can sell me all kinds of goods. He has his hut between the tavern' Zur Toten Harpie' and Onars Hof.";

//WispDetector
const string	LogText_Addon_WispLearned 			=	"My Night Wisp can find the following things for me:";
const string	LogText_Addon_WispLearned_NF 		=	"melee weapons";
const string	LogText_Addon_WispLearned_FF	 	=	"Long-range Weapons and Ammunition";
const string	LogText_Addon_WispLearned_NONE 		=	"Gold, Keys and Utensils";
const string	LogText_Addon_WispLearned_RUNE 		=	"Runes and Spell Scrolls";
const string	LogText_Addon_WispLearned_MAGIC   	=	"Rings and Amulets";
const string	LogText_Addon_WispLearned_FOOD 		=	"Food and Plants";
const string	LogText_Addon_WispLearned_POTIONS 	=	"Potions, Magic and Regular";

//Language
const string	LogText_Addon_Language_1 			=	"I speak the language of the peasants. It is the common language of the builders.";
const string	LogText_Addon_Language_2 			=	"I speak the language of warriors.";
const string	LogText_Addon_Language_3 			=	"I speak the language of the priests.";























//Gothic 2
// ------ Kapitel 1 ------
const string	TOPIC_Bronkoeingeschuechtert	=	"The Lazy Farmer";			
const string	TOPIC_BalthasarsSchafe			=	"The forbidden pasture";			
const string	TOPIC_AkilsSLDStillthere		=	"pawn in distress";			
var int 		TOPIC_END_AkilsSLDStillthere;
const string	TOPIC_Wettsaufen				=	"Empty the pitcher in one go";			
const string	TOPIC_GaanSchnaubi				=	"The Snorting Creature";			
const string	TOPIC_GromAskTeacher			=	"The hungry hunter";			
const string	TOPIC_DragomirsArmbrust			=	"Dragomirs Armbrust";			
const string	TOPIC_KillLighthouseBandits		=	"Bandits in Jack's lighthouse";			
const string	TOPIC_HannaRetrieveLetter		=	"Lost?";			

// ------ Kapitel 2 ------
// ------ Kapitel 3 ------

const string	TOPIC_INNOSEYE					=	"The Eye of Innos";
var int 		TOPIC_END_INNOSEYE;
const string	TOPIC_DEMENTOREN				=	"The Seekers";
var int 		TOPIC_END_DEMENTOREN;
const string	TOPIC_Buster_KillShadowbeasts	=	"Shadow runner horns for Buster";
const string	TOPIC_Ulthar_HeileSchreine_PAL	=	"The desecrated shrines";
const string	TOPIC_TraitorPedro				=	"Pedro the traitor";
const string	TOPIC_SekobDMT					=	"The displaced peasant";
var int 		TOPIC_END_SekobDMT;
const string	TOPIC_AkilSchafDiebe			=	"sheep thieves";
const string	TOPIC_HealHilda					=	"Remedies for Hilda";
const string	TOPIC_MalethsGehstock			=	"Maleths Walking Cane";
var int 		TOPIC_END_MalethsGehstock;
const string	TOPIC_BengarALLEIN				=	"Alone and defenceless";
const string	TOPIC_MinenAnteile				=	"counterfeit mine shares";
var int 		TOPIC_END_MinenAnteile;
const string	TOPIC_RichterLakai				=	"The Judge Lakai";
const string	TOPIC_KillTrollBlack			=	"Black fur";
const string	TOPIC_Torlof_Dmt				=	"Torlof's fear of a black man.";
const string	TOPIC_KillHoshPak				=	"Hosh-Pak";
const string	TOPIC_Urshak					=	"original shak";

// ------ Kapitel 4 ------
const string	TOPIC_DRACHENJAGD				=	"The Dragon Hunt";
const string	TOPIC_Dragonhunter				=	"The Dragon Hunters";	 
const string	TOPIC_LobartsOrKProblem			=	"Lobart's Orcish Problems";			
var int 		TOPIC_END_LobartsOrKProblem;
const string	TOPIC_SylvioKillIceGolem		=	"Two ice creams for Sylvio";			
var int 		TOPIC_END_SylvioKillIceGolem;
const string	TOPIC_AngarsAmulett				=	"Angars Amulet";			
const string	TOPIC_JanBecomesSmith			=	"Jan and the Forge";			
const string	TOPIC_FerrosSword				=	"Feros? sword";			
const string	TOPIC_DRACHENEIERNeoras			=	"Neora's Dragon Egg Brew";			
const string	TOPIC_DRACHENEIER				=	"dragon eggs";			
var int 		TOPIC_END_DRACHENEIER;
const string	TOPIC_OrcElite					=	"The hordes of orcish elite warriors";			
var int  		TOPIC_END_OrcElite;	
const string	TOPIC_Dar_BringOrcEliteRing		=	"The swaggerer";			
const string	TOPIC_FoundVinosKellerei		=	"illicit distillation";			
const string	TOPIC_BrutusMeatbugs			=	"dirty room";			
var int  		TOPIC_END_BrutusMeatbugs;	
const string	TOPIC_Sengrath_Missing			=	"Disappeared in the darkness";			
var int  		TOPIC_END_Sengrath_Missing;	
const string	TOPIC_Talbin_Runs				=	"I gotta get out of here";			
var int  		TOPIC_END_Talbin_Runs;	
const string	TOPIC_KerolothsGeldbeutel		=	"larceny";			
var int   		TOPIC_END_KerolothsGeldbeutel;

// ------ Kapitel 5 ------
const string	TOPIC_BuchHallenVonIrdorath		=	"The Master of the Dragons";			
const string	TOPIC_RosisFlucht				=	"Rosis's Escape";			
const string	TOPIC_bringRosiBackToSekob		=	"Sekob misses his wife";			
const string	TOPIC_HealRandolph				=	"In withdrawal";
const string	TOPIC_GeroldGiveFood			=	"hunger";

// ------ Kapitel 6 ------
const string	TOPIC_HallenVonIrdorath			=	"Die Hallen von Irdorath";			
const string	TOPIC_BackToShip				=	"Back to the ship";			
const string	TOPIC_MyCrew					=	"My crew";			
