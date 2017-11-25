INSTANCE Info_Mod_Granmar_VM_Hi (C_INFO)
{
	npc		= Mod_7625_KGD_Granmar_VM;
	nr		= 1;
	condition	= Info_Mod_Granmar_VM_Hi_Condition;
	information	= Info_Mod_Granmar_VM_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Granmar_VM_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Granmar_VM_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Granmar_VM_Hi_26_00"); //Ach, tam jestescie. Powiedzialbym, ze na razie zabezpieczamy nastepny obóz i jezioro. Sledz mnie!

	self.aivar[AIV_Partymember] = TRUE;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "GUIDETOSEE");
};

INSTANCE Info_Mod_Granmar_VM_AtSee (C_INFO)
{
	npc		= Mod_7625_KGD_Granmar_VM;
	nr		= 1;
	condition	= Info_Mod_Granmar_VM_AtSee_Condition;
	information	= Info_Mod_Granmar_VM_AtSee_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Granmar_VM_AtSee_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Granmar_VM_Hi))
	&& (Npc_GetDistToWP(hero, "MINE_GO_17") < 300)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Granmar_VM_AtSee_Info()
{
	AI_Output(self, hero, "Info_Mod_Granmar_VM_AtSee_26_00"); //Musze powiedziec, ze kluby sluza swoim celom. Bez nich bylibysmy przykreceni.
	AI_Output(self, hero, "Info_Mod_Granmar_VM_AtSee_26_01"); //Cóz, potem zaglebimy sie glebiej w kopalnie, zobaczmy co sie tam czai.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "GUIDETONAGER");
};

INSTANCE Info_Mod_Granmar_VM_AtNager (C_INFO)
{
	npc		= Mod_7625_KGD_Granmar_VM;
	nr		= 1;
	condition	= Info_Mod_Granmar_VM_AtNager_Condition;
	information	= Info_Mod_Granmar_VM_AtNager_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Granmar_VM_AtNager_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Granmar_VM_AtSee))
	&& (Npc_GetDistToWP(self, "MINE_GO_51") < 300)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Granmar_VM_AtNager_Info()
{
	AI_Output(self, hero, "Info_Mod_Granmar_VM_AtNager_26_00"); //Damn, jakie to sa stworzenia?
	AI_Output(self, hero, "Info_Mod_Granmar_VM_AtNager_26_01"); //Wlasciwie, powiedzialbym, ze zabezpieczamy tylko te czesc kopalni, która zostala przez nas oczyszczona.
	AI_Output(self, hero, "Info_Mod_Granmar_VM_AtNager_26_02"); //Wróce do wejscia i wykopze rude, tu wezmiesz strazników.
	AI_Output(self, hero, "Info_Mod_Granmar_VM_AtNager_26_03"); //I nie zaglebiaj sie glebiej w kopalnie, potrzebuje cie tutaj jako wartownika.

	self.aivar[AIV_Partymember] = FALSE;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");

	Wld_InsertNpc	(Mod_7626_OUT_Glenn_VM,	"MINE_GO_52");
	Wld_InsertNpc	(Mod_7627_BUD_Costa_VM,	"MINE_GO_52");
	Wld_InsertNpc	(Mod_7628_BUD_Sterling_VM,	"MINE_GO_52");
};

