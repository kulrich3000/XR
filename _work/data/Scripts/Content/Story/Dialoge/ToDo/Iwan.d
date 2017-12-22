INSTANCE Info_Mod_Iwan_Hi (C_INFO)
{
	npc		= Mod_7206_NONE_Iwan_NW;
	nr		= 1;
	condition	= Info_Mod_Iwan_Hi_Condition;
	information	= Info_Mod_Iwan_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Iwan_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Iwan_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Iwan_Hi_11_00"); //Co, co sie stalo?
	AI_Output(self, hero, "Info_Mod_Iwan_Hi_11_01"); //Ostrze w tylnej czesci szyi i moje bezglowe cialo sa ostatnia rzecza jaka pamietam, wówczas tylko strzepy percepcji, ciala i glowy, jakby uwiezione, ze stopniowo opadaja moje moce fizyczne i magiczne.
	AI_Output(self, hero, "Info_Mod_Iwan_Hi_11_02"); //A teraz stoje tu znowu zywy.
	AI_Output(self, hero, "Info_Mod_Iwan_Hi_11_03"); //To byla wasza zasluga, moge to odczuc.
	AI_Output(hero, self, "Info_Mod_Iwan_Hi_15_04"); //Tak, na pewno zrobilem to, co powiedzialem.
	AI_Output(self, hero, "Info_Mod_Iwan_Hi_11_05"); //Musicie byc utalentowanym wojownikiem i magiem dla dobra i musicie otrzymac moje wsparcie zanim bede nadal polowal i niszczyl demony i nieumarle.
	AI_Output(self, hero, "Info_Mod_Iwan_Hi_11_06"); //Tutaj wez ten przepis i te pojemniki.

	CreateInvItems	(hero, ItWr_Rezept_Iwan, 1);
	CreateInvItems	(hero, ItMi_Salpeter, 5);

	B_ShowGivenThings	("5 butelek i receptura otrzymana");

	AI_Output(self, hero, "Info_Mod_Iwan_Hi_11_07"); //Miejmy nadzieje, ze pomoga ci zrealizowac wasze dazenie do sprawiedliwosci i dobroci.
	AI_Output(self, hero, "Info_Mod_Iwan_Hi_11_08"); //Kto wie, moze pewnego dnia nasze sciezki znów sie skrzyzuja. Bogowie moga zapewnic Ci bezpieczenstwo.

	B_GivePlayerXP	(2000);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOT");

	AI_Teleport	(self, "TOT");
};
