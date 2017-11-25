// ***************************
// LOG_Constants für Missionen
// ---------------------------
// (LOG_MISSION)
// ***************************
//ADDON
const string	TOPIC_Addon_PickForConstantino	=	"Ziola konstantynskie";			
const string	TOPIC_Addon_Greg_NW				=	"Mezczyzna z lata do oka";			
const string	TOPIC_Addon_Ornament			=	"Portal";			
const string	TOPIC_Addon_HolRiordian			=	"Riordian";			
const string	TOPIC_Addon_RingOfWater			=	"Pierscien wodny";
const string	TOPIC_Addon_KDW					=	"Magicy wody";
const string	TOPIC_Addon_CavalornTheHut		=	"Chata kawalerska";
var int			TOPIC_End_CavalornTheHut;
const string	TOPIC_Addon_KillBrago			=	"Bandity kawalerny";
const string	TOPIC_Addon_Bandittrader		=	"Dystrybutor broni bandytów";
const string	TOPIC_Addon_MissingPeople		=	"Osoby zaginione";
const string	TOPIC_Addon_WhoStolePeople		=	"Gdzie sa zaginione osoby?";
const string	TOPIC_Addon_BringRangerToLares	=	"Zastapienie Lares";
const string	TOPIC_Addon_TeleportsNW			=	"Kamienie teleportowe";
const string	TOPIC_Addon_Stoneplates			=	"kamienne tablice";
const string	TOPIC_Addon_RangerHelpKDF		=	"Latwa droga do klasztoru";
var int			TOPIC_End_RangerHelpKDF;
const string	TOPIC_Addon_RangerHelpSLD		=	"Latwa droga do najemników";
var int			TOPIC_End_RangerHelpSLD;
const string	TOPIC_Addon_RangerHelpMIL		=	"Latwa droga do milicji";
const string	TOPIC_Addon_Joe					=	"Joe";
var int			TOPIC_END_Joe;
const string	TOPIC_Addon_BromorsGold			=	"Zlota miska bromorska";

const string	TOPIC_Addon_TeleportsADW		=	"Sila kamieni ogniskowych";
const string	TOPIC_Addon_Sklaven				=	"Slugi Raven's slave";
const string	TOPIC_Addon_Relicts				=	"relikwie"; 
const string	TOPIC_Addon_RavenKDW			=	"Raven"; 
const string	TOPIC_Addon_Lance				=	"awangarda magów wody"; 
var int			TOPIC_End_Lance;
const string	TOPIC_Addon_HousesOfRulers		=	"Rezydencje budowniczych"; 
const string	TOPIC_Addon_CanyonOrcs			=	"Orki w kanionie"; 
var int			TOPIC_END_CanyonOrcs;
const string	TOPIC_Addon_BDTRuestung			=	"Zbroja bandytów"; 
const string	TOPIC_Addon_Quarhodron			=	"Moc zmarlych strazników"; 
const string	TOPIC_Addon_Klaue				=	"Claw Beliar"; 
var int			TOPIC_END_Klaue;
const string	TOPIC_Addon_Kammern				=	"Komory swiatyni"; 
const string	TOPIC_Addon_Flut				=	"Zanurzone miasto"; 
var int			TOPIC_END_Flut;
const string	TOPIC_Addon_BaltramSkipTrade	=	"handel piracki";  
var int			TOPIC_END_BaltramSkipTrade; 							
const string	TOPIC_Addon_FarimsFish			=	"Rozwiazywanie problemów z milicja"; 
const string	TOPIC_Addon_Lucia				=	"Lucja"; 
var int			TOPIC_END_Lucia;
const string	TOPIC_Addon_Erol				=	"rajdowiec"; 


const string	TOPIC_Addon_VatrasAbloesung		=	"Zastapienie Vatras";

// ******** Texte, die in alte Topics gepackt werden müssen *************

