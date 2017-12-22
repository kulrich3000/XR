INSTANCE Info_Mod_FakeHero_Hi (C_INFO)
{
	npc		= Fake_Hero;
	nr		= 1;
	condition	= Info_Mod_FakeHero_Hi_Condition;
	information	= Info_Mod_FakeHero_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Who are you?";
};

FUNC INT Info_Mod_FakeHero_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_FakeHero_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");
	B_Say (self, hero, "$WHOAREYOU");
	AI_Output(hero, self, "Info_Mod_FakeHero_Hi_15_02"); //What are you doing?
	AI_Output(self, hero, "Info_Mod_FakaHero_Hi_15_02"); //What are you doing?
	AI_Output(hero, self, "Info_Mod_FakeHero_Hi_15_03"); //That's enough, now it's your turn!
	AI_Output(self, hero, "Info_Mod_FakeHero_Hi_15_03"); //That's enough, now it's your turn!

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_GuildEnemy, 0);
};
