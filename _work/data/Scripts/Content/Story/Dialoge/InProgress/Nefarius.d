INSTANCE Info_Mod_Nefarius_Hi (C_INFO)
{
	npc		= Mod_769_KDW_Nefarius_NW;
	nr		= 1;
	condition	= Info_Mod_Nefarius_Hi_Condition;
	information	= Info_Mod_Nefarius_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Szatan wyslal mnie.";
};

FUNC INT Info_Mod_Nefarius_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Nefarius_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Nefarius_Hi_15_00"); //Szatan wyslal mnie. Czy nastapil postep w tlumaczeniu napisów?
	AI_Output(self, hero, "Info_Mod_Nefarius_Hi_16_01"); //Poczyniono postepy, ale nadal jestesmy dalecy od zrozumienia czegos.
	AI_Output(self, hero, "Info_Mod_Nefarius_Hi_16_02"); //Nikt z nas nie zna tego jezyka. Staram sie zrozumiec znaczenie znaków. Dziala to jednak tylko przy wielu porównaniach i zalozeniach.
	AI_Output(self, hero, "Info_Mod_Nefarius_Hi_16_03"); //Tak wiec pokazanie pierwszych wyników moze potrwac jeszcze troche czasu.
};

INSTANCE Info_Mod_Nefarius_Saturas (C_INFO)
{
	npc		= Mod_769_KDW_Nefarius_NW;
	nr		= 1;
	condition	= Info_Mod_Nefarius_Saturas_Condition;
	information	= Info_Mod_Nefarius_Saturas_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Nefarius_Saturas_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Nefarius_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Saturas_NW_Argez4))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Nefarius_Saturas_Info()
{
	AI_Output(self, hero, "Info_Mod_Nefarius_Saturas_16_00"); //Dowiedzialem sie czegos nowego. Wydaje sie, ze jest pierscien, który pasuje do malego otworu w scianie obok portalu.
	AI_Output(self, hero, "Info_Mod_Nefarius_Saturas_16_01"); //Zgodnie z napisami, dla bezpieczenstwa pierscien ten zostal podzielony na cztery równe czesci i ukryty we wszystkich czterech kierunkach.
	AI_Output(self, hero, "Info_Mod_Nefarius_Saturas_16_02"); //Przed rozpoczeciem wyszukiwania nalezy porozmawiac z Merdarion.

	B_LogEntry	(TOPIC_MOD_PORTAL, "Nefarius mówi cos o pierscieniu, który móglby otworzyc portal. Pierscien ten byl jednak najwyrazniej podzielony i ukryty we wszystkich czterech kierunkach. Najpierw powinienem porozmawiac z Merdarionem.");
};

INSTANCE Info_Mod_Nefarius_PortalDicht (C_INFO)
{
	npc		= Mod_769_KDW_Nefarius_NW;
	nr		= 1;
	condition	= Info_Mod_Nefarius_PortalDicht_Condition;
	information	= Info_Mod_Nefarius_PortalDicht_Info;
	permanent	= 0;
	important	= 0;
	description	= "Nie sa to jednak szczególy bardzo precyzyjne.";
};

FUNC INT Info_Mod_Nefarius_PortalDicht_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Nefarius_Saturas))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Nefarius_PortalDicht_Info()
{
	AI_Output(hero, self, "Info_Mod_Nefarius_PortalDicht_15_00"); //Nie sa to jednak szczególy bardzo precyzyjne.
	AI_Output(self, hero, "Info_Mod_Nefarius_PortalDicht_16_01"); //No cóz, tutaj jest napisana historia. W zwiazku z tym w dawnej dolinie, dawno temu zwanej Jharkendarem, rzadzil bóg Radano.
	AI_Output(self, hero, "Info_Mod_Nefarius_PortalDicht_16_02"); //On byl dobroczynny i madry i wydawal sie byc o wiele blizej duchowo powiazany z mieszkancami, niz wiemy to dzisiaj od trzech bóstw.
	AI_Output(hero, self, "Info_Mod_Nefarius_PortalDicht_15_03"); //Jeszcze inny bóg? Idz dalej.....
	AI_Output(self, hero, "Info_Mod_Nefarius_PortalDicht_16_04"); //Cóz, wydawalo sie, ze mamy do czynienia z jakas katastrofa lub konfliktem. Nie moglem uzyskac dalszych informacji.
	AI_Output(self, hero, "Info_Mod_Nefarius_PortalDicht_16_05"); //W kazdym razie, obecnosc tego Boga nagle wydaje sie konczyc.... a wraz z ta katastrofa niemal cale zycie w Jharkendarze zostalo wymazane.
	AI_Output(self, hero, "Info_Mod_Nefarius_PortalDicht_16_06"); //Najwyrazniej tylko czterech budowniczych ucieklo i zamknelo portal. Chcieli uczyc sie na bledach z przeszlosci.
	AI_Output(self, hero, "Info_Mod_Nefarius_PortalDicht_16_07"); //Oni zlamali klucz i slubowali, ze nigdy wiecej nie spotkaja sie, aby pogrzebac przeszlosc na zawsze.
	AI_Output(self, hero, "Info_Mod_Nefarius_PortalDicht_16_08"); //Nastepnie sa one lamane w róznych kierunkach, tak aby kawalki klucza byly od siebie oddzielone.

	B_LogEntry	(TOPIC_MOD_PORTAL, "Po katastrofie w Jharkendarzu ucieklo tylko czterech budowniczych. Zlamali klucz i kazdy z nich poszedl w innym kierunku z jedna czescia.");
};