const string	LogText_Addon_SCKnowsMisspeapl 		=	"Wielu obywateli Khorinis jest zaginionych. Nikt nie zdaje sie wiedziec, co sie z nimi stalo.";
const string	LogText_Addon_WilliamLeiche	 		=	"Cialo rybaka lezy w ruinach na wschód od obozu magów wodnych.";
const string	LogText_Addon_RavensGoldmine	 	=	"Raven ma kopalnie i pozwala niewolnikom kopac tam zloto.";
const string	LogText_Addon_KDWRight			 	=	"Tylko magik wodny ma prawo wlaczyc kogos do 'pierscienia wody'.";
const string	LogText_Addon_WilliamMissing	 	=	"William, jeden z rybaków portu w Khorinis, jest jedna z osób zaginionych.";
const string	LogText_Addon_Relicts	 			=	"W swiatyni Adano, wladcy Jharkendara zbudowali 3 komory pelne zabójczych zagadek, aby zatrzymac wszystkich intruzów. Kluczem do tego sa kolorowe relikty budowniczych.";
const string	LogText_Addon_SkipsRumToBaltram		=	"Skip dal mi rum. Chce, abym zabral go do Baltram.";

// Teach
const string	LogText_Addon_Cavalorn_Teach		=	"Kawaler moze mi pokazac, jak uzywac kokardki i nauczyc mnie wymykac sie.";
const string	LogText_Addon_SaturasTeach	 		=	"Satura moze mnie nauczyc magicznego kola.";
const string	LogText_Addon_MyxirTeach	 		=	"Myxir moze nauczyc mnie czytac obcy jezyk budowniczych.";
const string	LogText_Addon_RiordianTeach	 		=	"Riordian moze nauczyc moja will-o' -tych, którzy szukaja rzeczy.";
const string	LogText_Addon_RiordianTeachAlchemy 	=	"Riordian moze nauczyc mnie sztuki eliksiru.";
const string	LogText_Addon_NefariusTeach			=	"Nefarius uczy mnie jak robic runy.";
const string	LogText_Addon_Erol_Teach	 		=	"Dealer Erol moze pokazac mi, jak sie wzmocnic.";

// Trade
const string	LogText_Addon_CronosTrade	 		=	"Magik wodny Cronos ma dla mnie kilka interesujacych rzeczy.";
const string	LogText_Addon_VatrasTrade	 		=	"Vatras zabiera dziwne kamienne tabliczki, które mozna znalezc w tym miejscu. Obiecal mi, ze zaplaci mi za to uczciwa cene.";
const string	LogText_Addon_MartinTrade	 		=	"Martin, prowianter moze mi sprzedawac rzeczy z zapasów paladynskich.";
const string	LogText_Addon_ErolTrade	 			=	"Dealer Erol moze sprzedac mi wszystkie rodzaje towarów. Ma swoja chate miedzy tawerna 'Zur Toten Harpie' a Onars Hof.";

//WispDetector
const string	LogText_Addon_WispLearned 			=	"Dla mnie mój Night Wisp moze znalezc nastepujace rzeczy:";
const string	LogText_Addon_WispLearned_NF 		=	"bron utarczkowa";
const string	LogText_Addon_WispLearned_FF	 	=	"Rangowana bron i amunicja";
const string	LogText_Addon_WispLearned_NONE 		=	"Zloto, klucze i przybory";
const string	LogText_Addon_WispLearned_RUNE 		=	"Rany i zwoje";
const string	LogText_Addon_WispLearned_MAGIC   	=	"Pierscienie i amulety";
const string	LogText_Addon_WispLearned_FOOD 		=	"Zywnosc i rosliny";
const string	LogText_Addon_WispLearned_POTIONS 	=	"Magia i inne eliksiry";

//Language
const string	LogText_Addon_Language_1 			=	"Mówie jezykiem chlopów. Jest to wspólny jezyk budowniczych.";
const string	LogText_Addon_Language_2 			=	"Mówie jezykiem wojowników.";
const string	LogText_Addon_Language_3 			=	"Mówie jezykiem kaplanów.";























//Gothic 2
// ------ Kapitel 1 ------
const string	TOPIC_Bronkoeingeschuechtert	=	"Rolnik Lazy' ego";			
const string	TOPIC_BalthasarsSchafe			=	"Zabronione pastwiska";			
const string	TOPIC_AkilsSLDStillthere		=	"zapadka w niebezpieczenstwie";			
var int 		TOPIC_END_AkilsSLDStillthere;
const string	TOPIC_Wettsaufen				=	"Opróznic dzbanek za jednym razem";			
const string	TOPIC_GaanSchnaubi				=	"Twórczosc porwania";			
const string	TOPIC_GromAskTeacher			=	"Glodny mysliwy";			
const string	TOPIC_DragomirsArmbrust			=	"Dragomirs Armbrust";			
const string	TOPIC_KillLighthouseBandits		=	"Bandity w latarni morskiej Jacka";			
const string	TOPIC_HannaRetrieveLetter		=	"Stracony?";			

