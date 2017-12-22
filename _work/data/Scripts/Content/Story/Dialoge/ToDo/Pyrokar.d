INSTANCE Info_Mod_Pyrokar_Hi (C_INFO)
{
	npc		= Mod_551_KDF_Pyrokar_NW;
	nr		= 1;
	condition	= Info_Mod_Pyrokar_Hi_Condition;
	information	= Info_Mod_Pyrokar_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Pyrokar_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Pyrokar_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Pyrokar_Hi_11_00"); //Welcome to our monastery. What can we do for you?
};

INSTANCE Info_Mod_Pyrokar_Hammer (C_INFO)
{
	npc		= Mod_551_KDF_Pyrokar_NW;
	nr		= 1;
	condition	= Info_Mod_Pyrokar_Hammer_Condition;
	information	= Info_Mod_Pyrokar_Hammer_Info;
	permanent	= 0;
	important	= 0;
	description	= "I need the Holy Hammer.";
};

FUNC INT Info_Mod_Pyrokar_Hammer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Pyrokar_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_UrizielKaputt))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Andokai_Hammer))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_Goetterschwerter))
	&& (Npc_HasItems(hero, Holy_Hammer_MIS) == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Pyrokar_Hammer_Info()
{
	AI_Output(hero, self, "Info_Mod_Pyrokar_Hammer_15_00"); //I need the Holy Hammer.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Hammer_11_01"); //Go to Garwig and tell him I'm sending you. He will allow you to take the hammer.

	B_LogEntry	(TOPIC_MOD_URIZIEL, "Pyrokar allowed me to get the holy hammer. I'm supposed to let Garwig know first.");
};

INSTANCE Info_Mod_Pyrokar_Goetter (C_INFO)
{
	npc		= Mod_551_KDF_Pyrokar_NW;
	nr		= 1;
	condition	= Info_Mod_Pyrokar_Goetter_Condition;
	information	= Info_Mod_Pyrokar_Goetter_Info;
	permanent	= 0;
	important	= 0;
	description	= "What do you know about the power carriers?";
};

FUNC INT Info_Mod_Pyrokar_Goetter_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Pyrokar_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_Trimedron))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Pyrokar_Goetter_Info()
{
	AI_Output(hero, self, "Info_Mod_Pyrokar_Goetter_15_00"); //What do you know about the power carriers?
	AI_Output(self, hero, "Info_Mod_Pyrokar_Goetter_11_01"); //There are three of them and like the gods' weapons, there is one in each area. Furthermore, each of them can only be killed by one of the gods' weapons.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Goetter_11_02"); //But be careful, they are very powerful.

	B_LogEntry	(TOPIC_MOD_URIZIEL, "The authorities are also located in different areas. Besides, each of them can only be killed by one of the gods' weapons.");
};

INSTANCE Info_Mod_Pyrokar_Machttraeger (C_INFO)
{
	npc		= Mod_551_KDF_Pyrokar_NW;
	nr		= 1;
	condition	= Info_Mod_Pyrokar_Machttraeger_Condition;
	information	= Info_Mod_Pyrokar_Machttraeger_Info;
	permanent	= 0;
	important	= 0;
	description	= "What kind of beings are the powerful ones?";
};

FUNC INT Info_Mod_Pyrokar_Machttraeger_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Pyrokar_Goetter))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Pyrokar_Machttraeger_Info()
{
	AI_Output(hero, self, "Info_Mod_Pyrokar_Machttraeger_15_00"); //What kind of beings are the powerful ones?
	AI_Output(self, hero, "Info_Mod_Pyrokar_Machttraeger_11_01"); //We do not know, but as I have already mentioned, they are very powerful. You're gonna have to find out for yourself.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Machttraeger_11_02"); //But we found out something about the whereabouts. And we think we know who's in the Minental.
	AI_Output(hero, self, "Info_Mod_Pyrokar_Machttraeger_15_03"); //What do you know?
	AI_Output(self, hero, "Info_Mod_Pyrokar_Machttraeger_11_04"); //All right, I'll tell you what we found out.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Machttraeger_11_05"); //The power bearer in the Minental is probably a shadow lord named Urnol. Xardas has reported that you have already met him.

	if (!Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_Daemonisch3))
	{
		AI_Output(self, hero, "Info_Mod_Pyrokar_Machttraeger_11_06"); //At the moment he seems to be causing unrest here in Khorinis. You have to ask him.
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Pyrokar_Machttraeger_11_07"); //After you put it there, he will have gone back to the valley of the river Minental.
	};

	AI_Output(self, hero, "Info_Mod_Pyrokar_Machttraeger_11_08"); //Khorinis' power carrier appears to be on an island. But without a ship, you won't be able to get there.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Machttraeger_11_09"); //The last ruler is in Jharkendar, the valley discovered by the water magicians. I understand you were involved in all this. There are several mansions.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Machttraeger_11_10"); //It is certainly in one of these buildings.

	B_LogEntry	(TOPIC_MOD_URIZIEL, "The power carrier in the Minental is the Shadowlord Urnol. He'll probably be back in the Minental again. The Khorinis power carrier is said to be on a remote island. I'm gonna need a ship to get there. And in Jharkendar, I was supposed to pick up the mansions. This can be fun.");
};

INSTANCE Info_Mod_Pyrokar_Rasend (C_INFO)
{
	npc		= Mod_551_KDF_Pyrokar_NW;
	nr		= 1;
	condition	= Info_Mod_Pyrokar_Rasend_Condition;
	information	= Info_Mod_Pyrokar_Rasend_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Pyrokar_Rasend_Condition()
{
	if (Mod_WM_Rasend >= 1)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Saturas_NW_Rasend02))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Pyrokar_Rasend_Info()
{
	AI_Output(self, hero, "Info_Mod_Pyrokar_Rasend_11_00"); //There's no way we can leave Khorinis at the moment.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Rasend_11_01"); //As long as the demon is raging here, it would be irresponsible if we magicians left the island to ourselves.
};

INSTANCE Info_Mod_Pyrokar_Trank (C_INFO)
{
	npc		= Mod_551_KDF_Pyrokar_NW;
	nr		= 1;
	condition	= Info_Mod_Pyrokar_Trank_Condition;
	information	= Info_Mod_Pyrokar_Trank_Info;
	permanent	= 0;
	important	= 0;
	description	= "I bring the potion for the novices.";
};

FUNC INT Info_Mod_Pyrokar_Trank_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Pyrokar_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Daron_ImKloster))
	&& (Npc_HasItems(hero, VatrasNovizenTrunk) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Pyrokar_Trank_Info()
{
	AI_Output(hero, self, "Info_Mod_Pyrokar_Trank_15_00"); //I bring the potion for the novices.

	B_GiveInvItems	(hero, self, VatrasNovizenTrunk, 1);

	AI_Output(self, hero, "Info_Mod_Pyrokar_Trank_11_01"); //I sent Daron.
	AI_Output(hero, self, "Info_Mod_Pyrokar_Trank_15_02"); //Daron gave me the potion and told me to bring it to you.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Trank_11_03"); //Thank you very much. You've helped us a lot.

	if (Npc_KnowsInfo(hero, Info_Mod_Pyrokar_Mitglied))
	{
		B_LogEntry_More	(TOPIC_MOD_DARONSGEFALLEN, TOPIC_MOD_FEUERMAGIER, "I brought Pyrokar the potion.", "I did Daron a favor.");
	}
	else
	{
		B_LogEntry	(TOPIC_MOD_DARONSGEFALLEN, "I brought Pyrokar the potion.");
	};

	Mod_FMFieberDay = Wld_GetDay();
	Mod_FMFieber = 1;

	B_SetTopicStatus	(TOPIC_MOD_DARONSGEFALLEN, LOG_SUCCESS);

	B_GivePlayerXP	(100);

	B_Göttergefallen(1, 1);
};

INSTANCE Info_Mod_Pyrokar_Mitglied (C_INFO)
{
	npc		= Mod_551_KDF_Pyrokar_NW;
	nr		= 1;
	condition	= Info_Mod_Pyrokar_Mitglied_Condition;
	information	= Info_Mod_Pyrokar_Mitglied_Info;
	permanent	= 0;
	important	= 0;
	description	= "I want to be one of your novices.";
};

FUNC INT Info_Mod_Pyrokar_Mitglied_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Pyrokar_Hi))
	&& (Mod_Gilde	==	0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Pyrokar_Mitglied_Info()
{
	AI_Output(hero, self, "Info_Mod_Pyrokar_Mitglied_15_00"); //I want to be one of your novices.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Mitglied_11_01"); //We always need new novices. However, you must first prove yourself worthy.
	AI_Output(hero, self, "Info_Mod_Pyrokar_Mitglied_15_02"); //How can I prove myself worthy?
	AI_Output(self, hero, "Info_Mod_Pyrokar_Mitglied_11_03"); //Help each of the Fire Magicians a little bit. All you have to do is help the normal mage, we high mages won't test you.

	B_LogEntry	(TOPIC_MOD_FEUERMAGIER, "To become a fire novice, I must help every fire magician.");

	if (Npc_KnowsInfo(hero, Info_Mod_Pyrokar_Trank))
	{
		B_LogEntry	(TOPIC_MOD_FEUERMAGIER, "I did Daron a favor.");
	};
};

INSTANCE Info_Mod_Pyrokar_Geholfen (C_INFO)
{
	npc		= Mod_551_KDF_Pyrokar_NW;
	nr		= 1;
	condition	= Info_Mod_Pyrokar_Geholfen_Condition;
	information	= Info_Mod_Pyrokar_Geholfen_Info;
	permanent	= 0;
	important	= 0;
	description	= "I helped all the magicians.";
};

FUNC INT Info_Mod_Pyrokar_Geholfen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Pyrokar_Mitglied))
	&& (Mod_Gilde	==	0)
	&& (Npc_KnowsInfo(hero, Info_Mod_Milten_Fertig))
	&& (Npc_KnowsInfo(hero, Info_Mod_Marduk_FeuerballRune))
	&& (Npc_KnowsInfo(hero, Info_Mod_Gorax_HabAlkohol))
	&& (Npc_KnowsInfo(hero, Info_Mod_Parlan_Aufgabe_Fertig))
	&& (Npc_KnowsInfo(hero, Info_Mod_Pyrokar_Trank))
	&& (Npc_KnowsInfo(hero, Info_Mod_Neoras_HabTrank))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Pyrokar_Geholfen_Info()
{
	AI_Output(hero, self, "Info_Mod_Pyrokar_Geholfen_15_00"); //I helped all the magicians.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Geholfen_11_01"); //Very good. Very good. You can join us now.

	B_GivePlayerXP	(200);

	B_LogEntry	(TOPIC_MOD_FEUERMAGIER, "I have the approval of all magicians and can now become one of their novices.");
};