INSTANCE Info_Mod_Nefarius_VierErbauer (C_INFO)
{
	npc		= Mod_769_KDW_Nefarius_NW;
	nr		= 1;
	condition	= Info_Mod_Nefarius_VierErbauer_Condition;
	information	= Info_Mod_Nefarius_VierErbauer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy jest cokolwiek innego w pismach (....)? )";
};

FUNC INT Info_Mod_Nefarius_VierErbauer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Nefarius_PortalDicht))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Nefarius_VierErbauer_Info()
{
	AI_Output(hero, self, "Info_Mod_Nefarius_VierErbauer_15_00"); //Czy jest cos wiecej w pismach o dokladnych miejscach, do których wybrali sie budowniczowie?
	AI_Output(self, hero, "Info_Mod_Nefarius_VierErbauer_16_01"); //Nic szczególnego. Nalezy równiez pamietac, ze obszar ten mógl sie zmienic w ciagu ostatnich kilku stuleci.
	AI_Output(self, hero, "Info_Mod_Nefarius_VierErbauer_16_02"); //Chce jednak panstwu powiedziec jak najwiecej.
	AI_Output(self, hero, "Info_Mod_Nefarius_VierErbauer_16_03"); //Jeden z budowniczych, kaplan, chcial wyjechac na Zachód, aby stworzyc rezydencje i glosic madrosc starozytnego Adanosa.
	AI_Output(self, hero, "Info_Mod_Nefarius_VierErbauer_16_04"); //Niestety, nie mówi, co sie z nim stalo. Byc moze powinienes zapytac whorynie. Moze dyrektor moze cos o tym dowie sie w swoich starych ksiazkach.
	AI_Output(self, hero, "Info_Mod_Nefarius_VierErbauer_16_05"); //Ktos inny poszedl na poludnie. Poszedl tam szukac szczescia w kopalniach.
	AI_Output(self, hero, "Info_Mod_Nefarius_VierErbauer_16_06"); //Jednak wedlug pism swietych byl on tylko czlonkiem kasty uzdrowicieli.
	AI_Output(hero, self, "Info_Mod_Nefarius_VierErbauer_15_07"); //Co to oznacza?
	AI_Output(self, hero, "Info_Mod_Nefarius_VierErbauer_16_08"); //Cóz, nie bylo wówczas szlaku handlowego i komunikacyjnego miedzy Minentalem a Khorinisem.
	AI_Output(self, hero, "Info_Mod_Nefarius_VierErbauer_16_09"); //Wiec musialo tam byc duzo niebezpiecznych potworów. Nie wydaje mi sie, zeby jakis uzdrowiciel posunal sie bardzo daleko.
	AI_Output(hero, self, "Info_Mod_Nefarius_VierErbauer_15_10"); //Brzmi rozsadnie.
	AI_Output(self, hero, "Info_Mod_Nefarius_VierErbauer_16_11"); //Inny budowniczy, wojownik, chcial osiedlic sie w Khorinis, zalozyc rodzine i zyc w pokoju.
	AI_Output(self, hero, "Info_Mod_Nefarius_VierErbauer_16_12"); //Nazywal sie Onar. Byc moze jest polaczenie z duzym budowniczym.....
	AI_Output(hero, self, "Info_Mod_Nefarius_VierErbauer_15_13"); //Patrze na to z bliska.
	AI_Output(self, hero, "Info_Mod_Nefarius_VierErbauer_16_14"); //Ostatnim z ocalalych byl zabójczy straznik, który musial zostac znaleziony gdzies na pólnocy Khorinis.
	AI_Output(hero, self, "Info_Mod_Nefarius_VierErbauer_15_15"); //Przynajmniej co mu pozostalo.....
	AI_Output(self, hero, "Info_Mod_Nefarius_VierErbauer_16_16"); //Oczywiscie zdumiewajace byloby, gdyby on sam nadal zyl. (smiertelnicy)
	AI_Output(self, hero, "Info_Mod_Nefarius_VierErbauer_16_17"); //Spójrzcie na pólnoc od Khorinis, byc moze znajdziecie Panstwo miejsce godne smiercionosnego straznika.
	AI_Output(hero, self, "Info_Mod_Nefarius_VierErbauer_15_18"); //Dobrze, bede na drodze.

	B_LogEntry	(TOPIC_MOD_PORTAL, "Jeden z budowniczych udal sie na Zachód, aby stworzyc tam rezydencje. Mialem zapytac w Khorinis o historie przodka. Gubernator Khorinis moze mi w tym pomóc.");
	B_LogEntry	(TOPIC_MOD_PORTAL, "Na poludnie zostawiono uzdrowiciela. Nefarius uwaza jednak, ze nie dotarl za daleko, poniewaz w tym czasie przelecz górska do Minentalu byla na pewno zaludniona niebezpiecznymi potworami.");
	B_LogEntry	(TOPIC_MOD_PORTAL, "Onar, czlonek kasty Warrior, osiedlil sie w Khorinis i zalozyl rodzine. Nazwa ta przypomina nazwe dzisiejszego wielkiego rolnika. Moze jest jakies polaczenie?");
	B_LogEntry	(TOPIC_MOD_PORTAL, "Ostatni ocalaly, Gwardia Dead Guard, prowadzil na pólnoc. Spodziewam sie rozejrzec.");

	Wld_InsertItem	(ItMi_Ornament_Totenwaechter,	"FP_ITEM_ORNAMENT_TOTENWAECHTER");

	Mob_CreateItems	("ONAR KREMOWA KLATKA PIERSIOWA", ItMi_Ornament_Krieger, 1);

	B_StartOtherRoutine	(Mod_763_NONE_Gaan_NW, "ORNAMENT");
};

