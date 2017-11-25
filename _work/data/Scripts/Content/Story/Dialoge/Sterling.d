INSTANCE Info_Mod_Sterling_Buddler (C_INFO)
{
	npc		= Mod_7507_BUD_Sterling_REL;
	nr		= 1;
	condition	= Info_Mod_Sterling_Buddler_Condition;
	information	= Info_Mod_Sterling_Buddler_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy jestes Buddler?";
};

FUNC INT Info_Mod_Sterling_Buddler_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Melcador_Buddler6))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sterling_Buddler_Info()
{
	AI_Output(hero, self, "Info_Mod_Sterling_Buddler_15_00"); //Bist du Buddler?
	AI_Output(self, hero, "Info_Mod_Sterling_Buddler_02_01"); //Ja, aber im Moment, bin ich eher Obdachloser.
	AI_Output(hero, self, "Info_Mod_Sterling_Buddler_15_02"); //Warum das? Hier in Relendel gibt es doch eine Mine, oder?
	AI_Output(self, hero, "Info_Mod_Sterling_Buddler_02_03"); //Das ist gar nicht das Problem. Diese Kerle hier nehmen doch alle Freudenspender, ob es nun die Stadtwache ist oder die J�ger.
	AI_Output(self, hero, "Info_Mod_Sterling_Buddler_02_04"); //Ich f�rdere ganz sicher kein Erz in einer Mine mit Monstern, wenn die Wachen, die auf mich aufpassen sollen, auf einem Freudenspender Trip sind. 
	AI_Output(hero, self, "Info_Mod_Sterling_Buddler_15_05"); //Dann glaub ich hab ich eine gute Alternative f�r dich. Ich kann dir anbieten in einer Mine zu arbeiten, wo die Wachen noch nicht mal Sumpfkraut rauchen.
	AI_Output(self, hero, "Info_Mod_Sterling_Buddler_02_06"); //Das h�rt sich gut an. Wo soll diese Mine denn sein?
	AI_Output(hero, self, "Info_Mod_Sterling_Buddler_15_07"); //Sie ist am Eingang des Minentals.
	AI_Output(self, hero, "Info_Mod_Sterling_Buddler_02_08"); //Das ist ein verdammt langer Weg. Wenn ich dort wirklich f�r dich arbeiten soll, musst du mir die Reisekosten bezahlen.
	AI_Output(hero, self, "Info_Mod_Sterling_Buddler_15_09"); //Gut, was willst du haben? 
	AI_Output(self, hero, "Info_Mod_Sterling_Buddler_02_10"); //Ich denke 200 Gold und f�nf Laibe Brot reichen mir f�r den Anfang.

	B_LogEntry	(TOPIC_MOD_KG_BUDDLER, "Sterling pracuje w kopalni, kiedy pokrywam jego koszty podr�zy. Chce 200 zlota i piec bochenk�w chleba.");
};

INSTANCE Info_Mod_Sterling_Buddler2 (C_INFO)
{
	npc		= Mod_7507_BUD_Sterling_REL;
	nr		= 1;
	condition	= Info_Mod_Sterling_Buddler2_Condition;
	information	= Info_Mod_Sterling_Buddler2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Oto Twoje rzeczy.";
};

FUNC INT Info_Mod_Sterling_Buddler2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Sterling_Buddler))
	&& (Npc_HasItems(hero, ItMi_Gold) >= 200)
	&& (Npc_HasItems(hero, ItFo_Bread) >= 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sterling_Buddler2_Info()
{
	AI_Output(hero, self, "Info_Mod_Sterling_Buddler2_15_00"); //Oto Twoje rzeczy.

	Npc_RemoveInvItems	(hero, ItMi_Gold, 200);
	Npc_RemoveInvItems	(hero, ItFo_Bread, 5);

	B_ShowGivenThings	("200 zlota i 5 dodanych chleb�w");

	AI_Output(hero, self, "Info_Mod_Sterling_Buddler2_15_01"); //Po prostu czekam na mnie przy wejsciu do kopalni.
	AI_Output(self, hero, "Info_Mod_Sterling_Buddler2_02_02"); //Jestem na drodze.

	B_LogEntry	(TOPIC_MOD_KG_BUDDLER, "Sterling jest w drodze do Minentala.");

	B_GivePlayerXP	(50);

	B_StartOtherRoutine	(self,	"TOT");
};

INSTANCE Info_Mod_Sterling_Pickpocket (C_INFO)
{
	npc		= Mod_7507_BUD_Sterling_REL;
	nr		= 1;
	condition	= Info_Mod_Sterling_Pickpocket_Condition;
	information	= Info_Mod_Sterling_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Sterling_Pickpocket_Condition()
{
	C_Beklauen	(57, ItMi_Nugget, 1);
};

FUNC VOID Info_Mod_Sterling_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Sterling_Pickpocket);

	Info_AddChoice	(Info_Mod_Sterling_Pickpocket, DIALOG_BACK, Info_Mod_Sterling_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Sterling_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Sterling_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Sterling_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Sterling_Pickpocket);
};

FUNC VOID Info_Mod_Sterling_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Sterling_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Sterling_Pickpocket);

		Info_AddChoice	(Info_Mod_Sterling_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Sterling_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Sterling_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Sterling_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Sterling_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Sterling_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Sterling_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Sterling_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Sterling_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Sterling_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Sterling_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Sterling_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Sterling_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Sterling_EXIT (C_INFO)
{
	npc		= Mod_7507_BUD_Sterling_REL;
	nr		= 1;
	condition	= Info_Mod_Sterling_EXIT_Condition;
	information	= Info_Mod_Sterling_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Sterling_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Sterling_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
