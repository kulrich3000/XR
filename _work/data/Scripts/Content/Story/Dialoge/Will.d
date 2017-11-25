INSTANCE Info_Mod_Will_Hi (C_INFO)
{
	npc		= Mod_7589_OUT_Will_REL;
	nr		= 1;
	condition	= Info_Mod_Will_Hi_Condition;
	information	= Info_Mod_Will_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Will_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Will_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Will_Hi_06_00"); //Wejdz do srodka, przyjaciel. Obecnie trwa moja nowa, rewolucyjna gra sceniczna.
	AI_Output(hero, self, "Info_Mod_Will_Hi_15_01"); //Co jest tak rewolucyjne?
	AI_Output(self, hero, "Info_Mod_Will_Hi_06_02"); //Cala rzecz obcielam az do kulminacji!
	AI_Output(self, hero, "Info_Mod_Will_Hi_06_03"); //Innowacja a la Shakesbeer!
	AI_Output(self, hero, "Info_Mod_Will_Hi_06_04"); //Jak czesto siedzisz w smoczku i ogladasz - byc moze ekscytujace - teatralne pièce teatrale, zabawe, zabawe goraczkowo, a jednak - po dwóch godzinach, po trzech godzinach wkradania sie jarzacego;
	AI_Output(self, hero, "Info_Mod_Will_Hi_06_05"); //Jesli go usuniesz, ale dalej nadchodzi czas, tym czesciej trzeba z nim walczyc.
	AI_Output(self, hero, "Info_Mod_Will_Hi_06_06"); //I na pewno nikt nie moze wypelnic go przez kilka godzin bez sceny mostu, jesli On tak zechce, nie ma takiej potrzeby.
	AI_Output(self, hero, "Info_Mod_Will_Hi_06_07"); //Teraz to sie zmieni! Moja koncepcja zaklada koncentracje napiecia, napiecia, napiecia, uderzenia ciosem, ciosem przez cios, cios przez cios losu na uderzenie mlotkiem, lub tak, jak On chce.
	AI_Output(self, hero, "Info_Mod_Will_Hi_06_08"); //Zaczyna sie kolejne recita, koncert. Moze byc tam za 100 zlotych monet.
};

INSTANCE Info_Mod_Will_EXIT (C_INFO)
{
	npc		= Mod_7589_OUT_Will_REL;
	nr		= 1;
	condition	= Info_Mod_Will_EXIT_Condition;
	information	= Info_Mod_Will_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Will_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Will_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