INSTANCE Info_Mod_Nefarius_PriesterOrnament (C_INFO)
{
	npc		= Mod_769_KDW_Nefarius_NW;
	nr		= 1;
	condition	= Info_Mod_Nefarius_PriesterOrnament_Condition;
	information	= Info_Mod_Nefarius_PriesterOrnament_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mam fragment kaplana.";
};

FUNC INT Info_Mod_Nefarius_PriesterOrnament_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Nefarius_VierErbauer))
	&& (Npc_HasItems(hero, ItMi_Ornament_Priester) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Nefarius_PriesterOrnament_Info()
{
	AI_Output(hero, self, "Info_Mod_Nefarius_PriesterOrnament_15_00"); //Mam fragment kaplana. Bylo to w Relendel w miescie Khorata.
	
	B_GiveInvItems	(hero, self, ItMi_Ornament_Priester, 1);

	AI_Output(self, hero, "Info_Mod_Nefarius_PriesterOrnament_16_01"); //W Khoracie? No cóz, teraz to juz mamy. Oto Twoja nagroda.

	B_GiveInvItems	(self, hero, ItMi_Gold, 250);

	B_GivePlayerXP	(200);

	B_LogEntry	(TOPIC_MOD_PORTAL, "Dalem Nefariusowi spektakl kaplana.");
};

INSTANCE Info_Mod_Nefarius_HeilerOrnament (C_INFO)
{
	npc		= Mod_769_KDW_Nefarius_NW;
	nr		= 1;
	condition	= Info_Mod_Nefarius_HeilerOrnament_Condition;
	information	= Info_Mod_Nefarius_HeilerOrnament_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mam ornament uzdrowiciela.";
};

FUNC INT Info_Mod_Nefarius_HeilerOrnament_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Nefarius_VierErbauer))
	&& (Npc_HasItems(hero, ItMi_Ornament_Heiler) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Nefarius_HeilerOrnament_Info()
{
	AI_Output(hero, self, "Info_Mod_Nefarius_HeilerOrnament_15_00"); //Mam ornament uzdrowiciela.
	
	B_GiveInvItems	(hero, self, ItMi_Ornament_Heiler, 1);

	AI_Output(self, hero, "Info_Mod_Nefarius_HeilerOrnament_16_01"); //Bardzo dobry. Oto nagroda.

	B_GiveInvItems	(self, hero, ItMi_Gold, 250);

	B_GivePlayerXP	(200);

	B_LogEntry	(TOPIC_MOD_PORTAL, "Kawalek uzdrowiciela dalem Nefariusa.");
};

INSTANCE Info_Mod_Nefarius_KriegerOrnament (C_INFO)
{
	npc		= Mod_769_KDW_Nefarius_NW;
	nr		= 1;
	condition	= Info_Mod_Nefarius_KriegerOrnament_Condition;
	information	= Info_Mod_Nefarius_KriegerOrnament_Info;
	permanent	= 0;
	important	= 0;
	description	= "Oto dzielo wojownika.";
};

FUNC INT Info_Mod_Nefarius_KriegerOrnament_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Nefarius_VierErbauer))
	&& (Npc_HasItems(hero, ItMi_Ornament_Krieger) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Nefarius_KriegerOrnament_Info()
{
	AI_Output(hero, self, "Info_Mod_Nefarius_KriegerOrnament_15_00"); //Oto dzielo wojownika.
	
	B_GiveInvItems	(hero, self, ItMi_Ornament_Krieger, 1);

	AI_Output(self, hero, "Info_Mod_Nefarius_KriegerOrnament_16_01"); //No cóz, gdzie ja znalezliscie?
	AI_Output(hero, self, "Info_Mod_Nefarius_KriegerOrnament_15_02"); //Byl to wielki rolnik w piersiach Onar.
	AI_Output(self, hero, "Info_Mod_Nefarius_KriegerOrnament_16_03"); //Ah tak, wiec obie te kwestie byly w rzeczywistosci powiazane.
	AI_Output(self, hero, "Info_Mod_Nefarius_KriegerOrnament_16_04"); //Oto Twoja nagroda.

	B_GiveInvItems	(self, hero, ItMi_Gold, 250);

	B_GivePlayerXP	(200);

	B_LogEntry	(TOPIC_MOD_PORTAL, "Dalem Nefariusowi kawalek wojownika.");
};

INSTANCE Info_Mod_Nefarius_TotenwaechterOrnament (C_INFO)
{
	npc		= Mod_769_KDW_Nefarius_NW;
	nr		= 1;
	condition	= Info_Mod_Nefarius_TotenwaechterOrnament_Condition;
	information	= Info_Mod_Nefarius_TotenwaechterOrnament_Info;
	permanent	= 0;
	important	= 0;
	description	= "Znalazlem ornament ochroniarza.";
};

FUNC INT Info_Mod_Nefarius_TotenwaechterOrnament_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Nefarius_VierErbauer))
	&& (Npc_HasItems(hero, ItMi_Ornament_Totenwaechter) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Nefarius_TotenwaechterOrnament_Info()
{
	AI_Output(hero, self, "Info_Mod_Nefarius_TotenwaechterOrnament_15_00"); //Znalazlem ornament ochroniarza.
	
	B_GiveInvItems	(hero, self, ItMi_Ornament_Totenwaechter, 1);

	AI_Output(self, hero, "Info_Mod_Nefarius_TotenwaechterOrnament_16_01"); //I które miejsce bylo godne ochroniarzy?
	AI_Output(hero, self, "Info_Mod_Nefarius_TotenwaechterOrnament_15_02"); //Kamienne kolo w poblizu czarnego trolla.
	AI_Output(self, hero, "Info_Mod_Nefarius_TotenwaechterOrnament_16_03"); //Tak wiec krag sloneczny, ciekawy.
	AI_Output(self, hero, "Info_Mod_Nefarius_TotenwaechterOrnament_16_04"); //Bardzo dobry. Oto mala nagroda dla Ciebie.

	B_GiveInvItems	(self, hero, ItMi_Gold, 250);

	B_GivePlayerXP	(200);

	B_LogEntry	(TOPIC_MOD_PORTAL, "Dalem Nefariusowi gre ochroniarza.");
};

INSTANCE Info_Mod_Nefarius_Komplett (C_INFO)
{
	npc		= Mod_769_KDW_Nefarius_NW;
	nr		= 1;
	condition	= Info_Mod_Nefarius_Komplett_Condition;
	information	= Info_Mod_Nefarius_Komplett_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co dzieje sie teraz?";
};

FUNC INT Info_Mod_Nefarius_Komplett_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Nefarius_PriesterOrnament))
	&& (Npc_KnowsInfo(hero, Info_Mod_Nefarius_HeilerOrnament))
	&& (Npc_KnowsInfo(hero, Info_Mod_Nefarius_KriegerOrnament))
	&& (Npc_KnowsInfo(hero, Info_Mod_Nefarius_TotenwaechterOrnament))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Nefarius_Komplett_Info()
{
	AI_Output(hero, self, "Info_Mod_Nefarius_Komplett_15_00"); //Co dzieje sie teraz?
	AI_Output(self, hero, "Info_Mod_Nefarius_Komplett_16_01"); //No cóz, teraz poskladam kawalki razem. Czas jednak minie.
	AI_Output(self, hero, "Info_Mod_Nefarius_Komplett_16_02"); //Mysle, ze chcial cos wam pokazac.

	Mod_OrnamentNefarius = Wld_GetDay();

	B_LogEntry	(TOPIC_MOD_PORTAL, "Nefarius zlozy teraz czesci. Chca, abym wrócil, gdy jestem z Riordianem.");
};

