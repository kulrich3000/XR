INSTANCE Info_Mod_FrauRichard_REL_Hi (C_INFO)
{
	npc		= Mod_7719_OUT_Frau_REL;
	nr		= 1;
	condition	= Info_Mod_FrauRichard_REL_Hi_Condition;
	information	= Info_Mod_FrauRichard_REL_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dobrze sie ponownie osiedlil?";
};

FUNC INT Info_Mod_FrauRichard_REL_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_FrauRichard_REL_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_FrauRichard_REL_Hi_15_00"); //Dobrze sie ponownie osiedlil?
	AI_Output(self, hero, "Info_Mod_FrauRichard_REL_Hi_19_01"); //Od czasu mojego odejscia wiele sie zmienilo.

	if (Mod_REL_Stadthalter == 1)
	{
		AI_Output(self, hero, "Info_Mod_FrauRichard_REL_Hi_19_02"); //Nigdy nie pomyslalem, ze Theodorus moze zostac gubernatorem!
	}
	else if (Mod_REL_Stadthalter == 2)
	{
		AI_Output(self, hero, "Info_Mod_FrauRichard_REL_Hi_19_03"); //Nigdy nie myslalem, ze Lukasz moze zostac gubernatorem.
	}
	else if (Mod_REL_Stadthalter == 3)
	{
		AI_Output(self, hero, "Info_Mod_FrauRichard_REL_Hi_19_04"); //Nigdy nie pomyslalem, ze Wendel moze zostac gubernatorem!
	};

	AI_Output(self, hero, "Info_Mod_FrauRichard_REL_Hi_19_05"); //Ale moze byc tylko lepsze niz u Anselma.
	AI_Output(self, hero, "Info_Mod_FrauRichard_REL_Hi_19_06"); //Przynajmniej istnieja zasady dotyczace korzystania z dawcy radosci.
	AI_Output(hero, self, "Info_Mod_FrauRichard_REL_Hi_15_07"); //A jesli sie nie myle, czy znalazles innego partnera?
	AI_Output(self, hero, "Info_Mod_FrauRichard_REL_Hi_19_08"); //Shh, nie za glosno. Oficjalnie nie jestesmy para, po prostu starymi szkolnymi przyjaciólmi.
	AI_Output(self, hero, "Info_Mod_FrauRichard_REL_Hi_19_09"); //Zabral mnie po powrocie.
	AI_Output(self, hero, "Info_Mod_FrauRichard_REL_Hi_19_10"); //Ale wydaje sie, ze cos sie tam rozwija.....
	AI_Output(self, hero, "Info_Mod_FrauRichard_REL_Hi_19_11"); //Bez pana nie byloby to mozliwe. Tutaj chce dac ci ten dar.

	B_GiveInvItems	(self, hero, ItRi_Dex_01, 1);

	AI_Output(self, hero, "Info_Mod_FrauRichard_REL_Hi_19_12"); //Pierscien ten przekazywany jest w rodzinie od co najmniej trzech pokolen. Teraz jednak chce, aby to byl Twój.
	AI_Output(hero, self, "Info_Mod_FrauRichard_REL_Hi_15_13"); //Dziekuje bardzo.
	AI_Output(self, hero, "Info_Mod_FrauRichard_REL_Hi_19_14"); //Oto teraz!
};

INSTANCE Info_Mod_FrauRichard_REL_EXIT (C_INFO)
{
	npc		= Mod_7719_OUT_Frau_REL;
	nr		= 1;
	condition	= Info_Mod_FrauRichard_REL_EXIT_Condition;
	information	= Info_Mod_FrauRichard_REL_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_FrauRichard_REL_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_FrauRichard_REL_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