INSTANCE Info_Mod_Granmar_VM_SpecialErzguardian (C_INFO)
{
	npc		= Mod_7625_KGD_Granmar_VM;
	nr		= 1;
	condition	= Info_Mod_Granmar_VM_SpecialErzguardian_Condition;
	information	= Info_Mod_Granmar_VM_SpecialErzguardian_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Granmar_VM_SpecialErzguardian_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Granmar_VM_AtNager))
	&& (Mod_KG_SpecialErzguardian == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Granmar_VM_SpecialErzguardian_Info()
{
	AI_Output(self, hero, "Info_Mod_Granmar_VM_SpecialErzguardian_26_00"); //Ciesze sie, ze przyszedles. Mamy razem 50 bryl rudy. Hymir chce, abys dostarczyl ja do Pana Andre' a.

	B_GiveInvItems	(self, hero, ItMi_ErzPaketAndre, 1);

	AI_Output(self, hero, "Info_Mod_Granmar_VM_SpecialErzguardian_26_01"); //Bede trzymac sie az do powrotu z paladynami.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "WACHE");

	B_LogEntry	(TOPIC_MOD_KG_STEINMONSTER, "Granmar dal mi pierwsze 50 kawalków rudy dla Pana Andre. Musze je dostarczyc i przyprowadzic paladynów.");
};

INSTANCE Info_Mod_Granmar_VM_Trent (C_INFO)
{
	npc		= Mod_7625_KGD_Granmar_VM;
	nr		= 1;
	condition	= Info_Mod_Granmar_VM_Trent_Condition;
	information	= Info_Mod_Granmar_VM_Trent_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Granmar_VM_Trent_Condition()
{
	if (Mod_KG_TrentInMine == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Granmar_VM_Trent_Info()
{
	AI_Output(self, hero, "Info_Mod_Granmar_VM_Trent_26_00"); //Powinienem byl wiedziec. Nastepnym razem, gdy paladyn mysli, ze wysyla nam wzmocnienia, nie mam zadnych nadziei.
	AI_Output(self, hero, "Info_Mod_Granmar_VM_Trent_26_01"); //Kto wie, ile potworów czeka na nas tam w dól, a oni wysylaja nam tylko jednego czlowieka.
	AI_Output(self, hero, "Info_Mod_Granmar_VM_Trent_26_02"); //No cóz, przynajmniej facet wydaje sie byc w porzadku. Lepiej bys z nim poszedl. Mysle, ze mial wkrótce odejsc.

	AI_StopProcessInfos	(self);

	B_LogEntry	(TOPIC_MOD_KG_STEINMONSTER, "Granmar jest troche zdenerwowany, ze Pan Andre poslal tylko jednego paladyne. Lepiej bym mógl isc z Trentem....");
};

INSTANCE Info_Mod_Granmar_VM_Trent2 (C_INFO)
{
	npc		= Mod_7625_KGD_Granmar_VM;
	nr		= 1;
	condition	= Info_Mod_Granmar_VM_Trent2_Condition;
	information	= Info_Mod_Granmar_VM_Trent2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Granmar_VM_Trent2_Condition()
{
	if (Mod_KG_SchwarzesErz == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Granmar_VM_Trent2_Info()
{
	AI_Output(self, hero, "Info_Mod_Granmar_VM_Trent2_26_00"); //Co sie dzieje? Czy to zrobiles? Czy kopalnia jest wolna?
	AI_Output(hero, self, "Info_Mod_Granmar_VM_Trent2_15_01"); //Dotychczas. Jesli nie wykopie sie zbytnio chciwie i nie odkryje sie wiecej potworów, kopalnia bardzo sie upusci.
	AI_Output(self, hero, "Info_Mod_Granmar_VM_Trent2_26_02"); //Ladny do slyszenia. Czy byl problem?
	AI_Output(hero, self, "Info_Mod_Granmar_VM_Trent2_15_03"); //Nic, czego nie udalo Ci sie zalatwic.
	AI_Output(self, hero, "Info_Mod_Granmar_VM_Trent2_26_04"); //Dobre. Jestem pewien, ze Hymir chcialby pogratulowac Wam sukcesu. Zobacze cie pózniej.

	B_LogEntry	(TOPIC_MOD_KG_STEINMONSTER, "Granmar jest zadowolony z naszego wystepu. Zatrzymam sie przy domu Hymira.");
};

INSTANCE Info_Mod_Granmar_VM_EXIT (C_INFO)
{
	npc		= Mod_7625_KGD_Granmar_VM;
	nr		= 1;
	condition	= Info_Mod_Granmar_VM_EXIT_Condition;
	information	= Info_Mod_Granmar_VM_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Granmar_VM_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Granmar_VM_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
