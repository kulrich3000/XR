INSTANCE Info_Mod_Shivar_Eisgebiet (C_INFO)
{
	npc		= Monster_11039_Shivar_EIS;
	nr		= 1;
	condition	= Info_Mod_Shivar_Eisgebiet_Condition;
	information	= Info_Mod_Shivar_Eisgebiet_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Shivar_Eisgebiet_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Shivar_Eisgebiet_Info()
{
	AI_Output(self, hero, "Info_Mod_Shivar_Eisgebiet_20_00"); //Co? Nie spodziewalem sie, ze tu Cie nie odnajde.
	AI_Output(hero, self, "Info_Mod_Shivar_Eisgebiet_15_01"); //Co sie tu dzieje?
	AI_Output(self, hero, "Info_Mod_Shivar_Eisgebiet_20_02"); //Przygotowuje wraz z Beliarsami atak na demony magika Xeres' a, który zgromadzil sie niedaleko stad......
	AI_Output(self, hero, "Info_Mod_Shivar_Eisgebiet_20_03"); //Cóz, Twój przyjazd zwieksza nasza liczbe i sile przebicia.
	AI_Output(self, hero, "Info_Mod_Shivar_Eisgebiet_20_04"); //Mozemy wykorzystac wszelka mozliwa pomoc, poniewaz bawól demon, który prowadzi stworzenia jest niemal na równi ze mna.
	AI_Output(self, hero, "Info_Mod_Shivar_Eisgebiet_20_05"); //I slyszalem pogloski, ze zaden demon nie byl w stanie go wypedzic.
	AI_Output(self, hero, "Info_Mod_Shivar_Eisgebiet_20_06"); //No cóz, my to teraz poddalismy próbie.
	AI_Output(self, hero, "Info_Mod_Shivar_Eisgebiet_20_07"); //Przygotuj sie do walki, stworzen Beliarów. Teraz nadszedl czas na strajk i ukaranie zdrajców. Dla Beliara!

	AI_StopProcessInfos	(self);

	/*
	B_StartOtherRoutine	(self, "ANGRIFF");
	B_StartOtherRoutine	(Monster_11041_Demon_EIS, "ANGRIFF");
	B_StartOtherRoutine	(Monster_11042_Demon_EIS, "ANGRIFF");
	B_StartOtherRoutine	(Monster_11043_Demon_EIS, "ANGRIFF");
	B_StartOtherRoutine	(Monster_11044_Schrat_EIS, "ANGRIFF");
	B_StartOtherRoutine	(Monster_11045_Schrat_EIS, "ANGRIFF");
	B_StartOtherRoutine	(Monster_11046_Schrat_EIS, "ANGRIFF");
	*/
};

INSTANCE Info_Mod_Shivar_MahishaDead (C_INFO)
{
	npc		= Monster_11039_Shivar_EIS;
	nr		= 1;
	condition	= Info_Mod_Shivar_MahishaDead_Condition;
	information	= Info_Mod_Shivar_MahishaDead_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Shivar_MahishaDead_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Shivar_Eisgebiet))
	&& (Npc_IsDead(Monster_11040_Mahisha_EIS))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Shivar_MahishaDead_Info()
{
	AI_Output(self, hero, "Info_Mod_Shivar_MahishaDead_20_00"); //To jest skonczone i wrogowie sa zmiazdzeni. Cóz za blogoslawienstwo, huahahahahahahahahaha....
	AI_Output(self, hero, "Info_Mod_Shivar_MahishaDead_20_01"); //Zaskakuje mnie jednak fakt, ze jego aura demoniczna zaczyna sie calkowicie wybuchac dopiero po waszym wplywie.
	AI_Output(hero, self, "Info_Mod_Shivar_MahishaDead_15_02"); //No cóz, no cóz....
	AI_Output(self, hero, "Info_Mod_Shivar_MahishaDead_20_03"); //A co z Beliarem.....
	AI_Output(hero, self, "Info_Mod_Shivar_MahishaDead_15_04"); //Och, przepraszam, nie dosc demonicznej aury....
	AI_Output(self, hero, "Info_Mod_Shivar_MahishaDead_20_05"); //Ty....... w ogóle nie jestes demonem, to tylko oszustwo.
	AI_Output(hero, self, "Info_Mod_Shivar_MahishaDead_15_06"); //Um, bylo to konieczne....
	AI_Output(self, hero, "Info_Mod_Shivar_MahishaDead_20_07"); //(przerwania) Wylacza sie! Cóz, tylko dlatego udalo sie zabic Mahisze.
	AI_Output(self, hero, "Info_Mod_Shivar_MahishaDead_20_08"); //(do bohatera) No cóz, jestem gotów przebaczyc wam swoje wykroczenie....
	AI_Output(self, hero, "Info_Mod_Shivar_MahishaDead_20_09"); //A teraz..... wyjezdzac Nie chce spedzac z toba zbyt wiele czasu dla zwyklych smiertelników. Beliar badzcie z wami.

	B_GivePlayerXP	(500);

	Mod_HeroDemonCounter = 10;

	AI_StopProcessInfos	(self);

	AI_Teleport	(self, "TOT");
	B_StartOtherRoutine	(self, "TOT");

	AI_Teleport	(Monster_11041_Demon_EIS, "TOT");
	B_StartOtherRoutine	(Monster_11041_Demon_EIS, "TOT");

	AI_Teleport	(Monster_11042_Demon_EIS, "TOT");
	B_StartOtherRoutine	(Monster_11042_Demon_EIS, "TOT");

	AI_Teleport	(Monster_11043_Demon_EIS, "TOT");
	B_StartOtherRoutine	(Monster_11043_Demon_EIS, "TOT");

	AI_Teleport	(Monster_11044_Schrat_EIS, "TOT");
	B_StartOtherRoutine	(Monster_11044_Schrat_EIS, "TOT");

	AI_Teleport	(Monster_11045_Schrat_EIS, "TOT");
	B_StartOtherRoutine	(Monster_11045_Schrat_EIS, "TOT");

	AI_Teleport	(Monster_11046_Schrat_EIS, "TOT");
	B_StartOtherRoutine	(Monster_11046_Schrat_EIS, "TOT");
};