INSTANCE Info_Mod_Nefarius_NTag (C_INFO)
{
	npc		= Mod_769_KDW_Nefarius_NW;
	nr		= 1;
	condition	= Info_Mod_Nefarius_NTag_Condition;
	information	= Info_Mod_Nefarius_NTag_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy jestes gotowy?";
};

FUNC INT Info_Mod_Nefarius_NTag_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Riordian_PortalOeffnen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Nefarius_NTag_Info()
{
	AI_Output(hero, self, "Info_Mod_Nefarius_NTag_15_00"); //Czy jestes gotowy?
	AI_Output(self, hero, "Info_Mod_Nefarius_NTag_16_01"); //Tak, oto pierscien.

	B_GiveInvItems	(self, hero, ItMi_PortalRing_Addon, 1);

	AI_Output(self, hero, "Info_Mod_Nefarius_NTag_16_02"); //Umiesc go w dostarczonym otworze i przejdz przez portal. Bedziemy Cie sledzic. Mozesz rozejrzec sie przez chwile.

	B_LogEntry	(TOPIC_MOD_PORTAL, "Nefarius dal mi pierscionek. Musze wlozyc pierscien i przejsc przez portal. Inni pójda za mna.");
	B_SetTopicStatus	(TOPIC_MOD_PORTAL, LOG_SUCCESS);
}; 

