INSTANCE Info_Mod_FakeHero_Hi (C_INFO)
{
	npc		= Fake_Hero;
	nr		= 1;
	condition	= Info_Mod_FakeHero_Hi_Condition;
	information	= Info_Mod_FakeHero_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kim jestes?";
};

FUNC INT Info_Mod_FakeHero_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_FakeHero_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");
	B_Say (self, hero, "$WHOAREYOU");
	AI_Output(hero, self, "Info_Mod_FakeHero_Hi_15_02"); //Co robisz?
	AI_Output(self, hero, "Info_Mod_FakaHero_Hi_15_03"); //Co robisz?
	AI_Output(hero, self, "Info_Mod_FakeHero_Hi_15_04"); //To wystarczy, teraz to Twoja kolej!
	AI_Output(self, hero, "Info_Mod_FakeHero_Hi_15_05"); //To wystarczy, teraz to Twoja kolej!

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_GuildEnemy, 0);
};