// ------ Kapitel 2 ------
// ------ Kapitel 3 ------

const string	TOPIC_INNOSEYE					=	"Oko Inno";
var int 		TOPIC_END_INNOSEYE;
const string	TOPIC_DEMENTOREN				=	"Osoby poszukujace";
var int 		TOPIC_END_DEMENTOREN;
const string	TOPIC_Buster_KillShadowbeasts	=	"Rogi trabki cieniowane dla Buster Buster";
const string	TOPIC_Ulthar_HeileSchreine_PAL	=	"kapliczki zbezczeszczone";
const string	TOPIC_TraitorPedro				=	"Pedro sprzedawczyk";
const string	TOPIC_SekobDMT					=	"wysiedlony chlop";
var int 		TOPIC_END_SekobDMT;
const string	TOPIC_AkilSchafDiebe			=	"zlodzieje owiec";
const string	TOPIC_HealHilda					=	"Srodki odwolawcze dla Hilda";
const string	TOPIC_MalethsGehstock			=	"Malezje Chodzace trzciny cukrowej";
var int 		TOPIC_END_MalethsGehstock;
const string	TOPIC_BengarALLEIN				=	"Samotny i bezbronny";
const string	TOPIC_MinenAnteile				=	"podrobione udzialy w kopalni";
var int 		TOPIC_END_MinenAnteile;
const string	TOPIC_RichterLakai				=	"Sedzia Lakaj";
const string	TOPIC_KillTrollBlack			=	"Czarne futro";
const string	TOPIC_Torlof_Dmt				=	"Strach Torlofa przed czarnym mezczyzna.";
const string	TOPIC_KillHoshPak				=	"Hosh-Pak";
const string	TOPIC_Urshak					=	"wstrzasac oryginalny";

// ------ Kapitel 4 ------
const string	TOPIC_DRACHENJAGD				=	"polowanie na smoka";
const string	TOPIC_Dragonhunter				=	"Myslacze smoka";	 
const string	TOPIC_LobartsOrKProblem			=	"Arkadowe problemy Lobarta";			
var int 		TOPIC_END_LobartsOrKProblem;
const string	TOPIC_SylvioKillIceGolem		=	"Dwa lody lodowe dla Sylvio";			
var int 		TOPIC_END_SylvioKillIceGolem;
const string	TOPIC_AngarsAmulett				=	"Angielski Amulet";			
const string	TOPIC_JanBecomesSmith			=	"Jan i kuznia";			
const string	TOPIC_FerrosSword				=	"Feord Miecza?";			
const string	TOPIC_DRACHENEIERNeoras			=	"Neora's Dragon Egg Brew Jajgara";			
const string	TOPIC_DRACHENEIER				=	"jaja smoka";			
var int 		TOPIC_END_DRACHENEIER;
const string	TOPIC_OrcElite					=	"hordy elitarnych wojowników orkiestrowych";			
var int  		TOPIC_END_OrcElite;	
const string	TOPIC_Dar_BringOrcEliteRing		=	"swaggerer";			
const string	TOPIC_FoundVinosKellerei		=	"nielegalna destylacja";			
const string	TOPIC_BrutusMeatbugs			=	"zabrudzony pokój";			
var int  		TOPIC_END_BrutusMeatbugs;	
const string	TOPIC_Sengrath_Missing			=	"Zaginal w ciemnosci";			
var int  		TOPIC_END_Sengrath_Missing;	
const string	TOPIC_Talbin_Runs				=	"wyprowadzilem sie stad.";			
var int  		TOPIC_END_Talbin_Runs;	
const string	TOPIC_KerolothsGeldbeutel		=	"larwa";			
var int   		TOPIC_END_KerolothsGeldbeutel;

// ------ Kapitel 5 ------
const string	TOPIC_BuchHallenVonIrdorath		=	"Mistrz smoków";			
const string	TOPIC_RosisFlucht				=	"Ucieczka Rosis's Escape";			
const string	TOPIC_bringRosiBackToSekob		=	"Sekob teskni za zona";			
const string	TOPIC_HealRandolph				=	"Wycofanie";
const string	TOPIC_GeroldGiveFood			=	"glód";

// ------ Kapitel 6 ------
const string	TOPIC_HallenVonIrdorath			=	"Die Hallen von Irdorath";			
const string	TOPIC_BackToShip				=	"Powrót na statek";			
const string	TOPIC_MyCrew					=	"Moja ekipa";			