instance Info_Mod_Nefarius_Runen	(C_INFO)
{
	npc		= Mod_769_KDW_Nefarius_NW;
	nr		= 1;
	condition	= Info_Mod_Nefarius_Runen_Condition;
	information	= Info_Mod_Nefarius_Runen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Naucz mnie (tworzac runy)";
};

func int Info_Mod_Nefarius_Runen_Condition ()
{	
	if (Npc_KnowsInfo(hero, Info_Mod_Nefarius_Hi))
	&& ((Mod_Gilde == 9)
	|| (Mod_Gilde == 10)
	|| (Mod_Gilde == 11))
	{
		return 1;
	};
};

func void Info_Mod_Nefarius_Runen_Info ()
{
	var int abletolearn;
	abletolearn = 0;
	AI_Output (other, self, "Info_Mod_Nefarius_Runen_15_00"); //Naucz mnie.
	
	Info_ClearChoices 	(Info_Mod_Nefarius_Runen);
	Info_AddChoice		(Info_Mod_Nefarius_Runen, DIALOG_BACK, Info_Mod_Nefarius_Runen_BACK);
	
	if (Npc_GetTalentSkill(hero, NPC_TALENT_MAGE) >= 6)
	{
		if (PLAYER_TALENT_RUNES [SPL_Shrink] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Nefarius_Runen, B_BuildLearnString (NAME_SPL_Shrink, B_GetLearnCostTalent (other, NPC_TALENT_RUNES, SPL_Shrink)) ,Info_Mod_Nefarius_Runen_Shrink);
			abletolearn = (abletolearn +1);
		};
		if (PLAYER_TALENT_RUNES [SPL_Icerain] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Nefarius_Runen, B_BuildLearnString (NAME_SPL_Icerain, B_GetLearnCostTalent (other, NPC_TALENT_RUNES, SPL_Icerain)) ,Info_Mod_Nefarius_Runen_Icerain);
			abletolearn = (abletolearn +1);
		};	
	};
	if (Npc_GetTalentSkill (hero, NPC_TALENT_MAGE) >= 5)
	{
		if (PLAYER_TALENT_RUNES [SPL_IceWave] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Nefarius_Runen, B_BuildLearnString (NAME_SPL_IceWave, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_IceWave)), Info_Mod_Nefarius_Runen_IceWave);
			abletolearn = (abletolearn +1);
		};
		if (PLAYER_TALENT_RUNES [SPL_FullHeal] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Nefarius_Runen, B_BuildLearnString (NAME_SPL_FullHeal, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_FullHeal)), Info_Mod_Nefarius_Runen_FullHeal);
			abletolearn = (abletolearn +1);
		};
	};
	if (Npc_GetTalentSkill (hero, NPC_TALENT_MAGE) >= 4)
	{
		if (PLAYER_TALENT_RUNES [SPL_LightningFlash] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Nefarius_Runen, B_BuildLearnString (NAME_SPL_LightningFlash, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_LightningFlash)), Info_Mod_Nefarius_Runen_LightningFlash);
			abletolearn = (abletolearn +1);
		};
		if (PLAYER_TALENT_RUNES [SPL_Waterfist] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Nefarius_Runen, B_BuildLearnString (NAME_SPL_Waterfist, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_Waterfist)), Info_Mod_Nefarius_Runen_Waterfist);
			abletolearn = (abletolearn +1);
		};
	};
	if (Npc_GetTalentSkill (hero, NPC_TALENT_MAGE) >= 3)
	{
		if (PLAYER_TALENT_RUNES [SPL_MediumHeal] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Nefarius_Runen, B_BuildLearnString (NAME_SPL_MediumHeal, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_MediumHeal)), Info_Mod_Nefarius_Runen_MediumHeal);
			abletolearn = (abletolearn +1);
		};
		if (PLAYER_TALENT_RUNES [SPL_IceCube] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Nefarius_Runen, B_BuildLearnString (NAME_SPL_IceCube, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_IceCube)), Info_Mod_Nefarius_Runen_IceCube);
			abletolearn = (abletolearn +1);
		};
		if (PLAYER_TALENT_RUNES [SPL_ChargeZap] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Nefarius_Runen, B_BuildLearnString (NAME_SPL_ChargeZap, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_ChargeZap)), Info_Mod_Nefarius_Runen_Thunderball);
			abletolearn = (abletolearn +1);
		};
		if (PLAYER_TALENT_RUNES [SPL_Thunderstorm] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Nefarius_Runen, B_BuildLearnString (NAME_SPL_Thunderstorm, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_Thunderstorm)), Info_Mod_Nefarius_Runen_Thunderstorm);
			abletolearn = (abletolearn +1);
		};
		if (PLAYER_TALENT_RUNES [SPL_Geyser] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Nefarius_Runen, B_BuildLearnString (NAME_SPL_Geyser, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_Geyser)), Info_Mod_Nefarius_Runen_Geyser);
			abletolearn = (abletolearn +1);
		};
	};
	if (Npc_GetTalentSkill (hero, NPC_TALENT_MAGE) >= 2)
	{
		if (PLAYER_TALENT_RUNES [SPL_Icelance] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Nefarius_Runen, B_BuildLearnString (NAME_SPL_Icelance, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_Icelance)), Info_Mod_Nefarius_Runen_Icelance);
			abletolearn = (abletolearn +1);
		};
		if (PLAYER_TALENT_RUNES [SPL_InstantIceball] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Nefarius_Runen, B_BuildLearnString (NAME_SPL_InstantIceball, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_InstantIceball)), Info_Mod_Nefarius_Runen_InstantIceball);
			abletolearn = (abletolearn +1);
		};
	};
	if (Npc_GetTalentSkill (hero, NPC_TALENT_MAGE) >= 1)
	{
		if (PLAYER_TALENT_RUNES [SPL_Light] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Nefarius_Runen, B_BuildLearnString (NAME_SPL_Light, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_Light)), Info_Mod_Nefarius_Runen_Light);
			abletolearn = (abletolearn +1);
		};
		if (PLAYER_TALENT_RUNES [SPL_LightHeal] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Nefarius_Runen, B_BuildLearnString (NAME_SPL_LightHeal, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_LightHeal)), Info_Mod_Nefarius_Runen_LightHeal);
			abletolearn = (abletolearn +1);
		};
		if (PLAYER_TALENT_RUNES [SPL_Zap] == FALSE)
		{
			Info_AddChoice	(Info_Mod_Nefarius_Runen, B_BuildLearnString (NAME_SPL_Zap, B_GetLearnCostTalent (hero, NPC_TALENT_RUNES, SPL_Zap)), Info_Mod_Nefarius_Runen_Zap);
			abletolearn = (abletolearn +1);
		};
	};

	if (abletolearn < 1)
	{
		AI_Output (self, other, "Info_Mod_Nefarius_Runen_14_01"); //Nic wiecej nie moge cie nauczyc.
	};
};

