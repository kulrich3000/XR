INSTANCE Info_Mod_Trent_VM_Hi (C_INFO)
{
	npc		= Mod_7630_RIT_Trent_VM;
	nr		= 1;
	condition	= Info_Mod_Trent_VM_Hi_Condition;
	information	= Info_Mod_Trent_VM_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Trent_VM_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Granmar_VM_Trent))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Trent_VM_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Trent_VM_Hi_06_00"); //Co mam Ci tu pomóc?
	AI_Output(hero, self, "Info_Mod_Trent_VM_Hi_15_01"); //Najpierw powinienes zaglebic sie nieco glebiej w moja kopalnie.
	AI_Output(self, hero, "Info_Mod_Trent_VM_Hi_06_02"); //Wszystkie sluszne, wszystkie sluszne.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FOLLOWTONAGER");
	B_StartOtherRoutine	(Mod_7625_KGD_Granmar_VM, "START");
};

INSTANCE Info_Mod_Trent_VM_BrauchenLicht (C_INFO)
{
	npc		= Mod_7630_RIT_Trent_VM;
	nr		= 1;
	condition	= Info_Mod_Trent_VM_BrauchenLicht_Condition;
	information	= Info_Mod_Trent_VM_BrauchenLicht_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Trent_VM_BrauchenLicht_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Trent_VM_Hi))
	&& (Npc_GetDistToWP(self, "MINE_GO_37") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Trent_VM_BrauchenLicht_Info()
{
	AI_Output(self, hero, "Info_Mod_Trent_VM_BrauchenLicht_06_00"); //Pojawia sie dziwny podmuch wiatru. Normalne latarki prawdopodobnie nie zadzialaja.
	AI_Output(self, hero, "Info_Mod_Trent_VM_BrauchenLicht_06_01"); //Mysle, ze wiem, czego nam tutaj potrzeba. Zastanawialem sie, kiedy naprawde potrzebuje runy.
	AI_Output(hero, self, "Info_Mod_Trent_VM_BrauchenLicht_15_02"); //Co masz na mysli?
	AI_Output(self, hero, "Info_Mod_Trent_VM_BrauchenLicht_06_03"); //Swiatla runa dostajesz jako rycerz. Nie bedziemy miec z nia zadnych problemów w ciemnosci.

	B_LogEntry	(TOPIC_MOD_KG_STEINMONSTER, "Trent chce wykorzystac swoja jasna rune, aby dac nam swiatlo we wlasciwym tunelu.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "GUIDETONAGER");

	B_Attack	(self, hero, AR_None, 0);
};

INSTANCE Info_Mod_Trent_VM_AtFirstNager (C_INFO)
{
	npc		= Mod_7630_RIT_Trent_VM;
	nr		= 1;
	condition	= Info_Mod_Trent_VM_AtFirstNager_Condition;
	information	= Info_Mod_Trent_VM_AtFirstNager_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Trent_VM_AtFirstNager_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Trent_VM_BrauchenLicht))
	&& (Npc_GetDistToWP(self, "MINE_GO_43") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Trent_VM_AtFirstNager_Info()
{
	AI_Output(self, hero, "Info_Mod_Trent_VM_AtFirstNager_06_00"); //Mem, te potwory wygladaja znajomo.

	B_UseFakeScroll	();

	AI_Output(self, hero, "Info_Mod_Trent_VM_AtFirstNager_06_01"); //Tak, prawda, juz wczesniej widzialem takie potwory w jaskini w Varant.
	AI_Output(self, hero, "Info_Mod_Trent_VM_AtFirstNager_06_02"); //Byla to jednak kopalnia zlota, a gryzonie byly znacznie mniejsze niz ta.
	AI_Output(self, hero, "Info_Mod_Trent_VM_AtFirstNager_06_03"); //Jesli sie nie myle, moga miec królowa. Nie ustapmy wiec dalej.

	B_LogEntry	(TOPIC_MOD_KG_STEINMONSTER, "Trent mówi, ze zna juz rude gryzoni z Varant, nawet jesli sa tam mniejsze. Podejrzewa tez, ze w kopalni jest królowa.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "GUIDETONAGER2");
};

INSTANCE Info_Mod_Trent_VM_AtSecondNager (C_INFO)
{
	npc		= Mod_7630_RIT_Trent_VM;
	nr		= 1;
	condition	= Info_Mod_Trent_VM_AtSecondNager_Condition;
	information	= Info_Mod_Trent_VM_AtSecondNager_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Trent_VM_AtSecondNager_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Trent_VM_AtFirstNager))
	&& (Npc_GetDistToWP(self, "MINE_GO_45") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Trent_VM_AtSecondNager_Info()
{
	AI_Output(self, hero, "Info_Mod_Trent_VM_AtSecondNager_06_00"); //Czy moze pan to uslyszec? Mysle, ze królowa jest bardzo blisko, ona równiez zgromadzi wokól siebie kilka swoich dzieci.
	AI_Output(self, hero, "Info_Mod_Trent_VM_AtSecondNager_06_01"); //Czekam tutaj, jesli czegos jeszcze potrzebujesz, to juz ostatnia szansa.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "WAITATNAGER2");
};

INSTANCE Info_Mod_Trent_VM_KillQueen (C_INFO)
{
	npc		= Mod_7630_RIT_Trent_VM;
	nr		= 1;
	condition	= Info_Mod_Trent_VM_KillQueen_Condition;
	information	= Info_Mod_Trent_VM_KillQueen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jestem gotowy, skonczmy je!";
};

FUNC INT Info_Mod_Trent_VM_KillQueen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Trent_VM_AtSecondNager))
	&& (Npc_GetDistToWP(self, "MINE_GO_45") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Trent_VM_KillQueen_Info()
{
	AI_Output(hero, self, "Info_Mod_Trent_VM_KillQueen_15_00"); //Jestem gotowy, skonczmy je!
	AI_Output(self, hero, "Info_Mod_Trent_VM_KillQueen_06_01"); //Idzmy!

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "GUIDETOQUEEN");
};

INSTANCE Info_Mod_Trent_VM_QueenDead (C_INFO)
{
	npc		= Mod_7630_RIT_Trent_VM;
	nr		= 1;
	condition	= Info_Mod_Trent_VM_QueenDead_Condition;
	information	= Info_Mod_Trent_VM_QueenDead_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Trent_VM_QueenDead_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Trent_VM_KillQueen))
	&& (Npc_GetDistToWP(self, "MINE_GO_53") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Trent_VM_QueenDead_Info()
{
	AI_Output(self, hero, "Info_Mod_Trent_VM_QueenDead_06_00"); //Tak wiec bydlo dwa razy zastanowi sie, gdzie zlozyc jaja w nastepnym zyciu. Zobaczmy, co bylo ciekawe.

	AI_GotoNpc	(self, ErznagerQueen);
	AI_TurnToNpc	(self, ErznagerQueen);
	AI_PlayAni	(self, "T_PLUNDER");

	AI_GotoNpc	(self, hero);
	AI_TurnToNpc	(self, hero);
	AI_TurnToNpc	(hero, self);

	AI_Output(self, hero, "Info_Mod_Trent_VM_QueenDead_06_01"); //Dziwny.... Nigdy nie widzialem niczego podobnego.

	self.aivar[AIV_Partymember] = FALSE;
};

INSTANCE Info_Mod_Trent_VM_AfterQueen (C_INFO)
{
	npc		= Mod_7630_RIT_Trent_VM;
	nr		= 1;
	condition	= Info_Mod_Trent_VM_AfterQueen_Condition;
	information	= Info_Mod_Trent_VM_AfterQueen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy masz racje?";
};

FUNC INT Info_Mod_Trent_VM_AfterQueen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Trent_VM_QueenDead))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Trent_VM_AfterQueen_Info()
{
	AI_Output(hero, self, "Info_Mod_Trent_VM_AfterQueen_15_00"); //Czy masz racje?

	Wld_PlayEffect("spellFX_Fear", self, self, 0, 0, 0, FALSE);

	AI_Output(self, hero, "Info_Mod_Trent_VM_AfterQueen_06_01"); //To moje, to moje! Nikt nie wie, ze jestem jego wlascicielem.
	AI_Output(self, hero, "Info_Mod_Trent_VM_AfterQueen_06_02"); //Dlaczego powinienem skorzystac z szansy? Ofiara moze dac mi dostep do calej swojej wladzy.

	CreateInvItems	(self, ItMi_SchwarzesErz_Trent, 1);

	B_LogEntry	(TOPIC_MOD_KG_STEINMONSTER, "Trent sie wypuszcza i atakuje mnie. Najpierw powinienem dac mu K. O. i zobacz, co jest z nim zle.");

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_Kill, 0);
};

