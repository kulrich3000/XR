INSTANCE Info_Mod_Argibast_Hi (C_INFO)
{
	npc		= GardeInnos_4050_Argibast;
	nr		= 1;
	condition	= Info_Mod_Argibast_Hi_Condition;
	information	= Info_Mod_Argibast_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Argibast_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Argibast_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Argibast_Hi_02_00"); //Well, look who's here. You've helped these Beliaran followers destroy our siege ring. You'll pay for this in the name of Innos!
	AI_Output(hero, self, "Info_Mod_Argibast_Hi_15_01"); //Shut up, you spawn of hell! You do not serve Innos, but yourselves!
	AI_Output(self, hero, "Info_Mod_Argibast_Hi_02_02"); //How dare you...?
	AI_Output(hero, self, "Info_Mod_Argibast_Hi_15_03"); //I will stop you in the name of Beliars!
	AI_Output(self, hero, "Info_Mod_Argibast_Hi_02_04"); //Do that. Even if you defeat me, which will never happen, you can't stop the others.
	AI_Output(self, hero, "Info_Mod_Argibast_Hi_02_05"); //Soon they will have found the sword Innos'!
	AI_Output(hero, self, "Info_Mod_Argibast_Hi_15_06"); //The what?
	AI_Output(self, hero, "Info_Mod_Argibast_Hi_02_07"); //Your journey ends here, little man!

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_Kill, 0);

	B_LogEntry	(TOPIC_MOD_BEL_GARDEINNOS, "Argibast, a member of the Innos Guard, told us that the other guards are looking for the Innos sword. That doesn't sound good.");

	self.guild = GIL_STRF;
	Npc_SetTrueGuild	(self, GIL_STRF);
};