INSTANCE Info_Mod_Pyrokar_Aufnahme (C_INFO)
{
	npc		= Mod_551_KDF_Pyrokar_NW;
	nr		= 1;
	condition	= Info_Mod_Pyrokar_Aufnahme_Condition;
	information	= Info_Mod_Pyrokar_Aufnahme_Info;
	permanent	= 1;
	important	= 0;
	description	= "I'm ready to join you.";
};

FUNC INT Info_Mod_Pyrokar_Aufnahme_Condition()
{
	if (Mod_Gilde == 0)
	&& ((Npc_KnowsInfo(hero, Info_Mod_Pyrokar_Geholfen))
	|| (Npc_KnowsInfo(hero, Info_Mod_Pyrokar_Kristall)))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Pyrokar_Aufnahme_Info()
{
	AI_Output(hero, self, "Info_Mod_Pyrokar_Aufnahme_15_00"); //I'm ready to join you.
	
	if (hero.level >= 5)
	{
		AI_Output(self, hero, "Info_Mod_Pyrokar_Aufnahme_11_01"); //You are ready to become a fire novice.
		AI_Output(self, hero, "Info_Mod_Pyrokar_Aufnahme_11_02"); //But once you wear one of our novice robes, there is no turning back.
		
		if (Mod_HatPlayerNeutraleKlamotten())
		{
			if (Mod_Gottstatus <= 8)
			{
				AI_Output(self, hero, "Info_Mod_Pyrokar_Aufnahme_11_05"); //You should, however, do a few things in favor of Innos first.
			}
			else
			{
				Info_ClearChoices	(Info_Mod_Pyrokar_Aufnahme);

				Info_AddChoice	(Info_Mod_Pyrokar_Aufnahme, "I changed my mind.", Info_Mod_Pyrokar_Aufnahme_Nein);
				Info_AddChoice	(Info_Mod_Pyrokar_Aufnahme, "I want to join you.", Info_Mod_Pyrokar_Aufnahme_Ja);
			};
		}
		else
		{
			AI_Output(self, hero, "Info_Mod_Pyrokar_Aufnahme_11_04"); //You should get yourself a neutral armor first.
		};
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Pyrokar_Aufnahme_11_03"); //You better get some more experience.
	};
};

FUNC VOID Info_Mod_Pyrokar_Aufnahme_Nein()
{
	AI_Output(hero, self, "Info_Mod_Pyrokar_Aufnahme_Nein_15_00"); //I changed my mind.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Aufnahme_Nein_11_01"); //Whatever you say.

	Info_ClearChoices	(Info_Mod_Pyrokar_Aufnahme);
};

FUNC VOID Info_Mod_Pyrokar_Aufnahme_Ja()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Pyrokar_Kristall))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Pyrokar_Geholfen)) {
		Spine_UnlockAchievement(SPINE_ACHIEVEMENT_52);
	} else {
		Spine_UnlockAchievement(SPINE_ACHIEVEMENT_53);
	};
	Spine_UnlockAchievement(SPINE_ACHIEVEMENT_55);
	Spine_UnlockAchievement(SPINE_ACHIEVEMENT_59);
	
	AI_Output(hero, self, "Info_Mod_Pyrokar_Aufnahme_Ja_15_00"); //I want to join you.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Aufnahme_Ja_11_01"); //Good. Here's your rehearsal.

	CreateInvItems	(self, ITAR_NOV_L, 1);
	B_GiveInvItems	(self, hero, ITAR_NOV_L, 1);

	AI_UnequipArmor	(hero);
	AI_EquipArmor	(hero, ItAr_Nov_L);

	AI_Output(self, hero, "Info_Mod_Pyrokar_Aufnahme_Ja_11_02"); //You shouldn't be showing yourself in front of the Beliaran followers, they might react very irritated to you.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Aufnahme_Ja_11_03"); //As one of our novices, you can learn our magic.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Aufnahme_Ja_11_04"); //It is also your duty to serve the magicians.

	AI_Output(self, hero, "Info_Mod_Pyrokar_Aufnahme_Ja_11_05"); //The only weapon I can offer you is a baton.

	B_GiveInvItems	(self, hero, ItMw_1h_Nov_Mace, 1);

	AI_Output(self, hero, "Info_Mod_Pyrokar_Aufnahme_Ja_11_06"); //I'll give you a few more details.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Aufnahme_Ja_11_07"); //That would be first of all a rune stone, with which you can create your first rune.

	B_GiveInvItems	(self, hero, ItMi_Runeblank, 1);

	AI_Output(self, hero, "Info_Mod_Pyrokar_Aufnahme_Ja_11_08"); //Then you, as a novice, are also entitled to enter the library.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Aufnahme_Ja_11_09"); //There you will meet Hyglas, who will teach you how to create runes.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Aufnahme_Ja_11_10"); //Besides, Marduk will teach you the magic circles when you're ready.

	B_GiveInvItems	(self, hero, ItKe_KlosterBibliothek, 1);

	B_LogEntry_More	(TOPIC_MOD_FEUERMAGIER, TOPIC_MOD_GILDENAUFNAHME, "I'm a fire novice now.", "I'm a fire novice now.");
	B_SetTopicStatus	(TOPIC_MOD_FEUERMAGIER, LOG_SUCCESS);
	B_SetTopicStatus	(TOPIC_MOD_GILDENAUFNAHME, LOG_SUCCESS);

	B_SetTopicStatus	(TOPIC_MOD_SÖLDNER, LOG_FAILED);
	B_SetTopicStatus	(TOPIC_MOD_WASSERMAGIER, LOG_FAILED);
	B_SetTopicStatus	(TOPIC_MOD_MILIZ, LOG_FAILED);
	B_SetTopicStatus	(TOPIC_MOD_DAEMONENBESCHWOERER, LOG_FAILED);

	Log_CreateTopic	(TOPIC_MOD_LEHRER_KLOSTER, LOG_NOTE);
	B_LogEntry_NS	(TOPIC_MOD_LEHRER_KLOSTER, "Marduk teaches the magic circles.");
	B_LogEntry_NS	(TOPIC_MOD_LEHRER_KLOSTER, "At Hyglas I can learn how to make runes.");
	
	Mod_Gilde = 6;

	Mod_925_KDF_Talamon_NW.aivar[AIV_PASSGATE] = TRUE;

	hero.guild = GIL_VLK;
	Npc_SetTrueGuild	(hero, GIL_VLK);

	Info_ClearChoices	(Info_Mod_Pyrokar_Aufnahme);

	CreateInvItems	(Mod_917_KDF_Gorax_NW, ItBE_Addon_NOV_01, 1);

	Snd_Play ("LEVELUP");

	B_GivePlayerXP	(400);

	Monster_Max += 30;

	B_Göttergefallen(1, 5);

	Mod_FMAufnahme_Day = Wld_GetDay();

	Wld_ReassignPortalToGuild ("monastery04", GIL_PUBLIC); //Schlafraum Novizen
	Wld_ReassignPortalToGuild ("monastery05", GIL_PUBLIC); //Schlafraum Novizen
	Wld_ReassignPortalToGuild ("monastery10", GIL_PUBLIC); //Schlafraum Novizen
	Wld_ReassignPortalToGuild ("monastery12", GIL_PUBLIC); //Schlafraum Novizen
	
	Wld_ReassignPortalToGuild ("monastery06", GIL_PUBLIC); //Schlafraum Magier
	Wld_ReassignPortalToGuild ("monastery07", GIL_PUBLIC); //Schlafraum Magier
	Wld_ReassignPortalToGuild ("monastery08", GIL_PUBLIC); //Schlafraum Magier
	Wld_ReassignPortalToGuild ("monastery09", GIL_PUBLIC); //Schlafraum Magier
};