FUNC VOID Info_Mod_Nefarius_Runen_BACK()
{
	Info_ClearChoices 	(Info_Mod_Nefarius_Runen);
};

FUNC VOID Info_Mod_Nefarius_Runen_Light()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_Light);

	if (Npc_HasItems(Mod_9001_KDW_Cronos_AW, ItSc_Light) == 0)
	{
		CreateInvItems	(Mod_9001_KDW_Cronos_AW, ItSc_Light, 1);
	};
};

FUNC VOID Info_Mod_Nefarius_Runen_LightHeal()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_LightHeal);

	if (Npc_HasItems(Mod_9001_KDW_Cronos_AW, ItSc_LightHeal) == 0)
	{
		CreateInvItems	(Mod_9001_KDW_Cronos_AW, ItSc_LightHeal, 1);
	};
};

FUNC VOID Info_Mod_Nefarius_Runen_SummonWolf()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_SummonWolf);

	if (Npc_HasItems(Mod_9001_KDW_Cronos_AW, ItSc_SumWolf) == 0)
	{
		CreateInvItems	(Mod_9001_KDW_Cronos_AW, ItSc_SumWolf, 1);
	};
};

FUNC VOID Info_Mod_Nefarius_Runen_Icerain()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_Icerain);

	if (Npc_HasItems(Mod_9001_KDW_Cronos_AW, ItSc_Icerain) == 0)
	{
		CreateInvItems	(Mod_9001_KDW_Cronos_AW, ItSc_Icerain, 1);
	};
};