INSTANCE Info_Mod_Trent_VM_AfterQueenAttack (C_INFO)
{
	npc		= Mod_7630_RIT_Trent_VM;
	nr		= 1;
	condition	= Info_Mod_Trent_VM_AfterQueenAttack_Condition;
	information	= Info_Mod_Trent_VM_AfterQueenAttack_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Trent_VM_AfterQueenAttack_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Trent_VM_AfterQueen))
	&& (Npc_HasItems(hero, ItMi_SchwarzesErz_Trent) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Trent_VM_AfterQueenAttack_Info()
{
	AI_Output(self, hero, "DEFAULT"); //
	AI_Output(hero, self, "Info_Mod_Trent_VM_AfterQueenAttack_15_00"); //Jestem zmeczony chlopakami, którzy gubia umysly w ciemnych jaskiniach.
	AI_Output(self, hero, "Info_Mod_Trent_VM_AfterQueenAttack_06_01"); //Co sie dzieje?
	AI_Output(hero, self, "Info_Mod_Trent_VM_AfterQueenAttack_15_02"); //Czarna ruda wokól niej wypuszczala cie na wolnosc. Zabawny, bo wydaje mi sie nie dzialac.
	AI_Output(self, hero, "Info_Mod_Trent_VM_AfterQueenAttack_06_03"); //Przezylam wiele mrocznych magii, ale pewnego dnia nie spodziewalam sie, ze mnie uderzy.
	AI_Output(self, hero, "Info_Mod_Trent_VM_AfterQueenAttack_06_04"); //W kazdym razie dziekuje. Takie magiczne artefakty moga cie zrujnowac.
	AI_Output(self, hero, "Info_Mod_Trent_VM_AfterQueenAttack_06_05"); //Mysle, ze zrobie sobie przerwe od pracy w grupie i pomysle o tym wszystkim. Moze znów cie zobacze.

	B_GivePlayerXP	(400);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOT");
};

INSTANCE Info_Mod_Trent_VM_AndreSauer (C_INFO)
{
	npc		= Mod_7630_RIT_Trent_VM;
	nr		= 1;
	condition	= Info_Mod_Trent_VM_AndreSauer_Condition;
	information	= Info_Mod_Trent_VM_AndreSauer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mysle, ze Pan Andre jest troche gniewny z powodu waszej decyzji, aby tu wlasnie przyjsc.";
};

FUNC INT Info_Mod_Trent_VM_AndreSauer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Trent_VM_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Andre_Steinmonster2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Trent_VM_AndreSauer_Info()
{
	AI_Output(hero, self, "Info_Mod_Trent_VM_AndreSauer_15_00"); //Mysle, ze Pan Andre jest troche gniewny z powodu waszej decyzji, aby tu wlasnie przyjsc.
	AI_Output(self, hero, "Info_Mod_Trent_VM_AndreSauer_06_01"); //Zwykle sa one az do powrotu z góra rudy. Potem nagle to byl jej pomysl.
};

INSTANCE Info_Mod_Trent_VM_EXIT (C_INFO)
{
	npc		= Mod_7630_RIT_Trent_VM;
	nr		= 1;
	condition	= Info_Mod_Trent_VM_EXIT_Condition;
	information	= Info_Mod_Trent_VM_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Trent_VM_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Trent_VM_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