INSTANCE Info_Mod_Pyrokar_FeuerGegenEis (C_INFO)
{
	npc		= Mod_551_KDF_Pyrokar_NW;
	nr		= 1;
	condition	= Info_Mod_Pyrokar_FeuerGegenEis_Condition;
	information	= Info_Mod_Pyrokar_FeuerGegenEis_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Pyrokar_FeuerGegenEis_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Daron_FeuerGegenEis))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Pyrokar_FeuerGegenEis_Info()
{
	AI_Output(self, hero, "Info_Mod_Pyrokar_FeuerGegenEis_11_00"); //There you are, Novice.
	AI_Output(hero, self, "Info_Mod_Pyrokar_FeuerGegenEis_15_01"); //What has happened?
	AI_Output(self, hero, "Info_Mod_Pyrokar_FeuerGegenEis_11_02"); //We don't know for sure yet.
	AI_Output(self, hero, "Info_Mod_Pyrokar_FeuerGegenEis_11_03"); //But it seems as if a mysterious portal has formed at the stone circle on Sekob's yard, through which more and more creatures of ice penetrate into the environment.
	AI_Output(self, hero, "Info_Mod_Pyrokar_FeuerGegenEis_11_04"); //These water-close creatures have spread especially at the lake.
	AI_Output(self, hero, "Info_Mod_Pyrokar_FeuerGegenEis_11_05"); //Now, with Innos' help, these beings have to be pushed back, the phenomenon has to be investigated and - if possible - the portal has to be closed again.
	AI_Output(self, hero, "Info_Mod_Pyrokar_FeuerGegenEis_11_06"); //(thinkingly calculating) This would allow us to restrain the influence of the water magicians on the courts and secure the supremacy of our church Innos'.
	AI_Output(self, hero, "Info_Mod_Pyrokar_FeuerGegenEis_11_07"); //(again to the hero) Anyway, I have already sent Sergio with some novices to explore the situation.
	AI_Output(hero, self, "Info_Mod_Pyrokar_FeuerGegenEis_15_08"); //What's my job?
	AI_Output(self, hero, "Info_Mod_Pyrokar_FeuerGegenEis_11_09"); //I was just about to come to that. Hyglas has, however, prepared himself to take action against these ice creatures with his knowledge of fire magic.
	AI_Output(self, hero, "Info_Mod_Pyrokar_FeuerGegenEis_11_10"); //As my most experienced novice, you will accompany him to the courts and support him if necessary.
	AI_Output(self, hero, "Info_Mod_Pyrokar_FeuerGegenEis_11_11"); //There is no time to lose and you leave immediately. Innos' protect you on your way.

	Log_CreateTopic	(TOPIC_MOD_FM_FEUEREIS, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_FM_FEUEREIS, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_FM_FEUEREIS, "So there I am with Hyglas. From Sekobs yard more and more ice creatures stream through a mysterious portal to Khorinis and our boys are involved in battles with them at the lake. There is no time to lose to help them.");
	
	B_StartOtherRoutine(Mod_104_BAU_Rega_NW, "FEUERGEGENEIS");
	B_StartOtherRoutine(Mod_1412_BAU_Bauer_NW, "FEUERGEGENEIS");
};