FUNC VOID Info_Mod_Nefarius_Runen_SummonDragon()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_SummonDragon);
};

FUNC VOID Info_Mod_Nefarius_Runen_SummonIceGolem()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_SummonIceGolem);

	if (Npc_HasItems(Mod_9001_KDW_Cronos_AW, ItSc_SumIceGol) == 0)
	{
		CreateInvItems	(Mod_9001_KDW_Cronos_AW, ItSc_SumIceGol, 1);
	};
};

FUNC VOID Info_Mod_Nefarius_Runen_SummonEisgoblin()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_SummonEisgoblin);

	if (Npc_HasItems(Mod_9001_KDW_Cronos_AW, ItSc_SumGobEis) == 0)
	{
		CreateInvItems	(Mod_9001_KDW_Cronos_AW, ItSc_SumGobEis, 1);
	};
};

FUNC VOID Info_Mod_Nefarius_Runen_Icebolt()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_Icebolt);

	if (Npc_HasItems(Mod_9001_KDW_Cronos_AW, ItSc_Icebolt) == 0)
	{
		CreateInvItems	(Mod_9001_KDW_Cronos_AW, ItSc_Icebolt, 1);
	};
};

FUNC VOID Info_Mod_Nefarius_Runen_Zap()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_Zap);

	if (Npc_HasItems(Mod_9001_KDW_Cronos_AW, ItSc_Zap) == 0)
	{
		CreateInvItems	(Mod_9001_KDW_Cronos_AW, ItSc_Zap, 1);
	};
};

FUNC VOID Info_Mod_Nefarius_Runen_Icelance()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_Icelance);
	
	if (Npc_HasItems(Mod_9001_KDW_Cronos_AW, ItSc_Icelance) == 0)
	{
		CreateInvItems	(Mod_9001_KDW_Cronos_AW, ItSc_Icelance, 1);
	};
};

