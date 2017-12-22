INSTANCE Info_Mod_Raoul_Hi (C_INFO)
{
	npc		= Mod_794_SLD_Raoul_MT;
	nr		= 1;
	condition	= Info_Mod_Raoul_Hi_Condition;
	information	= Info_Mod_Raoul_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jak dlugo trzymasz zegarek?";
};

FUNC INT Info_Mod_Raoul_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Khaled_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Raoul_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Raoul_Hi_15_00"); //Od kiedy obserwowales tutaj i dlaczego nikt inny nie moze wydostac sie z obozu bagiennego, mimo ze jest tam jeden?
	AI_Output(self, hero, "Info_Mod_Raoul_Hi_01_01"); //Cóz, jestesmy tu bukmacherami, poniewaz uchwalono nowa zasade, zgodnie z która w pubie nie wolno palic wiecej chwastów bagiennych, a wiec nie wolno dopuscic do blizn bagiennych.
	AI_Output(hero, self, "Info_Mod_Raoul_Hi_15_02"); //A dlaczego istnieje taki zakaz?
	AI_Output(self, hero, "Info_Mod_Raoul_Hi_01_03"); //Lee chce powstrzymac niekontrolowana konsumpcje bagna, aby mezczyzni wiecej trenowali.
	AI_Output(self, hero, "Info_Mod_Raoul_Hi_01_04"); //I na pozostalych w pubie nie powinny miec wplywu opary bagienne, choc moga nie chciec.
	AI_Output(self, hero, "Info_Mod_Raoul_Hi_01_05"); //Teraz palenie jest dozwolone tylko poza lokalem, ale jesli zbyt czesto sie zlapiesz, otrzymasz nagane i dodatkowe godziny treningu. Cóz, teraz trzeba isc do obozu na palenie.
	AI_Output(hero, self, "Info_Mod_Raoul_Hi_15_06"); //Ale dlaczego ten facet z obozu na bagnach....
	AI_Output(self, hero, "Info_Mod_Raoul_Hi_01_07"); //No cóz, to bylo jeszcze przed wejsciem w zycie nowych przepisów. A naszym zadaniem jest upewnic sie, ze nikt z nich nie dostanie sie do srodka.
};

INSTANCE Info_Mod_Raoul_Pickpocket (C_INFO)
{
	npc		= Mod_794_SLD_Raoul_MT;
	nr		= 1;
	condition	= Info_Mod_Raoul_Pickpocket_Condition;
	information	= Info_Mod_Raoul_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Raoul_Pickpocket_Condition()
{
	C_Beklauen	(68, ItMi_Gold, 27);
};

FUNC VOID Info_Mod_Raoul_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Raoul_Pickpocket);

	Info_AddChoice	(Info_Mod_Raoul_Pickpocket, DIALOG_BACK, Info_Mod_Raoul_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Raoul_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Raoul_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Raoul_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Raoul_Pickpocket);
};

FUNC VOID Info_Mod_Raoul_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Raoul_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Raoul_Pickpocket);

		Info_AddChoice	(Info_Mod_Raoul_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Raoul_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Raoul_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Raoul_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Raoul_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Raoul_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Raoul_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Raoul_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Raoul_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Raoul_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Raoul_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Raoul_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Raoul_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Raoul_EXIT (C_INFO)
{
	npc		= Mod_794_SLD_Raoul_MT;
	nr		= 1;
	condition	= Info_Mod_Raoul_EXIT_Condition;
	information	= Info_Mod_Raoul_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Raoul_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Raoul_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