INSTANCE Info_Mod_Pyrokar_FeuerGegenEis2 (C_INFO)
{
	npc		= Mod_551_KDF_Pyrokar_NW;
	nr		= 1;
	condition	= Info_Mod_Pyrokar_FeuerGegenEis2_Condition;
	information	= Info_Mod_Pyrokar_FeuerGegenEis2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Pyrokar_FeuerGegenEis2_Condition()
{
	if (Mod_FM_FeuerEis == 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Pyrokar_FeuerGegenEis2_Info()
{
	AI_Output(self, hero, "Info_Mod_Pyrokar_FeuerGegenEis2_11_00"); //You finally woke up!
	AI_Output(hero, self, "Info_Mod_Pyrokar_FeuerGegenEis2_15_01"); //(irritated) What... what has happened?
	AI_Output(self, hero, "Info_Mod_Pyrokar_FeuerGegenEis2_11_02"); //Sergio found you unconscious in the field and brought you to the monastery.
	AI_Output(hero, self, "Info_Mod_Pyrokar_FeuerGegenEis2_15_03"); //The portal...
	AI_Output(self, hero, "Info_Mod_Pyrokar_FeuerGegenEis2_11_04"); //Yes, you have done it, the portal is locked again.
	AI_Output(self, hero, "Info_Mod_Pyrokar_FeuerGegenEis2_11_05"); //However, we had hoped to learn more about the exact circumstances. Especially since our brother Hyglas is lost.
	AI_Output(hero, self, "Info_Mod_Pyrokar_FeuerGegenEis2_15_06"); //hyglass-- he stayed on the other side.
	AI_Output(self, hero, "Info_Mod_Pyrokar_FeuerGegenEis2_11_07"); //The other side of the portal? You were there?
	AI_Output(hero, self, "Info_Mod_Pyrokar_FeuerGegenEis2_15_08"); //Yes... We found ourselves in an ice cave with a construction feeding the portal with energy.
	AI_Output(self, hero, "Info_Mod_Pyrokar_FeuerGegenEis2_11_09"); //Now I begin to understand.... He stayed behind to seal the portal.
	AI_Output(hero, self, "Info_Mod_Pyrokar_FeuerGegenEis2_15_10"); //Yes, for the good of all of Khorinis, he sacrificed himself and brought the cave to collapse.
	AI_Output(self, hero, "Info_Mod_Pyrokar_FeuerGegenEis2_11_11"); //At Innos, a true act of selflessness... Hmm, now I have to retire with my brothers to consult us.
	AI_Output(self, hero, "Info_Mod_Pyrokar_FeuerGegenEis2_11_12"); //In the meantime, you will rest and visit us in a few hours.

	B_SetTopicStatus	(TOPIC_MOD_FM_FEUEREIS, LOG_SUCCESS);

	B_GivePlayerXP	(400);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
	B_StartOtherRoutine	(Mod_552_KDF_Serpentes_NW, "START");
	B_StartOtherRoutine	(Mod_553_KDF_Ulthar_NW, "START");
	B_StartOtherRoutine	(Mod_924_RIT_Sergio_NW, "START");
	
	B_StartOtherRoutine(Mod_104_BAU_Rega_NW, "START");
	B_StartOtherRoutine(Mod_1412_BAU_Bauer_NW, "START");

	Npc_SetRefuseTalk	(self, 240);

	Mod_TillChange = 1;

	Mod_TillChange_Day = Wld_GetDay();
};

INSTANCE Info_Mod_Pyrokar_Befoerderung (C_INFO)
{
	npc		= Mod_551_KDF_Pyrokar_NW;
	nr		= 1;
	condition	= Info_Mod_Pyrokar_Befoerderung_Condition;
	information	= Info_Mod_Pyrokar_Befoerderung_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Pyrokar_Befoerderung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Pyrokar_FeuerGegenEis2))
	&& (Npc_RefuseTalk(self) == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Pyrokar_Befoerderung_Info()
{
	AI_Output(self, hero, "Info_Mod_Pyrokar_Befoerderung_11_00"); //Well, there you are. We've had extensive discussions.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Befoerderung_11_01"); //Through your merits for the monastery and all of Khorinis, you have proven yourself worthy to join our ranks.
	AI_Output(hero, self, "Info_Mod_Pyrokar_Befoerderung_15_02"); //You want me to become a magician of fire?
	AI_Output(self, hero, "Info_Mod_Pyrokar_Befoerderung_11_03"); //Yes, a priest of holy fire, and a faithful brother in the holy battle for Inno's righteous cause. Say the oath and join our ranks.
	AI_Output(hero, self, "Info_Mod_Pyrokar_Befoerderung_15_04"); //I swear before the almighty Lord Innos, his servants and the holy flame...
	AI_Output(hero, self, "Info_Mod_Pyrokar_Befoerderung_15_05"); //... that from now on and forever my life is connected to fire...
	AI_Output(hero, self, "Info_Mod_Pyrokar_Befoerderung_15_06"); //... until my body and spirit find peace in its sacred halls and the fire of life goes out.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Befoerderung_11_07"); //So now you're a magician of fire.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Befoerderung_11_08"); //Here's your new robe.

	CreateInvItems	(self, ItAr_Kdf_L, 1);
	B_GiveInvItems	(self, hero, ItAr_Kdf_L, 1);

	AI_Output(self, hero, "Info_Mod_Pyrokar_Befoerderung_11_09"); //And here's a key to your new bedchamber.

	B_GiveInvItems	(self, hero, ItKe_KDFPlayer, 1);

	AI_Output(hero, self, "Info_Mod_Pyrokar_Befoerderung_15_10"); //What about Hyglas?
	AI_Output(self, hero, "Info_Mod_Pyrokar_Befoerderung_11_11"); //We will honour his great sacrifice, as he deserves, and make him one of the patron saints of this island.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Befoerderung_11_12"); //Ulthar will now take over his task in the monastery as teacher of fire magic. And there's one more thing...
	AI_Output(hero, self, "Info_Mod_Pyrokar_Befoerderung_15_13"); //Yeah, what?
	AI_Output(self, hero, "Info_Mod_Pyrokar_Befoerderung_11_14"); //There was an urgent task that Hyglas was supposed to do for us.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Befoerderung_11_15"); //But since he is not with us now, we have decided to pass it on to you.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Befoerderung_11_16"); //I know it comes very quickly for you after the last few events, brother, but it's important.
	AI_Output(hero, self, "Info_Mod_Pyrokar_Befoerderung_15_17"); //What's this about?
	AI_Output(self, hero, "Info_Mod_Pyrokar_Befoerderung_11_18"); //Around  a holy place that is sometimes called the center of our faith.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Befoerderung_11_19"); //However, Parlan is best acquainted with the background knowledge of all magicians in the monastery.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Befoerderung_11_20"); //So go to him, then, brother, and discuss everything else with him. Innos keep you safe on your ways.

	Mod_Gilde = 7;

	Snd_Play ("LEVELUP");

	B_GivePlayerXP	(400);

	B_Göttergefallen(1, 5);

	AI_StopProcessInfos	(self);

	Log_CreateTopic	(TOPIC_MOD_PATHERION, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_PATHERION, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_PATHERION, "As soon as the portal is over, there is another important task for me. I'm supposed to contact Parlan to find out more.");
};

INSTANCE Info_Mod_Pyrokar_Patherion2 (C_INFO)
{
	npc		= Mod_551_KDF_Pyrokar_NW;
	nr		= 1;
	condition	= Info_Mod_Pyrokar_Patherion2_Condition;
	information	= Info_Mod_Pyrokar_Patherion2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Pyrokar_Patherion2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Aaron_BarriereWeg))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Pyrokar_Patherion2_Info()
{
	AI_Output(self, hero, "Info_Mod_Pyrokar_Patherion2_11_00"); //I see you've returned from Patherion. So report on what happened there?
	AI_Output(hero, self, "Info_Mod_Pyrokar_Patherion2_15_01"); //There was a black magician in the monastery. The magician Garan and I have unmasked him and rendered him harmless.
	AI_Output(hero, self, "Info_Mod_Pyrokar_Patherion2_15_02"); //After that we took care of the barrier, which now also no longer exists.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Patherion2_11_03"); //That is truly good news. Use these potions as a reward.

	CreateInvItems	(hero, ItPo_Health_03, 3);
	CreateInvItems	(hero, ItPo_Mana_03, 3);

	B_ShowGivenThings	("3 healing elixirs and 3 mana elixirs obtained");

	B_GivePlayerXP	(500);
};

INSTANCE Info_Mod_Pyrokar_AkilsHof (C_INFO)
{
	npc		= Mod_551_KDF_Pyrokar_NW;
	nr		= 1;
	condition	= Info_Mod_Pyrokar_AkilsHof_Condition;
	information	= Info_Mod_Pyrokar_AkilsHof_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dignitary Innos, I need your help.";
};

FUNC INT Info_Mod_Pyrokar_AkilsHof_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Pyrokar_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Telbor_Hi))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Telbor_AllDead))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Akil_Heilung))
	&& (Mod_AkilsHofAusgestorben == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Pyrokar_AkilsHof_Info()
{
	AI_Output(hero, self, "Info_Mod_Pyrokar_AkilsHof_15_00"); //Dignitary Innos, I need your help.
	AI_Output(self, hero, "Info_Mod_Pyrokar_AkilsHof_11_01"); //What is your concern?
	AI_Output(hero, self, "Info_Mod_Pyrokar_AkilsHof_15_02"); //Brothers went at each other as if possessed and almost killed themselves, while other people were seriously ill after unknowingly giving shelter to a servant of evil.
	AI_Output(self, hero, "Info_Mod_Pyrokar_AkilsHof_11_03"); //Evil servant of evil, you say?! That sounds like a kind of obsession that has been cast over these people.
	AI_Output(hero, self, "Info_Mod_Pyrokar_AkilsHof_15_04"); //Do you have a cure for that?
	AI_Output(self, hero, "Info_Mod_Pyrokar_AkilsHof_11_05"); //Of course, of course. There is nothing that can resist the omnipotence of our Lord Inno.
	AI_Output(hero, self, "Info_Mod_Pyrokar_AkilsHof_15_06"); //Well, I'm relieved....
	AI_Output(self, hero, "Info_Mod_Pyrokar_AkilsHof_11_07"); //For a small donation to the monastery I will provide you with potions, which should remedy this.
	AI_Output(hero, self, "Info_Mod_Pyrokar_AkilsHof_15_08"); //Donate?! How much?
	AI_Output(self, hero, "Info_Mod_Pyrokar_AkilsHof_11_09"); //How many people are affected by the disease?
	AI_Output(hero, self, "Info_Mod_Pyrokar_AkilsHof_15_10"); //Well, there should be three.
	AI_Output(self, hero, "Info_Mod_Pyrokar_AkilsHof_11_11"); //Then a modest donation of 600 gold coins will bring them relief.

	Info_ClearChoices	(Info_Mod_Pyrokar_AkilsHof);

	Info_AddChoice	(Info_Mod_Pyrokar_AkilsHof, "What?! 600 gold coins?!", Info_Mod_Pyrokar_AkilsHof_B);
	if (Npc_HasItems(hero, ItMi_Gold) >= 600)
	{
		Info_AddChoice	(Info_Mod_Pyrokar_AkilsHof, "All right, here's the gold.", Info_Mod_Pyrokar_AkilsHof_A);
	};
};

FUNC VOID Info_Mod_Pyrokar_AkilsHof_G()
{
	AI_Output(self, hero, "Info_Mod_Pyrokar_AkilsHof_G_11_00"); //May the blessing of our Lord accompany you.

	B_GiveInvItems	(self, hero, ItPo_HealBesessenheit, 3);
	
	Info_ClearChoices	(Info_Mod_Pyrokar_AkilsHof);

	B_GivePlayerXP	(100);

	B_LogEntry	(TOPIC_MOD_AKILSHOF, "I have the cure for the sick. Now I should hurry up to bring it to them.");
};

FUNC VOID Info_Mod_Pyrokar_AkilsHof_B()
{
	AI_Output(hero, self, "Info_Mod_Pyrokar_AkilsHof_B_15_00"); //What?! 600 gold coins?!
	AI_Output(self, hero, "Info_Mod_Pyrokar_AkilsHof_B_11_01"); //It is an appropriate donation that will help carry the blessing of our Lord Inno out into the world.
	
	Info_ClearChoices	(Info_Mod_Pyrokar_AkilsHof);

	Info_AddChoice	(Info_Mod_Pyrokar_AkilsHof, "But it's a matter of life and death (.... )", Info_Mod_Pyrokar_AkilsHof_D);
	if (Npc_HasItems(hero, ItMi_Gold) >= 600)
	{
		Info_AddChoice	(Info_Mod_Pyrokar_AkilsHof, "All right, here's the gold.", Info_Mod_Pyrokar_AkilsHof_A);
	};
};

FUNC VOID Info_Mod_Pyrokar_AkilsHof_A()
{
	AI_Output(hero, self, "Info_Mod_Pyrokar_AkilsHof_A_15_00"); //All right, here's the gold.

	B_GiveInvItems	(hero, self, ItMi_Gold, 600);

	Info_Mod_Pyrokar_AkilsHof_G();
};

FUNC VOID Info_Mod_Pyrokar_AkilsHof_D()
{
	AI_Output(hero, self, "Info_Mod_Pyrokar_AkilsHof_D_15_00"); //But it's about Le...
	AI_Output(self, hero, "Info_Mod_Pyrokar_AkilsHof_D_11_01"); //If your request is of such importance, you will undoubtedly be able to raise this small donation.
	
	Info_ClearChoices	(Info_Mod_Pyrokar_AkilsHof);

	Info_AddChoice	(Info_Mod_Pyrokar_AkilsHof, "But Akil is a faithful and righteous man.", Info_Mod_Pyrokar_AkilsHof_F);
	if (Npc_HasItems(hero, ItMi_Gold) >= 600)
	{
		Info_AddChoice	(Info_Mod_Pyrokar_AkilsHof, "All right, I'll pay.", Info_Mod_Pyrokar_AkilsHof_E);
	};
};

FUNC VOID Info_Mod_Pyrokar_AkilsHof_F()
{
	AI_Output(hero, self, "Info_Mod_Pyrokar_AkilsHof_F_15_00"); //But Akil...
	AI_Output(self, hero, "Info_Mod_Pyrokar_AkilsHof_F_11_01"); //I said (stops suddenly)? (to himself)? what, Akil? Hmm, a man of faith, donates every month to the...
	AI_Output(self, hero, "Info_Mod_Pyrokar_AkilsHof_F_11_02"); //(again to the hero) ah, the immeasurable kindness of our Lord Innos motivates me to give you the potions as a gift without any payment.

	AI_TurnAway	(hero, self);

	AI_Output(hero, self, "Info_Mod_Pyrokar_AkilsHof_F_15_03"); //There you go, there you go.

	Info_Mod_Pyrokar_AkilsHof_G();
};

FUNC VOID Info_Mod_Pyrokar_AkilsHof_E()
{
	AI_Output(hero, self, "Info_Mod_Pyrokar_AkilsHof_E_15_00"); //All right, I'll pay.

	B_GiveInvItems	(hero, self, ItMi_Gold, 600);

	AI_TurnAway	(hero, self);

	AI_Output(hero, self, "Info_Mod_Pyrokar_AkilsHof_E_15_01"); //(to himself) Cutthroat.

	AI_TurnToNpc	(hero, self);

	Info_Mod_Pyrokar_AkilsHof_G();
};

INSTANCE Info_Mod_Pyrokar_Hexenfluch (C_INFO)
{
	npc		= Mod_551_KDF_Pyrokar_NW;
	nr		= 1;
	condition	= Info_Mod_Pyrokar_Hexenfluch_Condition;
	information	= Info_Mod_Pyrokar_Hexenfluch_Info;
	permanent	= 1;
	important	= 0;
	description	= "High magician of the fire, I carry such an oppressive feeling in me.";
};

FUNC INT Info_Mod_Pyrokar_Hexenfluch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Pyrokar_Hi))
	&& (Mod_WM_Verflucht == 1)
	&& (Npc_HasItems(hero, ItPo_HealBesessenheit) == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Pyrokar_Hexenfluch_Info()
{
	AI_Output(hero, self, "Info_Mod_Pyrokar_Hexenfluch_15_00"); //High magician of the fire, I carry such an oppressive feeling in me.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Hexenfluch_11_01"); //Yes, I also sense that black magic has been cast on you. What has happened?
	AI_Output(hero, self, "Info_Mod_Pyrokar_Hexenfluch_15_02"); //A woman has cast this curse on me.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Hexenfluch_11_03"); //A woman?! That sounds like it.... after witchcraft. I will give this a lot of thought.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Hexenfluch_11_04"); //Anyway, for a modest donation of 300 coins of gold, I will provide you with a cure.

	Info_ClearChoices	(Info_Mod_Pyrokar_Hexenfluch);

	Info_AddChoice	(Info_Mod_Pyrokar_Hexenfluch, DIALOG_BACK, Info_Mod_Pyrokar_Hexenfluch_B);
	if (Npc_HasItems(hero, ItMi_Gold) >= 300)
	{
		Info_AddChoice	(Info_Mod_Pyrokar_Hexenfluch, "Here's the gold.", Info_Mod_Pyrokar_Hexenfluch_A);
	};
};

FUNC VOID Info_Mod_Pyrokar_Hexenfluch_B()
{
	Info_ClearChoices	(Info_Mod_Pyrokar_Hexenfluch);
};

FUNC VOID Info_Mod_Pyrokar_Hexenfluch_A()
{
	AI_Output(hero, self, "Info_Mod_Pyrokar_Hexenfluch_A_15_00"); //Here's the gold.

	B_GiveInvItems	(hero, self, ItMi_Gold, 300);

	B_GiveInvItems	(self, hero, ItPo_HealBesessenheit, 2);

	if (Mod_WM_Hexeninfos == 0)
	{
		Mod_WM_Hexeninfos = 1;
	};
	
	Info_ClearChoices	(Info_Mod_Pyrokar_Hexenfluch);
};

INSTANCE Info_Mod_Pyrokar_Kimon (C_INFO)
{
	npc		= Mod_551_KDF_Pyrokar_NW;
	nr		= 1;
	condition	= Info_Mod_Pyrokar_Kimon_Condition;
	information	= Info_Mod_Pyrokar_Kimon_Info;
	permanent	= 0;
	important	= 0;
	description	= "Serpentes refuses to pay the gold for the grapes of the merchant Kimon.";
};

FUNC INT Info_Mod_Pyrokar_Kimon_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Serpentes_Kimon))
	&& (Mod_Kimons_Traubenquest == TRUE)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Kimon_HierIstDeinGold))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Pyrokar_Kimon_Info()
{
	AI_Output(hero, self, "Info_Mod_Pyrokar_Kimon_15_00"); //Serpentes refuses to pay the gold for the grapes of the merchant Kimon. He paid 1,000 gold too little.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Kimon_11_01"); //Can you prove that?
	AI_Output(hero, self, "Info_Mod_Pyrokar_Kimon_15_02"); //No...
	AI_Output(self, hero, "Info_Mod_Pyrokar_Kimon_11_03"); //Then come back when you can!

	B_LogEntry	(TOPIC_MOD_KIMONSTRAUBEN, "Pyrokar wants me to prove him wrong. I should talk to Kimon.");
};