FUNC VOID Info_Mod_Nefarius_Runen_InstantIceball()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_InstantIceball);
	
	if (Npc_HasItems(Mod_9001_KDW_Cronos_AW, ItSc_InstantIceball) == 0)
	{
		CreateInvItems	(Mod_9001_KDW_Cronos_AW, ItSc_InstantIceball, 1);
	};
};

FUNC VOID Info_Mod_Nefarius_Runen_Waterfist()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_Waterfist);

	if (Npc_HasItems(Mod_9001_KDW_Cronos_AW, ItSc_Waterfist) == 0)
	{
		CreateInvItems	(Mod_9001_KDW_Cronos_AW, ItSc_Waterfist, 1);
	};
};

FUNC VOID Info_Mod_Nefarius_Runen_IceCube()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_IceCube);

	if (Npc_HasItems(Mod_9001_KDW_Cronos_AW, ItSc_IceCube) == 0)
	{
		CreateInvItems	(Mod_9001_KDW_Cronos_AW, ItSc_IceCube, 1);
	};
};

FUNC VOID Info_Mod_Nefarius_Runen_Thunderball()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_ChargeZap);

	if (Npc_HasItems(Mod_9001_KDW_Cronos_AW, ItSc_Thunderball) == 0)
	{
		CreateInvItems	(Mod_9001_KDW_Cronos_AW, ItSc_Thunderball, 1);
	};
};

FUNC VOID Info_Mod_Nefarius_Runen_Thunderstorm()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_Thunderstorm);

	if (Npc_HasItems(Mod_9001_KDW_Cronos_AW, ItSc_Thunderstorm) == 0)
	{
		CreateInvItems	(Mod_9001_KDW_Cronos_AW, ItSc_Thunderstorm, 1);
	};
};

FUNC VOID Info_Mod_Nefarius_Runen_Geyser()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_Geyser);

	if (Npc_HasItems(Mod_9001_KDW_Cronos_AW, ItSc_Geyser) == 0)
	{
		CreateInvItems	(Mod_9001_KDW_Cronos_AW, ItSc_Geyser, 1);
	};
};

FUNC VOID Info_Mod_Nefarius_Runen_MediumHeal()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_MediumHeal);

	if (Npc_HasItems(Mod_9001_KDW_Cronos_AW, ItSc_MediumHeal) == 0)
	{
		CreateInvItems	(Mod_9001_KDW_Cronos_AW, ItSc_MediumHeal, 1);
	};
};

FUNC VOID Info_Mod_Nefarius_Runen_LightningFlash()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_LightningFlash);

	if (Npc_HasItems(Mod_9001_KDW_Cronos_AW, ItSc_LightningFlash) == 0)
	{
		CreateInvItems	(Mod_9001_KDW_Cronos_AW, ItSc_LightningFlash, 1);
	};
};

FUNC VOID Info_Mod_Nefarius_Runen_IceWave()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_IceWave);

	if (Npc_HasItems(Mod_9001_KDW_Cronos_AW, ItSc_IceWave) == 0)
	{
		CreateInvItems	(Mod_9001_KDW_Cronos_AW, ItSc_IceWave, 1);
	};
};

FUNC VOID Info_Mod_Nefarius_Runen_Shrink()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_Shrink);

	if (Npc_HasItems(Mod_9001_KDW_Cronos_AW, ItSc_Shrink) == 0)
	{
		CreateInvItems	(Mod_9001_KDW_Cronos_AW, ItSc_Shrink, 1);
	};
};

FUNC VOID Info_Mod_Nefarius_Runen_FullHeal()
{
	B_TeachPlayerTalentRunes (self, hero, SPL_FullHeal);

	if (Npc_HasItems(Mod_9001_KDW_Cronos_AW, ItSc_FullHeal) == 0)
	{
		CreateInvItems	(Mod_9001_KDW_Cronos_AW, ItSc_FullHeal, 1);
	};
};

INSTANCE Info_Mod_Nefarius_EXIT (C_INFO)
{
	npc		= Mod_769_KDW_Nefarius_NW;
	nr		= 1;
	condition	= Info_Mod_Nefarius_EXIT_Condition;
	information	= Info_Mod_Nefarius_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Nefarius_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Nefarius_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
