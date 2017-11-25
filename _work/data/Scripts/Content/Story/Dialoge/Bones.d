INSTANCE Info_Mod_Bones_Hi (C_INFO)
{
	npc		= Mod_930_PIR_Bones_AW;
	nr		= 1;
	condition	= Info_Mod_Bones_Hi_Condition;
	information	= Info_Mod_Bones_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kim jestes?";
};

FUNC INT Info_Mod_Bones_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Bones_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");

	AI_Output(self, hero, "Info_Mod_Bones_Hi_01_01"); //Jestem Kosci. Wszystko inne jest wazne?
};

INSTANCE Info_Mod_Bones_Irdorath (C_INFO)
{
	npc		= Mod_930_PIR_Bones_AW;
	nr		= 1;
	condition	= Info_Mod_Bones_Irdorath_Condition;
	information	= Info_Mod_Bones_Irdorath_Info;
	permanent	= 0;
	important	= 0;
	description	= "Planuje wycieczke statkiem Paladina.";
};

FUNC INT Info_Mod_Bones_Irdorath_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bones_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Greg_Irdorath))
	&& (Mod_Irdorath == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bones_Irdorath_Info()
{
	AI_Output(hero, self, "Info_Mod_Bones_Irdorath_15_00"); //Planuje wycieczke statkiem Paladina.
	AI_Output(hero, self, "Info_Mod_Bones_Irdorath_15_01"); //Idzie na wyspe magika Xeres.....
	AI_Output(self, hero, "Info_Mod_Bones_Irdorath_01_02"); //Co to z mna trzeba zrobic?
	AI_Output(hero, self, "Info_Mod_Bones_Irdorath_15_03"); //Mozesz dolaczyc do mojego zespolu.
	AI_Output(hero, self, "Info_Mod_Bones_Irdorath_15_04"); //Jest cos do zdobycia, a Greg nie bedzie mial nic przeciwko temu.
	AI_Output(self, hero, "Info_Mod_Bones_Irdorath_01_05"); //Och, to jest tak, ze tak.... No cóz, um, dlaczego nie....
	AI_Output(self, hero, "Info_Mod_Bones_Irdorath_01_06"); //Mam tylko jeden warunek....
	AI_Output(hero, self, "Info_Mod_Bones_Irdorath_15_07"); //No cóz, to bylo oczywiste.... Czego chcesz?
	AI_Output(self, hero, "Info_Mod_Bones_Irdorath_01_08"); //Kobiety!
	AI_Output(hero, self, "Info_Mod_Bones_Irdorath_15_09"); //Jak?
	AI_Output(self, hero, "Info_Mod_Bones_Irdorath_01_10"); //Cóz, zdjecia kobiet na pokladzie.
	AI_Output(self, hero, "Info_Mod_Bones_Irdorath_01_11"); //Statek Paladyn jest zakotwiczony w miescie portowym.
	AI_Output(self, hero, "Info_Mod_Bones_Irdorath_01_12"); //Jestem pewien, ze mozesz mnie zabrac na wycieczke.
	AI_Output(self, hero, "Info_Mod_Bones_Irdorath_01_13"); //(lüstern) Wäre doch sonst langweilig ... solange auf See und dann nicht mal Schiffe mit "odkrywka" zum Entern.
	AI_Output(self, hero, "Info_Mod_Bones_Irdorath_01_14"); //Musisz miec przy sobie wszystko, czego potrzebujesz.
	AI_Output(hero, self, "Info_Mod_Bones_Irdorath_15_15"); //Um.... Zobacze, co moge zrobic.
	AI_Output(self, hero, "Info_Mod_Bones_Irdorath_01_16"); //Jade do portu. I biada sie zalozyc, ze nie organizowales zadnych kobiet dopóki nie opusciles.

	B_LogEntry	(TOPIC_MOD_HQ_CREW, "Oh czlowiek. Teraz mam poprosic Koscioly, by towarzyszyly nam w podrózy powazne kobiety. Hmm, gdzie moge znalezc kobiety, które bylyby wystarczajaco ciezkie, aby wyruszyc w morska podróz z niebezpiecznymi przygódami, a nastepnie z Kosciami na pokladzie......");

	Mod_CrewCount += 1;

	Mod_BonesDabei = 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOT");
};

INSTANCE Info_Mod_Bones_Befreiung (C_INFO)
{
	npc		= Mod_930_PIR_Bones_AW;
	nr		= 1;
	condition	= Info_Mod_Bones_Befreiung_Condition;
	information	= Info_Mod_Bones_Befreiung_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co to sa wiadomosci?";
};

FUNC INT Info_Mod_Bones_Befreiung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bones_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Greg_Befreiung2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bones_Befreiung_Info()
{
	AI_Output(hero, self, "Info_Mod_Bones_Befreiung_15_00"); //Co to sa wiadomosci?
	AI_Output(self, hero, "Info_Mod_Bones_Befreiung_01_01"); //Moja siekiera zniknela, to juz nie ma!
	AI_Output(hero, self, "Info_Mod_Bones_Befreiung_15_02"); //Jak do tego doszlo?
	AI_Output(self, hero, "Info_Mod_Bones_Befreiung_01_03"); //Atak byl rój z nieumarlymi wojownikami. Zostalem zburzony i ta paczka wziela moja siekiere.
	AI_Output(hero, self, "Info_Mod_Bones_Befreiung_15_04"); //Gdzie poszli ci mezczyzni?
	AI_Output(self, hero, "Info_Mod_Bones_Befreiung_01_05"); //Nie wiem o tym. Ale kilku z nich poszlo do kabiny Greg, kiedy zdali sobie sprawe, ze ich liczba jest wieksza. Sa na górze.
	AI_Output(hero, self, "Info_Mod_Bones_Befreiung_15_06"); //Rozejrze sie dookola.
	AI_Output(self, hero, "Info_Mod_Bones_Befreiung_01_07"); //Chcesz mi pomóc?
	AI_Output(hero, self, "Info_Mod_Bones_Befreiung_15_08"); //Tak.
	AI_Output(self, hero, "Info_Mod_Bones_Befreiung_01_09"); //Dziekuje wam, ale prosze spieszyc sie.

	Log_CreateTopic	(TOPIC_MOD_BEL_PIRBONES, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_BEL_PIRBONES, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_BEL_PIRBONES, "Pirate Kosci piratów stracil siekiere w walce z nieumarlymi. Niektórzy zlodziei podeszli na góre do kabiny Greg. Powinienem sie rozejrzec.");

	Wld_InsertNpc	(Mod_7006_UntoterEliteNovize_AW, "WP_UNDEAD_05");
	Wld_InsertNpc	(Mod_7007_UntoterEliteNovize_AW, "WP_UNDEAD_05");
	Wld_InsertNpc	(Mod_7008_UntoterEliteNovize_AW, "WP_UNDEAD_05");
	Wld_InsertNpc	(Mod_7009_UntoterEliteNovize_AW, "WP_UNDEAD_05");
};

INSTANCE Info_Mod_Bones_Befreiung2 (C_INFO)
{
	npc		= Mod_930_PIR_Bones_AW;
	nr		= 1;
	condition	= Info_Mod_Bones_Befreiung2_Condition;
	information	= Info_Mod_Bones_Befreiung2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Oto twój topór z powrotem.";
};

FUNC INT Info_Mod_Bones_Befreiung2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bones_Befreiung))
	&& (Npc_HasItems(hero, ItMw_BonesAxt) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bones_Befreiung2_Info()
{
	AI_Output(hero, self, "Info_Mod_Bones_Befreiung2_15_00"); //Oto twój topór z powrotem.

	B_GiveInvItems	(hero, self, ItMw_BonesAxt, 1);

	AI_EquipBestMeleeWeapon	(self);

	AI_ReadyMeleeWeapon	(self);

	AI_PlayAni	(self, "T_1HSINSPECT");

	AI_DrawWeapon	(self);

	AI_Output(self, hero, "Info_Mod_Bones_Befreiung2_01_01"); //(zadowolony) Dziekuje. Mozesz powiedziec Gregowi, ze jestem gotów znów walczyc.
	AI_Output(hero, self, "Info_Mod_Bones_Befreiung2_15_02"); //Wszystko jasne.
	AI_Output(self, hero, "Info_Mod_Bones_Befreiung2_01_03"); //Tutaj wez te dwie butelki grog i ten szybki sledz.

	B_ShowGivenThings	("2 Konserwowane sledzie scierne i szybkie");

	CreateInvItems	(hero, ItFo_Addon_Grog, 2);
	CreateInvItems	(hero, ItFo_Addon_SchnellerHering, 1);

	Mod_Piratenbefreiung += 1;

	B_GivePlayerXP	(200);

	AI_Output(hero, self, "Info_Mod_Bones_Befreiung2_15_04"); //Dziekujemy za gorzalke.

	B_LogEntry_More	(TOPIC_MOD_BEL_PIRBONES, TOPIC_MOD_BEL_PIRATENLAGER, "Kosci maja teraz swoja siekiere i jestesmy gotowi do walki.", "Kosci sa gotowe do walki.");
	B_SetTopicStatus	(TOPIC_MOD_BEL_PIRBONES, LOG_SUCCESS);
};

INSTANCE Info_Mod_Bones_Beerdigung (C_INFO)
{
	npc		= Mod_930_PIR_Bones_AW;
	nr		= 1;
	condition	= Info_Mod_Bones_Beerdigung_Condition;
	information	= Info_Mod_Bones_Beerdigung_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Bones_Beerdigung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Greg_AJAlive2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bones_Beerdigung_Info()
{
	AI_Output(self, hero, "Info_Mod_Bones_Beerdigung_01_00"); //A co tam zjesc?

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Bones_Pickpocket (C_INFO)
{
	npc		= Mod_930_PIR_Bones_AW;
	nr		= 1;
	condition	= Info_Mod_Bones_Pickpocket_Condition;
	information	= Info_Mod_Bones_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_Bones_Pickpocket_Condition()
{
	C_Beklauen	(116, ItFo_Addon_Grog, 3);
};

FUNC VOID Info_Mod_Bones_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Bones_Pickpocket);

	Info_AddChoice	(Info_Mod_Bones_Pickpocket, DIALOG_BACK, Info_Mod_Bones_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Bones_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Bones_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Bones_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Bones_Pickpocket);
};

FUNC VOID Info_Mod_Bones_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Bones_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Bones_Pickpocket);

		Info_AddChoice	(Info_Mod_Bones_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Bones_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Bones_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Bones_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Bones_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Bones_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Bones_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Bones_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Bones_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Bones_Pickpocket);

		AI_StopProcessInfos	(self);

		B_Attack (self, hero, AR_Theft, 1);
	}
	else
	{
		if (rnd >= 75)
		{
			B_GiveInvItems	(hero, self, ItMi_Gold, 200);
		}
		else if (rnd >= 50)
		{
			B_GiveInvItems	(hero, self, ItMi_Gold, 100);
		}
		else if (rnd >= 25)
		{
			B_GiveInvItems	(hero, self, ItMi_Gold, 50);
		};

		B_Say	(self, hero, "$PICKPOCKET_BESTECHUNG_01");

		Info_ClearChoices	(Info_Mod_Bones_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Bones_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Bones_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Bones_EXIT (C_INFO)
{
	npc		= Mod_930_PIR_Bones_AW;
	nr		= 1;
	condition	= Info_Mod_Bones_EXIT_Condition;
	information	= Info_Mod_Bones_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Bones_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Bones_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