INSTANCE Info_Mod_Pyrokar_KimonGeld (C_INFO)
{
	npc		= Mod_551_KDF_Pyrokar_NW;
	nr		= 1;
	condition	= Info_Mod_Pyrokar_KimonGeld_Condition;
	information	= Info_Mod_Pyrokar_KimonGeld_Info;
	permanent	= 0;
	important	= 0;
	description	= "Here's the receipt.";
};

FUNC INT Info_Mod_Pyrokar_KimonGeld_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Kimon_Beleg))
	&& (Npc_HasItems(hero, ItWr_KimonsBeleg) == 1)
	&& (Mod_Kimons_Traubenquest == TRUE)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Kimon_HierIstDeinGold))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Pyrokar_KimonGeld_Info()
{
	AI_Output(hero, self, "Info_Mod_Pyrokar_KimonGeld_15_00"); //Here's the receipt.

	B_GiveInvItems	(hero, self, ItWr_KimonsBeleg, 1);

	B_UseFakeScroll	();

	AI_Output(hero, self, "Info_Mod_Pyrokar_KimonGeld_15_01"); //Under the myrthanic regulation, goods must be sold for twice their value.
	AI_Output(self, hero, "Info_Mod_Pyrokar_KimonGeld_11_02"); //Well, take the gold and go.

	B_GiveInvItems	(self, hero, ItMi_Gold, 1000);

	B_GivePlayerXP	(50);

	B_LogEntry	(TOPIC_MOD_KIMONSTRAUBEN, "Pyrokar gave me the gold for Kimon. I should take it to him now.");
};

INSTANCE Info_Mod_Pyrokar_Kristall (C_INFO)
{
	npc		= Mod_551_KDF_Pyrokar_NW;
	nr		= 1;
	condition	= Info_Mod_Pyrokar_Kristall_Condition;
	information	= Info_Mod_Pyrokar_Kristall_Info;
	permanent	= 0;
	important	= 0;
	description	= "I have a precious crystal here.";
};

FUNC INT Info_Mod_Pyrokar_Kristall_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lothar_Bier))
	&& (Npc_KnowsInfo(hero, Info_Mod_Lothar_Kristall))
	&& (Npc_HasItems(hero, Mod_PaladinKristall) >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Pyrokar_Kristall_Info()
{
	AI_Output(hero, self, "Info_Mod_Pyrokar_Kristall_15_00"); //I have a precious crystal here.
	
	B_GiveInvItems	(hero, self, Mod_PaladinKristall, 1);

	AI_Output(self, hero, "Info_Mod_Pyrokar_Kristall_11_01"); //The crystal of the Paladins? How did you get it?
	AI_Output(hero, self, "Info_Mod_Pyrokar_Kristall_15_02"); //I captured him from the thieves in the sewer.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Kristall_11_03"); //Your bringing him to me shows me your trust in our community.

	if (Mod_Gilde == 0)
	{
		AI_Output(self, hero, "Info_Mod_Pyrokar_Kristall_11_04"); //If you wish, you can now join the novices.
	};

	B_GivePlayerXP	(200);

	B_LogEntry_More	(TOPIC_MOD_FEUERMAGIER, TOPIC_MOD_SÖLDNER, "Pyrokar is ready to accept me into the fire novices.", "I gave the crystal to Pyrokar. Torlof won't like that very much.");

	B_SetTopicStatus	(TOPIC_MOD_TORLOFSPIONAGE, LOG_FAILED);

	B_Göttergefallen(1, 3);
};

INSTANCE Info_Mod_Pyrokar_Comeback (C_INFO)
{
	npc		= Mod_551_KDF_Pyrokar_NW;
	nr		= 1;
	condition	= Info_Mod_Pyrokar_Comeback_Condition;
	information	= Info_Mod_Pyrokar_Comeback_Info;
	permanent	= 0;
	important	= 0;
	description	= "Innos, my respectful friend.";
};

FUNC INT Info_Mod_Pyrokar_Comeback_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Norek_Assassinengold2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Pyrokar_Comeback_Info()
{
	AI_Output(hero, self, "Info_Mod_Pyrokar_Comeback_15_00"); //Innos, my respectful friend.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Comeback_11_01"); //What's with the cuddling? Sure you want something.
	AI_Output(hero, self, "Info_Mod_Pyrokar_Comeback_15_02"); //Well, I could use one of those old sacrificial bowls.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Comeback_11_03"); //At Innos! You want to clear out the monastery cellar. Very well. But what do you need the bowl for?
	AI_Output(hero, self, "Info_Mod_Pyrokar_Comeback_15_04"); //A group of people wants to organize a fundraiser. For the disabled and the poor...
	AI_Output(hero, self, "Info_Mod_Pyrokar_Comeback_15_05"); //It is believed that with such a sacred vessel more gold comes from the bags of men.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Comeback_11_06"); //That is wisely thought and laudable. But the monastery doesn't exactly swim in gold either....
	AI_Output(hero, self, "Info_Mod_Pyrokar_Comeback_15_07"); //It is intended to donate a quarter of the collected gold to the monastery.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Comeback_11_08"); //Good, good, good. In the spirit of Inno. He will give his blessing. You'll get your bowl. Talk to Gorax.
	AI_Output(hero, self, "Info_Mod_Pyrokar_Comeback_15_09"); //Thank you very much, Venerable.

	B_LogEntry	(TOPIC_MOD_ASS_COMEBACK, "With a little persuasive power I was able to talk Pyrokar off one of the sacrificial bowls. I'm supposed to go to Gorax's now.");
};

INSTANCE Info_Mod_Pyrokar_HyglasBack (C_INFO)
{
	npc		= Mod_551_KDF_Pyrokar_NW;
	nr		= 1;
	condition	= Info_Mod_Pyrokar_HyglasBack_Condition;
	information	= Info_Mod_Pyrokar_HyglasBack_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Pyrokar_HyglasBack_Condition()
{
	if (Mod_FM_Hyglas_Eisgebiet == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Pyrokar_HyglasBack_Info()
{
	AI_Output(self, hero, "Info_Mod_Pyrokar_HyglasBack_11_00"); //Ahh, there you are. You actually brought our brother Hyglas back to us alive.
	AI_Output(self, hero, "Info_Mod_Pyrokar_HyglasBack_11_01"); //It's almost a miracle... at least that's how many people in Khorinis see it.
	AI_Output(hero, self, "Info_Mod_Pyrokar_HyglasBack_15_02"); //Will he now serve the monastery again?
	AI_Output(self, hero, "Info_Mod_Pyrokar_HyglasBack_11_03"); //No... not directly. He has chosen a different path and from now on he wants to preach and help the less privileged of the island.
	AI_Output(self, hero, "Info_Mod_Pyrokar_HyglasBack_11_04"); //Personally, it would have been preferable for him to turn to the people of all social classes in equal measure... but it's his decision.
	AI_Output(self, hero, "Info_Mod_Pyrokar_HyglasBack_11_05"); //In any case, you have done a great service for Inno's righteous cause and should receive a part of our monastery treasure as a reward.
	AI_Output(self, hero, "Info_Mod_Pyrokar_HyglasBack_11_06"); //Use this gold in the spirit of Inno.

	B_GiveInvItems	(self, hero, ItMi_Gold, 1000);

	B_GivePlayerXP	(300);
};

var int Pyrokar_LastPetzCounter;
var int Pyrokar_LastPetzCrime;

INSTANCE Info_Mod_Pyrokar_PMSchulden (C_INFO)
{
	npc         	= Mod_551_KDF_Pyrokar_NW;
	nr          	= 1;
	condition   	= Info_Mod_Pyrokar_PMSchulden_Condition;
	information 	= Info_Mod_Pyrokar_PMSchulden_Info;
	permanent   	= 1;
	important 	= 1; 
};

FUNC INT Info_Mod_Pyrokar_PMSchulden_Condition()
{
	if (Npc_IsInState(self, ZS_Talk))
	&& (Pyrokar_Schulden > 0)
	&& (B_GetGreatestPetzCrime(self) <= Pyrokar_LastPetzCrime)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Pyrokar_PMSchulden_Info()
{
	AI_Output (self, hero, "Info_Mod_Pyrokar_PMSchulden_11_00"); //Did you come to pay your fine?

	if (B_GetTotalPetzCounter(self) > Pyrokar_LastPetzCounter)
	{
		AI_Output (self, hero, "Info_Mod_Pyrokar_PMSchulden_11_01"); //I was wondering if you'd even dare come here!
		AI_Output (self, hero, "Info_Mod_Pyrokar_PMSchulden_11_02"); //Apparently, it's not the latest accusations!

		if (Pyrokar_Schulden < 1000)
		{
			AI_Output (self, hero, "Info_Mod_Pyrokar_PMSchulden_11_03"); //I warned you! The fine you have to pay now is higher!
			AI_Output (hero, self, "Info_Mod_Pyrokar_PMAdd_15_00"); //How much?
			
			var int diff; diff = (B_GetTotalPetzCounter(self) - Pyrokar_LastPetzCounter);
		
			if (diff > 0)
			{
				Pyrokar_Schulden = Pyrokar_Schulden + (diff * 50);
			};
		
			if (Pyrokar_Schulden > 1000)	{	Pyrokar_Schulden = 1000;	};
		
			B_Say_Gold (self, hero, Pyrokar_Schulden);
		}
		else
		{
			AI_Output (self, hero, "Info_Mod_Pyrokar_PMSchulden_11_04"); //You let me down so badly!
		};
	}
	else if (B_GetGreatestPetzCrime(self) < Pyrokar_LastPetzCrime)
	{
		AI_Output (self, hero, "Info_Mod_Pyrokar_PMSchulden_11_05"); //Some new things have come up.
		
		if (Pyrokar_LastPetzCrime == CRIME_MURDER)
		{
			AI_Output (self, hero, "Info_Mod_Pyrokar_PMSchulden_11_06"); //Suddenly, there's no one left to accuse you of murder.
		};
		
		if (Pyrokar_LastPetzCrime == CRIME_THEFT)
		|| ( (Pyrokar_LastPetzCrime > CRIME_THEFT) && (B_GetGreatestPetzCrime(self) < CRIME_THEFT) )
		{
			AI_Output (self, hero, "Info_Mod_Pyrokar_PMSchulden_11_07"); //No one remembers seeing you at a theft.
		};
		
		if (Pyrokar_LastPetzCrime == CRIME_ATTACK)
		|| ( (Pyrokar_LastPetzCrime > CRIME_ATTACK) && (B_GetGreatestPetzCrime(self) < CRIME_ATTACK) )
		{
			AI_Output (self, hero, "Info_Mod_Pyrokar_PMSchulden_11_08"); //There's no more witnesses to the fact that you've ever been in a fight.
		};
		
		if (B_GetGreatestPetzCrime(self) == CRIME_NONE)
		{
			AI_Output (self, hero, "Info_Mod_Pyrokar_PMSchulden_11_09"); //Apparently all the charges against you have vanished.
		};
		
		AI_Output (self, hero, "Info_Mod_Pyrokar_PMSchulden_11_10"); //I don't know what happened, but I warn you: don't play games with me.
				
		// ------- Schulden erlassen oder trotzdem zahlen ------
		if (B_GetGreatestPetzCrime(self) == CRIME_NONE)
		{
			AI_Output (self, hero, "Info_Mod_Pyrokar_PMSchulden_11_11"); //Anyway, I've decided to waive your debt.
			AI_Output (self, hero, "Info_Mod_Pyrokar_PMSchulden_11_12"); //Make sure you don't get in trouble again.
	
			Pyrokar_Schulden			= 0;
			Pyrokar_LastPetzCounter 	= 0;
			Pyrokar_LastPetzCrime		= CRIME_NONE;
		}
		else
		{
			AI_Output (self, hero, "Info_Mod_Pyrokar_PMSchulden_11_13"); //One thing is clear: you still have to pay your penalty in full.
			B_Say_Gold (self, hero, Pyrokar_Schulden);
			AI_Output (self, hero, "Info_Mod_Pyrokar_PMSchulden_11_14"); //So, what is it?
		};
	};
	
	// ------ Choices NUR, wenn noch Crime vorliegt ------
	if (B_GetGreatestPetzCrime(self) != CRIME_NONE)
	{
		Info_ClearChoices  	(Info_Mod_Pyrokar_PMSchulden);
		Info_ClearChoices  	(Info_Mod_Pyrokar_PETZMASTER);
		Info_AddChoice		(Info_Mod_Pyrokar_PMSchulden,"I don't have enough gold!",Info_Mod_Pyrokar_PETZMASTER_PayLater);
		Info_AddChoice		(Info_Mod_Pyrokar_PMSchulden,"How much was it again?",Info_Mod_Pyrokar_PMSchulden_HowMuchAgain);
		if (Npc_HasItems(hero, itmi_gold) >= Pyrokar_Schulden)
		{
			Info_AddChoice 	(Info_Mod_Pyrokar_PMSchulden,"I want to pay the fine.",Info_Mod_Pyrokar_PETZMASTER_PayNow);
		};
	};
};

func void Info_Mod_Pyrokar_PMSchulden_HowMuchAgain()
{
	AI_Output (hero, self, "Info_Mod_Pyrokar_PMSchulden_HowMuchAgain_15_00"); //How much was it again?
	B_Say_Gold (self, hero, Pyrokar_Schulden);

	Info_ClearChoices  	(Info_Mod_Pyrokar_PMSchulden);
	Info_ClearChoices  	(Info_Mod_Pyrokar_PETZMASTER);
	Info_AddChoice		(Info_Mod_Pyrokar_PMSchulden,"I don't have enough gold!",Info_Mod_Pyrokar_PETZMASTER_PayLater);
	Info_AddChoice		(Info_Mod_Pyrokar_PMSchulden,"How much was it again?",Info_Mod_Pyrokar_PMSchulden_HowMuchAgain);
	if (Npc_HasItems(hero, itmi_gold) >= Pyrokar_Schulden)
	{
		Info_AddChoice 	(Info_Mod_Pyrokar_PMSchulden,"I want to pay the fine.",Info_Mod_Pyrokar_PETZMASTER_PayNow);
	};
};

INSTANCE Info_Mod_Pyrokar_PETZMASTER   (C_INFO)
{
	npc         	= Mod_551_KDF_Pyrokar_NW;
	nr          	= 1;
	condition   	= Info_Mod_Pyrokar_PETZMASTER_Condition;
	information 	= Info_Mod_Pyrokar_PETZMASTER_Info;
	permanent   	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Pyrokar_PETZMASTER_Condition()
{
	if (B_GetGreatestPetzCrime(self) > Pyrokar_LastPetzCrime)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Pyrokar_PETZMASTER_Info()
{
	Pyrokar_Schulden = 0; //weil Funktion nochmal durchlaufen wird, wenn Crime höher ist...
	
	// ------ SC hat mit Pyrokar noch nicht gesprochen ------
	if (B_GetAivar(self, AIV_TalkedToPlayer) == FALSE)
	{
		AI_Output (self, hero, "Info_Mod_Pyrokar_PETZMASTER_11_00"); //You must be the new guy who caused trouble here at the monastery.
	};	
	
	if (B_GetGreatestPetzCrime(self) == CRIME_MURDER) 
	{
		AI_Output (self, hero, "Info_Mod_Pyrokar_PETZMASTER_11_01"); //I'm glad you came to me before things got worse for you.
		AI_Output (self, hero, "Info_Mod_Pyrokar_PETZMASTER_11_02"); //Murder is a grave offence!

		Pyrokar_Schulden = (B_GetTotalPetzCounter(self) * 50); 		//Anzahl der Zeugen * 50

		Pyrokar_Schulden = Pyrokar_Schulden + 500;						//PLUS Mörder-Malus

		if ((PETZCOUNTER_City_Theft + PETZCOUNTER_City_Attack + PETZCOUNTER_City_Sheepkiller) > 0)
		{
			AI_Output (self, hero, "Info_Mod_Pyrokar_PETZMASTER_11_03"); //Not to mention the other things you've done.
		};

		AI_Output (self, hero, "Info_Mod_Pyrokar_PETZMASTER_11_04"); //Most magicians will not tolerate a murderer in the monastery!
		AI_Output (self, hero, "Info_Mod_Pyrokar_PETZMASTER_11_06"); //I have no interest in putting you on the gallows.
		AI_Output (self, hero, "Info_Mod_Pyrokar_PETZMASTER_11_07"); //But it won't be easy to make people gracious again.
		AI_Output (self, hero, "Info_Mod_Pyrokar_PETZMASTER_11_08"); //You could show your repentance by paying a fine - of course the penalty must be appropriate.
	};
		
	if (B_GetGreatestPetzCrime(self) == CRIME_THEFT) 
	{
		AI_Output (self, hero, "Info_Mod_Pyrokar_PETZMASTER_11_09"); //Good of you to come! You're accused of stealing! There are witnesses!

		if ((PETZCOUNTER_City_Attack + PETZCOUNTER_City_Sheepkiller) > 0)
		{
			AI_Output (self, hero, "Info_Mod_Pyrokar_PETZMASTER_11_10"); //I don't even want to talk about the other things I've heard.
		};

		AI_Output (self, hero, "Info_Mod_Pyrokar_PETZMASTER_11_11"); //I will not tolerate such behaviour in the monastery!
		AI_Output (self, hero, "Info_Mod_Pyrokar_PETZMASTER_11_12"); //You'll have to pay a fine to make up for your crime!
		
		Pyrokar_Schulden = (B_GetTotalPetzCounter(self) * 50); //Anzahl der Zeugen * 50
	};
	
	if (B_GetGreatestPetzCrime(self) == CRIME_ATTACK)
	{
		AI_Output (self, hero, "Info_Mod_Pyrokar_PETZMASTER_11_13"); //If you mess with people and the city or the yards, it's none of our business.
		AI_Output (self, hero, "Info_Mod_Pyrokar_PETZMASTER_11_14"); //But if you attack novices or magicians, I will have to hold you accountable.

		if (PETZCOUNTER_City_Sheepkiller > 0)
		{
			AI_Output (self, hero, "Info_Mod_Pyrokar_PETZMASTER_11_15"); //And I don't think it had to be the case with the sheep.
		};

		AI_Output (self, hero, "Info_Mod_Pyrokar_PETZMASTER_11_16"); //If I let you get away with this, everybody's gonna do what they want.
		AI_Output (self, hero, "Info_Mod_Pyrokar_PETZMASTER_11_17"); //So you'll pay an appropriate fine - and the whole thing will be forgotten.
		
		Pyrokar_Schulden = (B_GetTotalPetzCounter(self) * 50); //Anzahl der Zeugen * 50
	};
	
	// ------ Schaf getötet (nahezu uninteressant - in der City gibt es keine Schafe) ------
	if (B_GetGreatestPetzCrime(self) == CRIME_SHEEPKILLER) 
	{
		AI_Output (self, hero, "Info_Mod_Pyrokar_PETZMASTER_11_18"); //I've heard that you've been messing with our sheep.
		AI_Output (self, hero, "Info_Mod_Pyrokar_PETZMASTER_11_19"); //You do realize I can't let this go through.
		AI_Output (self, hero, "Info_Mod_Pyrokar_PETZMASTER_11_20"); //You'll have to pay compensation!
		
		Pyrokar_Schulden = 100;
	};
	
	AI_Output (hero, self, "Info_Mod_Pyrokar_PETZMASTER_15_21"); //How much?
	
	if (Pyrokar_Schulden > 1000)	{	Pyrokar_Schulden = 1000;	};
		
	B_Say_Gold (self, hero, Pyrokar_Schulden);
	
	Info_ClearChoices  	(Info_Mod_Pyrokar_PMSchulden);
	Info_ClearChoices  	(Info_Mod_Pyrokar_PETZMASTER);
	Info_AddChoice		(Info_Mod_Pyrokar_PETZMASTER,"I don't have enough gold!",Info_Mod_Pyrokar_PETZMASTER_PayLater);
	if (Npc_HasItems(hero, itmi_gold) >= Pyrokar_Schulden)
	{
		Info_AddChoice 	(Info_Mod_Pyrokar_PETZMASTER,"I want to pay the fine.",Info_Mod_Pyrokar_PETZMASTER_PayNow);
	};
};

func void Info_Mod_Pyrokar_PETZMASTER_PayNow()
{
	AI_Output (hero, self, "Info_Mod_Pyrokar_PETZMASTER_PayNow_15_00"); //I want to pay the fine!
	B_GiveInvItems (hero, self, itmi_gold, Pyrokar_Schulden);
	AI_Output (self, hero, "Info_Mod_Pyrokar_PETZMASTER_PayNow_11_01"); //Good! I will make sure that everyone in the monastery learns about it - this will restore your reputation to a certain extent.

	B_GrantAbsolution (LOC_MONASTERY);
	
	Pyrokar_Schulden			= 0;
	Pyrokar_LastPetzCounter 	= 0;
	Pyrokar_LastPetzCrime		= CRIME_NONE;
	
	Info_ClearChoices  	(Info_Mod_Pyrokar_PETZMASTER);
	Info_ClearChoices  	(Info_Mod_Pyrokar_PMSchulden);	//!!! Info-Choice wird noch von anderem Dialog angesteuert!
};

func void Info_Mod_Pyrokar_PETZMASTER_PayLater()
{
	AI_Output (hero, self, "Info_Mod_Pyrokar_PETZMASTER_PayLater_15_00"); //I don't have enough gold!
	AI_Output (self, hero, "Info_Mod_Pyrokar_PETZMASTER_PayLater_11_01"); //Then see that you get the gold as soon as possible.
	AI_Output (self, hero, "Info_Mod_Pyrokar_PETZMASTER_PayLater_11_02"); //And I'm warning you, if you owe yourself anything, it's going to get worse for you.
	
	Pyrokar_LastPetzCounter 	= B_GetTotalPetzCounter(self);
	Pyrokar_LastPetzCrime		= B_GetGreatestPetzCrime(self);
	
	AI_StopProcessInfos (self);
};

INSTANCE Info_Mod_Pyrokar_Lehrer (C_INFO)
{
	npc		= Mod_551_KDF_Pyrokar_NW;
	nr		= 1;
	condition	= Info_Mod_Pyrokar_Lehrer_Condition;
	information	= Info_Mod_Pyrokar_Lehrer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Who can teach me how to increase my magical power?";
};

FUNC INT Info_Mod_Pyrokar_Lehrer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Pyrokar_Hi))
	&& (Mod_Gilde == 8)
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Pyrokar_Lehrer_Info()
{
	AI_Output(hero, self, "Info_Mod_Pyrokar_Lehrer_15_00"); //Who can teach me how to increase my magical power?
	AI_Output(self, hero, "Info_Mod_Pyrokar_Lehrer_11_01"); //I can teach you to increase your magic power.

	Log_CreateTopic	(TOPIC_MOD_LEHRER_KLOSTER, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_LEHRER_KLOSTER, "Pyrokar can teach me how to boost my MANA.");
};

INSTANCE Info_Mod_Pyrokar_Lernen (C_INFO)
{
	npc		= Mod_551_KDF_Pyrokar_NW;
	nr		= 1;
	condition	= Info_Mod_Pyrokar_Lernen_Condition;
	information	= Info_Mod_Pyrokar_Lernen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Teach me something.";
};

FUNC INT Info_Mod_Pyrokar_Lernen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Pyrokar_Lehrer))
	&& (hero.attribute[ATR_MANA_MAX] < 300)
	&& (Mod_Gilde == 8)
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Pyrokar_Lernen_Info()
{
	AI_Output(hero, self, "Info_Mod_Pyrokar_Lernen_15_00"); //Teach me something.

	Info_ClearChoices	(Info_Mod_Pyrokar_Lernen);

	Info_AddChoice		(Info_Mod_Pyrokar_Lernen, DIALOG_BACK, INFO_MOD_Pyrokar_Lernen_BACK);
	Info_AddChoice		(Info_Mod_Pyrokar_Lernen, B_BuildLearnString_New(PRINT_LearnMANA5	, B_GetLearnCostAttribute_New(hero, ATR_MANA_MAX), ATR_MANA_MAX)	,Info_Mod_Pyrokar_Lernen_5);
	Info_AddChoice		(Info_Mod_Pyrokar_Lernen, B_BuildLearnString_New(PRINT_LearnMANA1	, B_GetLearnCostAttribute(hero, ATR_MANA_MAX), ATR_MANA_MAX)		,Info_Mod_Pyrokar_Lernen_1);
};

FUNC VOID Info_Mod_Pyrokar_Lernen_BACK()
{
	if (hero.attribute[ATR_MANA_MAX]	>=	300)
	{
		AI_Output(self, hero, "Info_Mod_Pyrokar_Lernen_BACK_05_01"); //Your magic skills are so good now, I can't teach you anything.
	};
	Info_ClearChoices	(Info_Mod_Pyrokar_Lernen);
};

FUNC VOID Info_Mod_Pyrokar_Lernen_5()
{
	B_TeachAttributePoints_New (self, hero, ATR_MANA_MAX, 5, 300);

	Info_ClearChoices	(Info_Mod_Pyrokar_Lernen);

	Info_AddChoice		(Info_Mod_Pyrokar_Lernen, DIALOG_BACK, INFO_MOD_Pyrokar_Lernen_BACK);
	Info_AddChoice		(Info_Mod_Pyrokar_Lernen, B_BuildLearnString_New(PRINT_LearnMANA5	, B_GetLearnCostAttribute_New(hero, ATR_MANA_MAX), ATR_MANA_MAX)	,Info_Mod_Pyrokar_Lernen_5);
	Info_AddChoice		(Info_Mod_Pyrokar_Lernen, B_BuildLearnString_New(PRINT_LearnMANA1	, B_GetLearnCostAttribute(hero, ATR_MANA_MAX), ATR_MANA_MAX)		,Info_Mod_Pyrokar_Lernen_1);
};

FUNC VOID Info_Mod_Pyrokar_Lernen_1()
{
	B_TeachAttributePoints (self, hero, ATR_MANA_MAX, 1, 300);

	Info_ClearChoices	(Info_Mod_Pyrokar_Lernen);

	Info_AddChoice		(Info_Mod_Pyrokar_Lernen, DIALOG_BACK, INFO_MOD_Pyrokar_Lernen_BACK);
	Info_AddChoice		(Info_Mod_Pyrokar_Lernen, B_BuildLearnString_New(PRINT_LearnMANA5	, B_GetLearnCostAttribute_New(hero, ATR_MANA_MAX), ATR_MANA_MAX)	,Info_Mod_Pyrokar_Lernen_5);
	Info_AddChoice		(Info_Mod_Pyrokar_Lernen, B_BuildLearnString_New(PRINT_LearnMANA1	, B_GetLearnCostAttribute(hero, ATR_MANA_MAX), ATR_MANA_MAX)		,Info_Mod_Pyrokar_Lernen_1);
};

INSTANCE Info_Mod_Pyrokar_Pickpocket (C_INFO)
{
	npc		= Mod_551_KDF_Pyrokar_NW;
	nr		= 1;
	condition	= Info_Mod_Pyrokar_Pickpocket_Condition;
	information	= Info_Mod_Pyrokar_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_180;
};

FUNC INT Info_Mod_Pyrokar_Pickpocket_Condition()
{
	C_Beklauen	(180, ItMi_Gold, 91);
};

FUNC VOID Info_Mod_Pyrokar_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Pyrokar_Pickpocket);

	Info_AddChoice	(Info_Mod_Pyrokar_Pickpocket, DIALOG_BACK, Info_Mod_Pyrokar_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Pyrokar_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Pyrokar_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Pyrokar_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Pyrokar_Pickpocket);
};

FUNC VOID Info_Mod_Pyrokar_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Pyrokar_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Pyrokar_Pickpocket);

		Info_AddChoice	(Info_Mod_Pyrokar_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Pyrokar_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Pyrokar_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Pyrokar_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Pyrokar_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Pyrokar_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Pyrokar_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Pyrokar_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Pyrokar_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Pyrokar_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Pyrokar_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Pyrokar_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Pyrokar_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Pyrokar_EXIT (C_INFO)
{
	npc		= Mod_551_KDF_Pyrokar_NW;
	nr		= 1;
	condition	= Info_Mod_Pyrokar_EXIT_Condition;
	information	= Info_Mod_Pyrokar_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Pyrokar_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Pyrokar_EXIT_Info()
{
	AI_Output(self, hero, "Info_Mod_Pyrokar_EXIT_11_00"); //May Innos enlighten your path!

	AI_StopProcessInfos	(self);
};
