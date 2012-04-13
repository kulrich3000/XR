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
	AI_Output(self, hero, "Info_Mod_Pyrokar_Hi_11_00"); //Willkommen in unserem Kloster. Was k�nnen wir f�r dich tun?
};

INSTANCE Info_Mod_Pyrokar_Hammer (C_INFO)
{
	npc		= Mod_551_KDF_Pyrokar_NW;
	nr		= 1;
	condition	= Info_Mod_Pyrokar_Hammer_Condition;
	information	= Info_Mod_Pyrokar_Hammer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ich brauche den Heiligen Hammer.";
};

FUNC INT Info_Mod_Pyrokar_Hammer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Pyrokar_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_UrizielKaputt))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Andokai_Hammer))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_G�tterschwerter))
	&& (Npc_HasItems(hero, Holy_Hammer_MIS) == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Pyrokar_Hammer_Info()
{
	AI_Output(hero, self, "Info_Mod_Pyrokar_Hammer_15_00"); //Ich brauche den Heiligen Hammer.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Hammer_11_01"); //Geh zu Garwig und sage ihm, dass ich dich schicke. Er wird dir gestatten den Hammer an dich zu nehmen.

	B_LogEntry	(TOPIC_MOD_URIZIEL, "Pyrokar hat mir erlaubt den heiligen Hammer zu holen. Ich soll Garwig vorher Bescheid sagen.");
};

INSTANCE Info_Mod_Pyrokar_G�tter (C_INFO)
{
	npc		= Mod_551_KDF_Pyrokar_NW;
	nr		= 1;
	condition	= Info_Mod_Pyrokar_G�tter_Condition;
	information	= Info_Mod_Pyrokar_G�tter_Info;
	permanent	= 0;
	important	= 0;
	description	= "Was wei�t du �ber die Machttr�ger?";
};

FUNC INT Info_Mod_Pyrokar_G�tter_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Pyrokar_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_Trimedron))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Pyrokar_G�tter_Info()
{
	AI_Output(hero, self, "Info_Mod_Pyrokar_G�tter_15_00"); //Was wei�t du �ber die Machttr�ger?
	AI_Output(self, hero, "Info_Mod_Pyrokar_G�tter_11_01"); //Es gibt drei davon und wie die G�tterwaffen befindet sich einer in jedem Gebiet. Desweiteren kann jeder von ihnen nur durch eine der G�tterwaffen get�tet werden.
	AI_Output(self, hero, "Info_Mod_Pyrokar_G�tter_11_02"); //Doch du solltest dich in acht nehmen, sie sind sehr m�chtig.

	B_LogEntry	(TOPIC_MOD_URIZIEL, "Auch die Machttr�ger halten sich in unterschiedlichen Gebieten auf. Au�erdem ist jeder von ihnen nur durch eine der G�tterwaffen zu t�ten.");
};

INSTANCE Info_Mod_Pyrokar_Machttr�ger (C_INFO)
{
	npc		= Mod_551_KDF_Pyrokar_NW;
	nr		= 1;
	condition	= Info_Mod_Pyrokar_Machttr�ger_Condition;
	information	= Info_Mod_Pyrokar_Machttr�ger_Info;
	permanent	= 0;
	important	= 0;
	description	= "Was f�r Wesen sind die Machttr�ger?";
};

FUNC INT Info_Mod_Pyrokar_Machttr�ger_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Pyrokar_G�tter))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Pyrokar_Machttr�ger_Info()
{
	AI_Output(hero, self, "Info_Mod_Pyrokar_Machttr�ger_15_00"); //Was f�r Wesen sind die Machttr�ger?
	AI_Output(self, hero, "Info_Mod_Pyrokar_Machttr�ger_11_01"); //Das wissen wir nicht, doch wie bereits erw�hnt sind sie sehr m�chtig. Du wirst es selbst herausfinden m�ssen.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Machttr�ger_11_02"); //Doch wir haben etwas �ber die Aufenthaltsorte herausgefunden. Und wir glauben zu wissen wer der Machttr�ger im Minental ist.
	AI_Output(hero, self, "Info_Mod_Pyrokar_Machttr�ger_15_03"); //Was wei�t du?
	AI_Output(self, hero, "Info_Mod_Pyrokar_Machttr�ger_11_04"); //Gut, ich werde dir erz�hlen, was wir herausgefunden haben.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Machttr�ger_11_05"); //Der Machttr�ger im Minental ist vermutlich ein Schattenlord Namens Urnol. Xardas hat davon berichtet, dass du ihm bereits begegnet bist.

	if (!Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_Daemonisch3))
	{
		AI_Output(self, hero, "Info_Mod_Pyrokar_Machttr�ger_11_06"); //Zur Zeit scheint er hier in Khorinis f�r Unruhe zu sorgen. Du musst ihn unbedingt stellen.
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Pyrokar_Machttr�ger_11_07"); //Nachdem du ihn gestellt hast, wird er wieder zur�ck ins Minental gegangen sein.
	};

	AI_Output(self, hero, "Info_Mod_Pyrokar_Machttr�ger_11_08"); //Der Machttr�ger von Khorinis scheint sich auf einer Insel zu befinden. Doch ohne Schiff wirst du dort wohl nicht hinkommen.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Machttr�ger_11_09"); //Der letzte Machttr�ger befindet sich in Jharkendar, dem Tal, das die Wassermagier entdeckt haben. Wie ich geh�rt habe warst du daran nicht ganz unbeteiligt. Dort gibt es mehrere Herrenh�user.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Machttr�ger_11_10"); //In einem dieser Geb�ude befindet er sich sicherlich.

	B_LogEntry	(TOPIC_MOD_URIZIEL, "Der Machttr�ger im Minental ist der Schattenlord Urnol. Der wird vermutlich wieder im Minental sein. Der Machttr�ger von Khorinis soll sich auf einer etwas erntfernten Insel befinden. Ich werde ein Schiff brauchen, um dorthin zu gelangen. Und in Jharkendar sollte ich die Herrenh�user abklappern. Das kann ja lustig werden.");
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
	AI_Output(self, hero, "Info_Mod_Pyrokar_Rasend_11_00"); //Wir k�nnen Khorinis im Augenblick unter keinen Umst�nden verlassen.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Rasend_11_01"); //Solange der D�mon hier tobt, w�re es unverantwortlich, wenn wir Magier die Insel sich selbst �berlie�en.
};

INSTANCE Info_Mod_Pyrokar_Trank (C_INFO)
{
	npc		= Mod_551_KDF_Pyrokar_NW;
	nr		= 1;
	condition	= Info_Mod_Pyrokar_Trank_Condition;
	information	= Info_Mod_Pyrokar_Trank_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ich bringe den Trank f�r die Novizen.";
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
	AI_Output(hero, self, "Info_Mod_Pyrokar_Trank_15_00"); //Ich bringe den Trank f�r die Novizen.

	B_GiveInvItems	(hero, self, VatrasNovizenTrunk, 1);

	AI_Output(self, hero, "Info_Mod_Pyrokar_Trank_11_01"); //Ich habe doch Daron geschickt.
	AI_Output(hero, self, "Info_Mod_Pyrokar_Trank_15_02"); //Daron hat mir den Trank gegeben und mir gesagt ich solle ihn dir bringen.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Trank_11_03"); //Vielen Dank, du hast uns damit sehr geholfen.

	if (Npc_KnowsInfo(hero, Info_Mod_Pyrokar_Mitglied))
	{
		B_LogEntry_More	(TOPIC_MOD_DARONSGEFALLEN, TOPIC_MOD_FEUERMAGIER, "Ich habe Pyrokar den Trank gebracht.", "Ich habe Daron einen Gefallen getan.");
	}
	else
	{
		B_LogEntry	(TOPIC_MOD_DARONSGEFALLEN, "Ich habe Pyrokar den Trank gebracht.");
	};

	Mod_FMFieberDay = Wld_GetDay();
	Mod_FMFieber = 1;

	B_SetTopicStatus	(TOPIC_MOD_DARONSGEFALLEN, LOG_SUCCESS);

	B_GivePlayerXP	(100);

	B_G�ttergefallen(1, 1);
};

INSTANCE Info_Mod_Pyrokar_Mitglied (C_INFO)
{
	npc		= Mod_551_KDF_Pyrokar_NW;
	nr		= 1;
	condition	= Info_Mod_Pyrokar_Mitglied_Condition;
	information	= Info_Mod_Pyrokar_Mitglied_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ich will einer eurer Novizen werden.";
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
	AI_Output(hero, self, "Info_Mod_Pyrokar_Mitglied_15_00"); //Ich will einer eurer Novizen werden.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Mitglied_11_01"); //Wir brauchen immer neue Novizen. Du musst dich allerdings erst als w�rdig erweisen.
	AI_Output(hero, self, "Info_Mod_Pyrokar_Mitglied_15_02"); //Wie kann ich mich w�rdig erweisen?
	AI_Output(self, hero, "Info_Mod_Pyrokar_Mitglied_11_03"); //Helfe jedem der Feuermagier ein wenig. Es reicht wenn du den normalen Magier hilfst, wir hohen Magier werden dich nicht auf die Probe stellen.

	B_LogEntry	(TOPIC_MOD_FEUERMAGIER, "Um ein Feuer Novize zu werden muss ich jedem Feuermagier helfen.");

	if (Npc_KnowsInfo(hero, Info_Mod_Pyrokar_Trank))
	{
		B_LogEntry	(TOPIC_MOD_FEUERMAGIER, "Ich habe Daron einen Gefallen getan.");
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
	description	= "Ich habe allen Magiern geholfen.";
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
	AI_Output(hero, self, "Info_Mod_Pyrokar_Geholfen_15_00"); //Ich habe allen Magiern geholfen.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Geholfen_11_01"); //Sehr gut. Du kannst dich uns nun anschlie�en.

	B_GivePlayerXP	(200);

	B_LogEntry	(TOPIC_MOD_FEUERMAGIER, "Ich habe die Zustimmung aller Magier und kann nun einer ihrer Novizen werden.");
};

INSTANCE Info_Mod_Pyrokar_Aufnahme (C_INFO)
{
	npc		= Mod_551_KDF_Pyrokar_NW;
	nr		= 1;
	condition	= Info_Mod_Pyrokar_Aufnahme_Condition;
	information	= Info_Mod_Pyrokar_Aufnahme_Info;
	permanent	= 1;
	important	= 0;
	description	= "Ich bin bereit mich euch anzuschlie�en.";
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
	AI_Output(hero, self, "Info_Mod_Pyrokar_Aufnahme_15_00"); //Ich bin bereit mich euch anzuschlie�en.
	
	if (hero.level >= 5)
	{
		AI_Output(self, hero, "Info_Mod_Pyrokar_Aufnahme_11_01"); //Du bist bereit ein Feuer Novize zu werden.
		AI_Output(self, hero, "Info_Mod_Pyrokar_Aufnahme_11_02"); //Doch wenn du einmal eine von unseren Novizenroben tr�gst, dann gibt es kein zur�ck mehr.
		
		if (Mod_HatPlayerNeutraleKlamotten())
		{
			if (Mod_Gottstatus <= 8)
			{
				AI_Output(self, hero, "Info_Mod_Pyrokar_Aufnahme_11_05"); //Du solltest allerdings vorher noch ein paar Taten zu Gunsten von Innos vollbringen.
			}
			else
			{
				Info_ClearChoices	(Info_Mod_Pyrokar_Aufnahme);

				Info_AddChoice	(Info_Mod_Pyrokar_Aufnahme, "Ich habs mir anders �berlegt.", Info_Mod_Pyrokar_Aufnahme_Nein);
				Info_AddChoice	(Info_Mod_Pyrokar_Aufnahme, "Ich will mich euch anschlie�en.", Info_Mod_Pyrokar_Aufnahme_Ja);
			};
		}
		else
		{
			AI_Output(self, hero, "Info_Mod_Pyrokar_Aufnahme_11_04"); //Du solltest dir vorher aber noch eine neutrale R�stung besorgen.
		};
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Pyrokar_Aufnahme_11_03"); //Du solltest lieber noch etwas Erfahrung sammeln.
	};
};

FUNC VOID Info_Mod_Pyrokar_Aufnahme_Nein()
{
	AI_Output(hero, self, "Info_Mod_Pyrokar_Aufnahme_Nein_15_00"); //Ich hab's mir anders �berlegt.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Aufnahme_Nein_11_01"); //Wie du meinst.

	Info_ClearChoices	(Info_Mod_Pyrokar_Aufnahme);
};

FUNC VOID Info_Mod_Pyrokar_Aufnahme_Ja()
{
	AI_Output(hero, self, "Info_Mod_Pyrokar_Aufnahme_Ja_15_00"); //Ich will mich euch anschlie�en.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Aufnahme_Ja_11_01"); //Gut. Hier ist deine Novizenrobe.

	CreateInvItems	(self, ITAR_NOV_L, 1);
	B_GiveInvItems	(self, hero, ITAR_NOV_L, 1);

	AI_UnequipArmor	(hero);
	AI_EquipArmor	(hero, ItAr_Nov_L);

	AI_Output(self, hero, "Info_Mod_Pyrokar_Aufnahme_Ja_11_02"); //Du solltest dich damit nicht vor den Beliaranh�ngern zeigen, sie k�nnten sehr gereizt auf dich reagieren.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Aufnahme_Ja_11_03"); //Als einer unserer Novizen ist es dir m�glich unsere Magie zu erlernen.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Aufnahme_Ja_11_04"); //Au�erdem geh�rt es zu deinen Pflichten den Magiern zu dienen.

	AI_Output(self, hero, "Info_Mod_Pyrokar_Aufnahme_Ja_11_05"); //Als Waffe kann ich dir nur einen Kampfstab anbieten.

	B_GiveInvItems	(self, hero, ItMw_1h_Nov_Mace, 1);

	AI_Output(self, hero, "Info_Mod_Pyrokar_Aufnahme_Ja_11_06"); //Desweiteren bekommst du noch ein paar Kleinigkeiten.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Aufnahme_Ja_11_07"); //Das w�re zuerst ein Runenstein, mit dem du deine erste Rune erstellen kannst.

	B_GiveInvItems	(self, hero, ItMi_Runeblank, 1);

	AI_Output(self, hero, "Info_Mod_Pyrokar_Aufnahme_Ja_11_08"); //Dann steht es dir als Novize ebenfalls zu, die Bibliothek zu betreten.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Aufnahme_Ja_11_09"); //Dort wirst du auf Hyglas treffen, der dich in der Runenerstellung unterweise wird.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Aufnahme_Ja_11_10"); //Au�erdem wird dir Marduk die magischen Kreiser lehren, wenn du dazu bereit bist.

	B_GiveInvItems	(self, hero, ItKe_KlosterBibliothek, 1);

	B_LogEntry_More	(TOPIC_MOD_FEUERMAGIER, TOPIC_MOD_GILDENAUFNAHME, "Ich bin jetzt ein Feuer Novize.", "Ich bin jetzt ein Feuer Novize.");
	B_SetTopicStatus	(TOPIC_MOD_FEUERMAGIER, LOG_SUCCESS);
	B_SetTopicStatus	(TOPIC_MOD_GILDENAUFNAHME, LOG_SUCCESS);

	B_SetTopicStatus	(TOPIC_MOD_S�LDNER, LOG_FAILED);
	B_SetTopicStatus	(TOPIC_MOD_WASSERMAGIER, LOG_FAILED);
	B_SetTopicStatus	(TOPIC_MOD_MILIZ, LOG_FAILED);
	B_SetTopicStatus	(TOPIC_MOD_D�MONENBESCHW�RER, LOG_FAILED);

	Log_CreateTopic	(TOPIC_MOD_LEHRER_KLOSTER, LOG_NOTE);
	B_LogEntry_NS	(TOPIC_MOD_LEHRER_KLOSTER, "Marduk lehrt die magischen Kreise.");
	B_LogEntry_NS	(TOPIC_MOD_LEHRER_KLOSTER, "Bei Hyglas kann ich das Herstellen von Runen lernen.");
	
	Mod_Gilde = 6;

	Mod_925_KDF_Talamon_NW.aivar[AIV_PASSGATE] = TRUE;

	hero.guild = GIL_VLK;
	Npc_SetTrueGuild	(hero, GIL_VLK);

	Info_ClearChoices	(Info_Mod_Pyrokar_Aufnahme);

	CreateInvItems	(Mod_917_KDF_Gorax_NW, ItBE_Addon_NOV_01, 1);

	Snd_Play ("LEVELUP");

	B_GivePlayerXP	(400);

	Monster_Max += 30;

	B_G�ttergefallen(1, 5);

	Mod_FMAufnahme_Day = Wld_GetDay();
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
	AI_Output(self, hero, "Info_Mod_Pyrokar_FeuerGegenEis_11_00"); //Da bist du ja, Novize.
	AI_Output(hero, self, "Info_Mod_Pyrokar_FeuerGegenEis_15_01"); //Was ist geschehen?
	AI_Output(self, hero, "Info_Mod_Pyrokar_FeuerGegenEis_11_02"); //Das wissen wir selbst noch nicht genau.
	AI_Output(self, hero, "Info_Mod_Pyrokar_FeuerGegenEis_11_03"); //Aber es scheint, als h�tte sich bei dem Steinkreis auf Sekobs Hof ein mysteri�ses Portal gebildet, durch welches immer mehr Kreaturen aus Eis in die Umgebung eindringen.
	AI_Output(self, hero, "Info_Mod_Pyrokar_FeuerGegenEis_11_04"); //Diese wassernahen Wesen haben sich besonders am See ausgebreitet.
	AI_Output(self, hero, "Info_Mod_Pyrokar_FeuerGegenEis_11_05"); //Nun gilt mit Innos� Hilfe diese Wesen zur�ckzudr�ngen, das Ph�nomen zu untersuchen und das Portal � wenn m�glich - wieder zu verschlie�en.
	AI_Output(self, hero, "Info_Mod_Pyrokar_FeuerGegenEis_11_06"); //(nachdenklich kalkulierend) Dadurch k�nnten wir den Einfluss der Wassermagier auf den H�fen wieder eind�mmen und die Vormachtstellung unserer Kirche Innos� sichern.
	AI_Output(self, hero, "Info_Mod_Pyrokar_FeuerGegenEis_11_07"); //(wieder zum Helden) Jedenfalls habe ich bereits Sergio mit einigen Novizen losgeschickt, um die Lage auszukundschaften.
	AI_Output(hero, self, "Info_Mod_Pyrokar_FeuerGegenEis_15_08"); //Was ist meine Aufgabe?
	AI_Output(self, hero, "Info_Mod_Pyrokar_FeuerGegenEis_11_09"); //Dazu wollte ich gerade kommen. Hyglas hat sich n�mlich indes darauf vorbereitet mit seinem Wissen um die Feuermagie gegen diese Eiswesen vorzugehen.
	AI_Output(self, hero, "Info_Mod_Pyrokar_FeuerGegenEis_11_10"); //Als mein erfahrenster Novize wirst du ihn zu den H�fen begleiten und wenn n�tig unterst�tzen.
	AI_Output(self, hero, "Info_Mod_Pyrokar_FeuerGegenEis_11_11"); //Es bleibt keine Zeit zu verlieren und ihr brecht sofort auf. Innos� besch�tze euch auf eurem Weg.

	Log_CreateTopic	(TOPIC_MOD_FM_FEUEREIS, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_FM_FEUEREIS, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_FM_FEUEREIS, "Da steh ich also mit Hyglas. Von Sekobs Hof aus str�men durch ein mysteri�ses Portal immer mehr Eiswesen nach Khorinis und unsere Jungs sind am See mit ihnen in K�mpfe verwickelt. Es bleibt keine Zeit zu verlieren ihnen zu Hilfe zu eilen.");
};

INSTANCE Info_Mod_Pyrokar_Bef�rderung (C_INFO)
{
	npc		= Mod_551_KDF_Pyrokar_NW;
	nr		= 1;
	condition	= Info_Mod_Pyrokar_Bef�rderung_Condition;
	information	= Info_Mod_Pyrokar_Bef�rderung_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ich bin bereit Feuermagier werden.";
};

FUNC INT Info_Mod_Pyrokar_Bef�rderung_Condition()
{
	if (Mod_Gilde == 6)
	&& (Kapitel > 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Pyrokar_Bef�rderung_Info()
{
	AI_Output(hero, self, "Info_Mod_Pyrokar_Bef�rderung_15_00"); //Ich bin bereit Feuermagier zu werden.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Bef�rderung_11_01"); //Ja, die Zeit ist gekommen. Du bist nun ein Magier werden.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Bef�rderung_11_02"); //Hier ist deine neue Robe.

	CreateInvItems	(self, ItAr_Kdf_L, 1);
	B_GiveInvItems	(self, hero, ItAr_Kdf_L, 1);

	AI_Output(self, hero, "Info_Mod_Pyrokar_Bef�rderung_11_03"); //Und hier ist ein Schl�ssel f�r dein neues Schlafgemach.

	CreateInvItems	(self, ItKe_KDFPlayer, 1);
	B_GiveInvItems	(self, hero, ItKe_KDFPlayer, 1);

	AI_Output(self, hero, "Info_Mod_Pyrokar_Bef�rderung_11_04"); //M�ge Innos dich auf deinen Wegen begleiten.

	Mod_Gilde = 7;

	Snd_Play ("LEVELUP");

	B_GivePlayerXP	(400);

	B_G�ttergefallen(1, 5);

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Pyrokar_Patherion (C_INFO)
{
	npc		= Mod_551_KDF_Pyrokar_NW;
	nr		= 1;
	condition	= Info_Mod_Pyrokar_Patherion_Condition;
	information	= Info_Mod_Pyrokar_Patherion_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Pyrokar_Patherion_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Pyrokar_Bef�rderung))
	&& (Mod_Gilde == 7)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Pyrokar_Patherion_Info()
{
	AI_Output(self, hero, "Info_Mod_Pyrokar_Patherion_11_00"); //Jetzt, da du einer von uns bist, ist es an der Zeit dir eine alte Geschichte zu erz�hlen.
	AI_Output(hero, self, "Info_Mod_Pyrokar_Patherion_15_01"); //Was meinst du damit?
	AI_Output(self, hero, "Info_Mod_Pyrokar_Patherion_11_02"); //Kennst du die Sage �ber die Tr�nen Innos'?
	AI_Output(hero, self, "Info_Mod_Pyrokar_Patherion_15_03"); //Tr�nen Innos'? Nein, lass h�ren.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Patherion_11_04"); //Es begann in der Zeit, als Innos seinen beiden Br�der gegen�berstand und ihm klar wurde, dass er Beliar bek�mpfen musste. Als Innos dies erkannte f�llte sich sein Herz mit Trauer und er begann zu weinen.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Patherion_11_05"); //13 Jahre lang weinte er und seine Tr�nen fielen herab auf die Welt. Trotz dieser langen Zeit hat Innos nur 6 Tr�nen vergossen.
	AI_Output(hero, self, "Info_Mod_Pyrokar_Patherion_15_06"); //Und was geschah dann mit ihnen?
	AI_Output(self, hero, "Info_Mod_Pyrokar_Patherion_11_07"); //Nun, ein Mensch, sein Name war Ragon, fand eine der Tr�nen. Er kostete von ihr und er wurde erf�llt von �bernat�rlicher Kraft und Weisheit.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Patherion_11_08"); //Er erkannte die Weisheit von Innos Sch�pfung. So begann er Innos zu dienen. Als Bu�e f�r sein bisheriges leben beschloss er einen Bu�gang zu machen.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Patherion_11_09"); //Er ging immer weiter geradeaus, weder Seen noch Berge konnten ihn aufhalten. Und irgendwann, mitten im Gebirge, fand er ein Tal. Nahezu unerreichbar. Dort begann er einen Tempel zu bauen.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Patherion_11_10"); //Als er ihn fertig gebaut hatte betete er 13 Tage lang zu Innos. Er h�rte erst auf zu beten als ihn 4 Stimmen unterbrachen.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Patherion_11_11"); //Es waren vier M�nner. Sie kamen aus allen Teilen der Erde, getrieben von der Suche nach Vergebung ihrer S�nden und f�hlten sich zu jenem Ort berufen, an dem Innos Kraft so deutlich zu sp�ren war.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Patherion_11_12"); //Die f�nf M�nner sprachen jeder eine andere Sprache und doch verstanden sie einander problemlos. Sie beschlossen gemeinsam ein gro�es Kloster zu bauen. Sie bauten lange, doch Zeit hatte f�r sie die Bedeutung verloren, durch die Tr�nen Innos� alterten sie nicht mehr.
	AI_Output(hero, self, "Info_Mod_Pyrokar_Patherion_15_13"); //Dann sind die Tr�nen eine Art Zaubertrank?
	AI_Output(self, hero, "Info_Mod_Pyrokar_Patherion_11_14"); //Sozusagen ja, nur noch viel m�chtiger!
	AI_Output(hero, self, "Info_Mod_Pyrokar_Patherion_15_15"); //Und was geschah nachdem sie das Kloster erbaut hatten?
	AI_Output(self, hero, "Info_Mod_Pyrokar_Patherion_11_16"); //Nun, sie zogen aus um die Botschaft von Innos zu verbreiten und suchten Novizen f�r ihr Kloster. Zumindest die meisten von ihnen. Einer jedoch f�hlte sich zu anderem berufen. Es war Ragon.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Patherion_11_17"); //Er wusste, oder vielmehr f�hlte er, dass es noch eine Tr�ne Innos' gab. Diese wollte er finden und ins Kloster bringen.
	AI_Output(hero, self, "Info_Mod_Pyrokar_Patherion_15_18"); //Und hat er sie gefunden?
	AI_Output(self, hero, "Info_Mod_Pyrokar_Patherion_11_19"); //Das wei� niemand. Die restlichen 4vier trafen sich wieder im Kloster, wo sie noch heute das Oberhaupt der Innoskirche bilden, doch von Ragon hat man nie wieder was geh�rt.
	AI_Output(hero, self, "Info_Mod_Pyrokar_Patherion_15_20"); //Und warum erz�hlst du mir diese Geschichte?
	AI_Output(self, hero, "Info_Mod_Pyrokar_Patherion_11_21"); //Nur um dir die n�tigen Hintergrundinformationen f�r deinen n�chsten Auftrag zu geben.
	AI_Output(hero, self, "Info_Mod_Pyrokar_Patherion_15_22"); //Meinen n�chsten Auftrag?
	AI_Output(self, hero, "Info_Mod_Pyrokar_Patherion_11_23"); //Ja. Patherion wurde vor einiger Zeit von den Schwarzmagiern und schwarzen Kriegern belagert. Zuerst verstanden wir ihr Handeln nicht, eine Belagerung war quasi sinnlos, da wir uns ja nach belieben teleportieren k�nnen, doch wir untersch�tzen die Schwarzmagier. Sie haben die Foki gestohlen und eine Barriere errichtet.
	AI_Output(hero, self, "Info_Mod_Pyrokar_Patherion_15_24"); //Was? Du meinst wie damals in der Minenkolonie?
	AI_Output(self, hero, "Info_Mod_Pyrokar_Patherion_11_25"); //Ja und Nein. Sie haben zwar eine �hnliche Barriere errichtet, doch man kann sowohl rein als auch raus gehen.
	AI_Output(hero, self, "Info_Mod_Pyrokar_Patherion_15_26"); //Was ist dann das Problem?
	AI_Output(self, hero, "Info_Mod_Pyrokar_Patherion_11_27"); //Tja, man kann eben nur rein "gehen". Die Barriere verhindert, dass wir uns dorthin teleportieren k�nnen! Die Nahrungs- und Trankvorr�te von Patherion gehen zur Neige, deshalb sollst du ihnen dieses Paket voller Tr�nke und dieses Paket voll Nahrung bringen.

	CreateInvItems	(hero, ItMi_Pat_Nahrung, 1);
	CreateInvItems	(hero, ItMi_Pat_Trank, 1);

	AI_PrintScreen	("2 Pakete erhalten", -1, YPOS_GoldGiven, FONT_ScreenSmall, 2);

	AI_Output(hero, self, "Info_Mod_Pyrokar_Patherion_15_28"); //Was? Ich denke man kann sich nicht dorthin teleportieren und wie du selbst gesagt hast ist es nahezu unerreichbar.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Patherion_11_29"); //Das stimmt so nicht ganz, man kann sich nur nicht zum Kloster teleportieren. Erinnerst du dich an die Kapelle, die Ragon eigenh�ndig baute? Sie liegt ausserhalb der Barriere und man kann problemlos durch Magie zu ihr reisen.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Patherion_11_30"); //Von dort aus wirst du dir allerdings selbst einen Weg durch die Reihen der Schwarzmagier suchen m�ssen.
	AI_Output(hero, self, "Info_Mod_Pyrokar_Patherion_15_31"); //Klingt gef�hrlich!
	AI_Output(self, hero, "Info_Mod_Pyrokar_Patherion_11_32"); //Ist es auch. Aus diesem Grund wird das ganze auch dir aufgetragen und keinem der Novizen.
	AI_Output(hero, self, "Info_Mod_Pyrokar_Patherion_15_33"); //Gut, ich mache mich gleich auf den Weg.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Patherion_11_34"); //Nimm diese Rune. Mit ihr wirst du zur Kapelle von Patherion kommen.

	CreateInvItems	(self, ItRu_Teleport_Pat, 1);
	B_GiveInvItems	(self, hero, ItRu_Teleport_Pat, 1);

	AI_Output(hero, self, "Info_Mod_Pyrokar_Patherion_15_35"); //Und wie komme ich wieder zur�ck?
	AI_Output(self, hero, "Info_Mod_Pyrokar_Patherion_11_36"); //Mit dieser Rune. Du kannst sie allerdings nur in der Kapelle benutzen.

	CreateInvItems	(self, ItRu_TeleportPatBack, 1);
	B_GiveInvItems	(self, hero, ItRu_TeleportPatBack, 1);

	Log_CreateTopic	(TOPIC_MOD_PATHERION, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_PATHERION, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_PATHERION, "Pyrokar hat mir von Patherion, einem gro�en Tempel der Feuermagier erz�hlt. Dieser wird momentan aber von Schwarzmagiern und Kriegern belagert und braucht deshalb Nachschub an Nahrung und Tr�nken. Ich soll diese nun in den Tempel bringen.");
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
	AI_Output(self, hero, "Info_Mod_Pyrokar_Patherion2_11_00"); //Wie ich sehe bist du aus Patherion zur�ckgekehrt. So berichte, was sich dort ereignet hat?
	AI_Output(hero, self, "Info_Mod_Pyrokar_Patherion2_15_01"); //Es gab einen Schwarzmagier im Kloster. Der Magier Garan und ich haben ihn enttarnt und unsch�dlich gemacht.
	AI_Output(hero, self, "Info_Mod_Pyrokar_Patherion2_15_02"); //Danach haben wir uns um die Barriere gek�mmert, die nun ebenfalls nicht mehr existiert.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Patherion2_11_03"); //Das sind wahrlich gute Nachrichten. Nimm diese Tr�nke als Belohnung.

	CreateInvItems	(hero, ItPo_Health_03, 3);
	CreateInvItems	(hero, ItPo_Mana_03, 3);

	B_ShowGivenThings	("3 Elixiere der Heilung und 3 Elixiere des Manas erhalten");

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
	description	= "W�rdentr�ger Innos, ich brauche eure Hilfe.";
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
	AI_Output(hero, self, "Info_Mod_Pyrokar_AkilsHof_15_00"); //W�rdentr�ger Innos, ich brauche eure Hilfe.
	AI_Output(self, hero, "Info_Mod_Pyrokar_AkilsHof_11_01"); //Was ist dein Anliegen?
	AI_Output(hero, self, "Info_Mod_Pyrokar_AkilsHof_15_02"); //Br�der sind wie besessen aufeinander losgegangen und h�tten sich fast umgebracht, andere Leute wiederum sind schwer erkrankt, nachdem sie unwissentlich einem Diener des B�sen Unterkunft gew�hrt hatten.
	AI_Output(self, hero, "Info_Mod_Pyrokar_AkilsHof_11_03"); //Diener des B�sen sagst du?! Das klingt ganz nach einer Form von Besessenheit, welche  �ber diese Menschen gewirkt wurde.
	AI_Output(hero, self, "Info_Mod_Pyrokar_AkilsHof_15_04"); //Habt ihr ein Mittel dagegen?
	AI_Output(self, hero, "Info_Mod_Pyrokar_AkilsHof_11_05"); //Selbstverst�ndlich. Nichts gibt es, was der Allmacht unseres Herrn Innos  widerstehen k�nnte.
	AI_Output(hero, self, "Info_Mod_Pyrokar_AkilsHof_15_06"); //Da bin ich ja erleichtert ...
	AI_Output(self, hero, "Info_Mod_Pyrokar_AkilsHof_11_07"); //Gegen eine kleine Spende an das Kloster werde ich dich mit Tr�nken ausstatten, die Abhilfe schaffen sollten.
	AI_Output(hero, self, "Info_Mod_Pyrokar_AkilsHof_15_08"); //Spende?! Wie viel?
	AI_Output(self, hero, "Info_Mod_Pyrokar_AkilsHof_11_09"); //Wie viele Menschen sind denn von der Krankheit betroffen?
	AI_Output(hero, self, "Info_Mod_Pyrokar_AkilsHof_15_10"); //Nun, es m�ssten drei sein.
	AI_Output(self, hero, "Info_Mod_Pyrokar_AkilsHof_11_11"); //Dann wird eine bescheidene Spende von 600 Goldm�nzen ihnen Linderung verschaffen.

	Info_ClearChoices	(Info_Mod_Pyrokar_AkilsHof);

	Info_AddChoice	(Info_Mod_Pyrokar_AkilsHof, "Was?! 600 Goldm�nzen?!", Info_Mod_Pyrokar_AkilsHof_B);
	if (Npc_HasItems(hero, ItMi_Gold) >= 600)
	{
		Info_AddChoice	(Info_Mod_Pyrokar_AkilsHof, "Na gut, hier ist das Gold.", Info_Mod_Pyrokar_AkilsHof_A);
	};
};

FUNC VOID Info_Mod_Pyrokar_AkilsHof_G()
{
	AI_Output(self, hero, "Info_Mod_Pyrokar_AkilsHof_G_11_00"); //Der Segen unseres Herrn m�ge dich begleiten.

	B_GiveInvItems	(self, hero, ItPo_HealBesessenheit, 3);
	
	Info_ClearChoices	(Info_Mod_Pyrokar_AkilsHof);

	B_GivePlayerXP	(100);

	B_LogEntry	(TOPIC_MOD_AKILSHOF, "Ich habe das Heilmittel f�r die Erkrankten. Jetzt sollte ich mich damit beeilen es ihnen zu bringen.");
};

FUNC VOID Info_Mod_Pyrokar_AkilsHof_B()
{
	AI_Output(hero, self, "Info_Mod_Pyrokar_AkilsHof_B_15_00"); //Was?! 600 Goldm�nzen?!
	AI_Output(self, hero, "Info_Mod_Pyrokar_AkilsHof_B_11_01"); //Es ist eine angemessene Spende, die dazu verhelfen wird den Segen unseres Herrn Innos in die Welt hinauszutragen.
	
	Info_ClearChoices	(Info_Mod_Pyrokar_AkilsHof);

	Info_AddChoice	(Info_Mod_Pyrokar_AkilsHof, "Aber es geht um Leben und Tod (...)", Info_Mod_Pyrokar_AkilsHof_D);
	if (Npc_HasItems(hero, ItMi_Gold) >= 600)
	{
		Info_AddChoice	(Info_Mod_Pyrokar_AkilsHof, "Na gut, hier ist das Gold.", Info_Mod_Pyrokar_AkilsHof_A);
	};
};

FUNC VOID Info_Mod_Pyrokar_AkilsHof_A()
{
	AI_Output(hero, self, "Info_Mod_Pyrokar_AkilsHof_A_15_00"); //Na gut, hier ist das Gold.

	B_GiveInvItems	(hero, self, ItMi_Gold, 600);

	Info_Mod_Pyrokar_AkilsHof_G();
};

FUNC VOID Info_Mod_Pyrokar_AkilsHof_D()
{
	AI_Output(hero, self, "Info_Mod_Pyrokar_AkilsHof_D_15_00"); //Aber es geht um Le ...
	AI_Output(self, hero, "Info_Mod_Pyrokar_AkilsHof_D_11_01"); //(unterbricht etwas energisch) Wenn dein Anliegen von solcher Wichtigkeit ist, wirst du diese kleine Spende ohne Zweifel aufbringen k�nnen.
	
	Info_ClearChoices	(Info_Mod_Pyrokar_AkilsHof);

	Info_AddChoice	(Info_Mod_Pyrokar_AkilsHof, "Aber Akil ist doch gl�ubiger und rechtschaffener Mann.", Info_Mod_Pyrokar_AkilsHof_F);
	if (Npc_HasItems(hero, ItMi_Gold) >= 600)
	{
		Info_AddChoice	(Info_Mod_Pyrokar_AkilsHof, "Na sch�n, ich bezahle.", Info_Mod_Pyrokar_AkilsHof_E);
	};
};

FUNC VOID Info_Mod_Pyrokar_AkilsHof_F()
{
	AI_Output(hero, self, "Info_Mod_Pyrokar_AkilsHof_F_15_00"); //Aber Akil ...
	AI_Output(self, hero, "Info_Mod_Pyrokar_AkilsHof_F_11_01"); //(W�tend) Ich sagte (h�lt pl�tzlich inne) ... (zu sich selbst) ... was, Akil? Hmm, ein gl�ubiger Mann, spendet jeden Monat dem ...
	AI_Output(self, hero, "Info_Mod_Pyrokar_AkilsHof_F_11_02"); //(wieder zum Helden) ... �hh, die unermessliche G�te unseres Herrn Innos bewegt mich dazu, dir ohne jedes Entgelt die Tr�nke als Geschenk zu �berreichen.

	AI_TurnAway	(hero, self);

	AI_Output(hero, self, "Info_Mod_Pyrokar_AkilsHof_F_15_03"); //(Zu sich selbst) Na also, geht doch.

	Info_Mod_Pyrokar_AkilsHof_G();
};

FUNC VOID Info_Mod_Pyrokar_AkilsHof_E()
{
	AI_Output(hero, self, "Info_Mod_Pyrokar_AkilsHof_E_15_00"); //Na sch�n, ich bezahle.

	B_GiveInvItems	(hero, self, ItMi_Gold, 600);

	AI_TurnAway	(hero, self);

	AI_Output(hero, self, "Info_Mod_Pyrokar_AkilsHof_E_15_01"); //(zu sich selbst) Halsabschneider.

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
	description	= "Hoher Magier des Feuers, ich trage so ein beklemmendes Gef�hl in mir.";
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
	AI_Output(hero, self, "Info_Mod_Pyrokar_Hexenfluch_15_00"); //Hoher Magier des Feuers, ich trage so ein beklemmendes Gef�hl in mir.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Hexenfluch_11_01"); //Ja, ich sp�re auch, dass schwarze Magie auf dich gewirkt wurde. Was ist geschehen?
	AI_Output(hero, self, "Info_Mod_Pyrokar_Hexenfluch_15_02"); //Ein Weibsbild hat diesen Fluch auf mich gewirkt.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Hexenfluch_11_03"); //Eine Frau?! Das klingt ja ganz ... nach Hexenwerk. Dar�ber werde ich eingehend nachdenken.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Hexenfluch_11_04"); //Wie dem auch sei, f�r eine bescheidene Spende von 300 Goldm�nzen werde ich dich mit einem Heilmittel ausstatten.

	Info_ClearChoices	(Info_Mod_Pyrokar_Hexenfluch);

	Info_AddChoice	(Info_Mod_Pyrokar_Hexenfluch, DIALOG_BACK, Info_Mod_Pyrokar_Hexenfluch_B);
	if (Npc_HasItems(hero, ItMi_Gold) >= 300)
	{
		Info_AddChoice	(Info_Mod_Pyrokar_Hexenfluch, "Hier das Gold.", Info_Mod_Pyrokar_Hexenfluch_A);
	};
};

FUNC VOID Info_Mod_Pyrokar_Hexenfluch_B()
{
	Info_ClearChoices	(Info_Mod_Pyrokar_Hexenfluch);
};

FUNC VOID Info_Mod_Pyrokar_Hexenfluch_A()
{
	AI_Output(hero, self, "Info_Mod_Pyrokar_Hexenfluch_A_15_00"); //Hier das Gold.

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
	description	= "Serpentes weigert sich, das Gold f�r die Trauben des H�ndlers Kimon zu zahlen.";
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
	AI_Output(hero, self, "Info_Mod_Pyrokar_Kimon_15_00"); //Serpentes weigert sich, das Gold f�r die Trauben des H�ndlers Kimon zu zahlen. Er hat 1000 Gold zu wenig bezahlt.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Kimon_11_01"); //Kannst du das beweisen?
	AI_Output(hero, self, "Info_Mod_Pyrokar_Kimon_15_02"); //Nein ...
	AI_Output(self, hero, "Info_Mod_Pyrokar_Kimon_11_03"); //Dann komm wieder, wenn du es kannst!

	B_LogEntry	(TOPIC_MOD_KIMONSTRAUBEN, "Pyrokar will, dass ich ihm das Unrecht beweise. Ich sollte mal mit Kimon reden.");
};

INSTANCE Info_Mod_Pyrokar_KimonGeld (C_INFO)
{
	npc		= Mod_551_KDF_Pyrokar_NW;
	nr		= 1;
	condition	= Info_Mod_Pyrokar_KimonGeld_Condition;
	information	= Info_Mod_Pyrokar_KimonGeld_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hier ist der Beleg.";
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
	AI_Output(hero, self, "Info_Mod_Pyrokar_KimonGeld_15_00"); //Hier ist der Beleg.

	B_GiveInvItems	(hero, self, ItWr_KimonsBeleg, 1);

	B_UseFakeScroll	();

	AI_Output(hero, self, "Info_Mod_Pyrokar_KimonGeld_15_01"); //Nach myrthanischer Verordnung m�ssen Waren f�r das Doppelte ihres Wertes verkauft werden.
	AI_Output(self, hero, "Info_Mod_Pyrokar_KimonGeld_11_02"); //Gut, dann nimm das Gold und geh.

	B_GiveInvItems	(self, hero, ItMi_Gold, 1000);

	B_GivePlayerXP	(50);

	B_LogEntry	(TOPIC_MOD_KIMONSTRAUBEN, "Pyrokar hat mir das Gold f�r Kimon gegeben. Ich sollte es ihm jetzt bringen.");
};

INSTANCE Info_Mod_Pyrokar_Kristall (C_INFO)
{
	npc		= Mod_551_KDF_Pyrokar_NW;
	nr		= 1;
	condition	= Info_Mod_Pyrokar_Kristall_Condition;
	information	= Info_Mod_Pyrokar_Kristall_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ich habe hier einen wertvollen Kristall.";
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
	AI_Output(hero, self, "Info_Mod_Pyrokar_Kristall_15_00"); //Ich habe hier einen wertvollen Kristall.
	
	B_GiveInvItems	(hero, self, Mod_PaladinKristall, 1);

	AI_Output(self, hero, "Info_Mod_Pyrokar_Kristall_11_01"); //Der Kristall der Paladine? Wie hast du ihn bekommen?
	AI_Output(hero, self, "Info_Mod_Pyrokar_Kristall_15_02"); //Ich habe ihn von den Dieben in der Kanalisation erbeutet.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Kristall_11_03"); //Dass du ihn zu mir bringst, zeigt mir dein Vertrauen in unsere Gemeinschaft.

	if (Mod_Gilde == 0)
	{
		AI_Output(self, hero, "Info_Mod_Pyrokar_Kristall_11_04"); //Wenn du willst, kannst du nun den Novizen beitreten.
	};

	B_GivePlayerXP	(200);

	B_LogEntry_More	(TOPIC_MOD_FEUERMAGIER, TOPIC_MOD_S�LDNER, "Pyrokar ist bereit mich bei den Feuer Novizen aufzunehmen.", "Ich hab den Kristall Pyrokar gegeben. Torlof wird das sicherlich nicht sehr gefallen.");

	B_SetTopicStatus	(TOPIC_MOD_TORLOFSPIONAGE, LOG_FAILED);

	B_G�ttergefallen(1, 3);
};

INSTANCE Info_Mod_Pyrokar_Comeback (C_INFO)
{
	npc		= Mod_551_KDF_Pyrokar_NW;
	nr		= 1;
	condition	= Info_Mod_Pyrokar_Comeback_Condition;
	information	= Info_Mod_Pyrokar_Comeback_Info;
	permanent	= 0;
	important	= 0;
	description	= "Innos zum Gru�, Ehrw�rdiger.";
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
	AI_Output(hero, self, "Info_Mod_Pyrokar_Comeback_15_00"); //Innos zum Gru�, Ehrw�rdiger.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Comeback_11_01"); //Was soll der Schmus? Sicher willst du was.
	AI_Output(hero, self, "Info_Mod_Pyrokar_Comeback_15_02"); //Nun ja, ich k�nnte eine der alten Opferschalen gebrauchen.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Comeback_11_03"); //Bei Innos! Du willst den Klosterkeller entr�mpeln. Nun gut. Aber f�r was brauchst du die Schale?
	AI_Output(hero, self, "Info_Mod_Pyrokar_Comeback_15_04"); //Eine Gruppe von Leuten will eine Spendensammlung organisieren. F�r die Behinderten und die Armen ...
	AI_Output(hero, self, "Info_Mod_Pyrokar_Comeback_15_05"); //Man glaubt, dass bei so einem heiligen Gef�� mehr Gold aus den Beuteln der Menschen kommt.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Comeback_11_06"); //Das ist klug gedacht und l�blich. Aber das Kloster schwimmt auch nicht gerade in Gold ...
	AI_Output(hero, self, "Info_Mod_Pyrokar_Comeback_15_07"); //Es ist beabsichtigt, ein Viertel des gesammelten Goldes dem Kloster zukommen zu lassen.
	AI_Output(self, hero, "Info_Mod_Pyrokar_Comeback_11_08"); //(gierig) Gut, gut. Ganz im Sinne Innos. Er wird seinen Segen geben. Du bekommst deine Schale. Sprich mit Gorax.
	AI_Output(hero, self, "Info_Mod_Pyrokar_Comeback_15_09"); //Vielen Dank, Ehrw�rdiger.

	B_LogEntry	(TOPIC_MOD_ASS_COMEBACK, "Mit ein wenig �berzeugungskraft konnte ich Pyrokar eine der Opferschalen abschwatzen. Ich soll jetzt zu Gorax gehen.");
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
	AI_Output (self, hero, "Info_Mod_Pyrokar_PMSchulden_11_00"); //Bist du gekommen, um deine Strafe zu zahlen?

	if (B_GetTotalPetzCounter(self) > Pyrokar_LastPetzCounter)
	{
		AI_Output (self, hero, "Info_Mod_Pyrokar_PMSchulden_11_01"); //Ich hatte mich schon gefragt, ob du es �berhaupt noch wagst, hierher zu kommen!
		AI_Output (self, hero, "Info_Mod_Pyrokar_PMSchulden_11_02"); //Anscheinend ist es nicht bei den letzten Anschuldigungen geblieben!

		if (Pyrokar_Schulden < 1000)
		{
			AI_Output (self, hero, "Info_Mod_Pyrokar_PMSchulden_11_03"); //Ich hatte dich gewarnt! Die Strafe, die du jetzt zahlen musst, ist h�her!
			AI_Output (hero, self, "Info_Mod_Pyrokar_PMAdd_15_00"); //Wieviel?
			
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
			AI_Output (self, hero, "Info_Mod_Pyrokar_PMSchulden_11_04"); //Du hast mich schwer entt�uscht!
		};
	}
	else if (B_GetGreatestPetzCrime(self) < Pyrokar_LastPetzCrime)
	{
		AI_Output (self, hero, "Info_Mod_Pyrokar_PMSchulden_11_05"); //Es haben sich einige neue Dinge ergeben.
		
		if (Pyrokar_LastPetzCrime == CRIME_MURDER)
		{
			AI_Output (self, hero, "Info_Mod_Pyrokar_PMSchulden_11_06"); //Pl�tzlich gibt es niemanden mehr, der dich des Mordes bezichtigt.
		};
		
		if (Pyrokar_LastPetzCrime == CRIME_THEFT)
		|| ( (Pyrokar_LastPetzCrime > CRIME_THEFT) && (B_GetGreatestPetzCrime(self) < CRIME_THEFT) )
		{
			AI_Output (self, hero, "Info_Mod_Pyrokar_PMSchulden_11_07"); //Niemand erinnert sich mehr, dich bei einem Diebstahl gesehen zu haben.
		};
		
		if (Pyrokar_LastPetzCrime == CRIME_ATTACK)
		|| ( (Pyrokar_LastPetzCrime > CRIME_ATTACK) && (B_GetGreatestPetzCrime(self) < CRIME_ATTACK) )
		{
			AI_Output (self, hero, "Info_Mod_Pyrokar_PMSchulden_11_08"); //Es gibt keine Zeugen mehr daf�r, dass du jemals in eine Schl�gerei verwickelt warst.
		};
		
		if (B_GetGreatestPetzCrime(self) == CRIME_NONE)
		{
			AI_Output (self, hero, "Info_Mod_Pyrokar_PMSchulden_11_09"); //Anscheinend haben sich alle Anklagen gegen dich in Wohlgefallen aufgel�st.
		};
		
		AI_Output (self, hero, "Info_Mod_Pyrokar_PMSchulden_11_10"); //Ich wei� nicht, was da gelaufen ist, aber ich warne dich: Spiel keine Spielchen mit mir.
				
		// ------- Schulden erlassen oder trotzdem zahlen ------
		if (B_GetGreatestPetzCrime(self) == CRIME_NONE)
		{
			AI_Output (self, hero, "Info_Mod_Pyrokar_PMSchulden_11_11"); //Ich habe mich jedenfalls entschieden, dir deine Schulden zu erlassen.
			AI_Output (self, hero, "Info_Mod_Pyrokar_PMSchulden_11_12"); //Sieh zu, dass du nicht wieder in Schwierigkeiten kommst.
	
			Pyrokar_Schulden			= 0;
			Pyrokar_LastPetzCounter 	= 0;
			Pyrokar_LastPetzCrime		= CRIME_NONE;
		}
		else
		{
			AI_Output (self, hero, "Info_Mod_Pyrokar_PMSchulden_11_13"); //Damit eins klar ist: Deine Strafe musst du trotzdem in voller H�he zahlen.
			B_Say_Gold (self, hero, Pyrokar_Schulden);
			AI_Output (self, hero, "Info_Mod_Pyrokar_PMSchulden_11_14"); //Also, was ist?
		};
	};
	
	// ------ Choices NUR, wenn noch Crime vorliegt ------
	if (B_GetGreatestPetzCrime(self) != CRIME_NONE)
	{
		Info_ClearChoices  	(Info_Mod_Pyrokar_PMSchulden);
		Info_ClearChoices  	(Info_Mod_Pyrokar_PETZMASTER);
		Info_AddChoice		(Info_Mod_Pyrokar_PMSchulden,"Ich habe nicht genug Gold!",Info_Mod_Pyrokar_PETZMASTER_PayLater);
		Info_AddChoice		(Info_Mod_Pyrokar_PMSchulden,"Wieviel war es nochmal?",Info_Mod_Pyrokar_PMSchulden_HowMuchAgain);
		if (Npc_HasItems(hero, itmi_gold) >= Pyrokar_Schulden)
		{
			Info_AddChoice 	(Info_Mod_Pyrokar_PMSchulden,"Ich will die Strafe zahlen.",Info_Mod_Pyrokar_PETZMASTER_PayNow);
		};
	};
};

func void Info_Mod_Pyrokar_PMSchulden_HowMuchAgain()
{
	AI_Output (hero, self, "Info_Mod_Pyrokar_PMSchulden_HowMuchAgain_15_00"); //Wie viel war es noch mal?
	B_Say_Gold (self, hero, Pyrokar_Schulden);

	Info_ClearChoices  	(Info_Mod_Pyrokar_PMSchulden);
	Info_ClearChoices  	(Info_Mod_Pyrokar_PETZMASTER);
	Info_AddChoice		(Info_Mod_Pyrokar_PMSchulden,"Ich habe nicht genug Gold!",Info_Mod_Pyrokar_PETZMASTER_PayLater);
	Info_AddChoice		(Info_Mod_Pyrokar_PMSchulden,"Wieviel war es nochmal?",Info_Mod_Pyrokar_PMSchulden_HowMuchAgain);
	if (Npc_HasItems(hero, itmi_gold) >= Pyrokar_Schulden)
	{
		Info_AddChoice 	(Info_Mod_Pyrokar_PMSchulden,"Ich will die Strafe zahlen.",Info_Mod_Pyrokar_PETZMASTER_PayNow);
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
	Pyrokar_Schulden = 0; //weil Funktion nochmal durchlaufen wird, wenn Crime h�her ist...
	
	// ------ SC hat mit Pyrokar noch nicht gesprochen ------
	if (self.aivar[AIV_TalkedToPlayer] == FALSE)
	{
		AI_Output (self, hero, "Info_Mod_Pyrokar_PETZMASTER_11_00"); //Du musst der Neue sein, der hier im Kloster �rger gemacht hat.
	};	
	
	if (B_GetGreatestPetzCrime(self) == CRIME_MURDER) 
	{
		AI_Output (self, hero, "Info_Mod_Pyrokar_PETZMASTER_11_01"); //Gut, dass du zu mir kommst, bevor alles noch schlimmer f�r dich wird.
		AI_Output (self, hero, "Info_Mod_Pyrokar_PETZMASTER_11_02"); //Mord ist ein schweres Vergehen!

		Pyrokar_Schulden = (B_GetTotalPetzCounter(self) * 50); 		//Anzahl der Zeugen * 50

		Pyrokar_Schulden = Pyrokar_Schulden + 500;						//PLUS M�rder-Malus

		if ((PETZCOUNTER_City_Theft + PETZCOUNTER_City_Attack + PETZCOUNTER_City_Sheepkiller) > 0)
		{
			AI_Output (self, hero, "Info_Mod_Pyrokar_PETZMASTER_11_03"); //Ganz zu schweigen von den anderen Sachen, die du angerichtet hast.
		};

		AI_Output (self, hero, "Info_Mod_Pyrokar_PETZMASTER_11_04"); //Die meisten Magier werden einen M�rder im Kloster nicht dulden!
		AI_Output (self, hero, "Info_Mod_Pyrokar_PETZMASTER_11_06"); //Ich habe kein Interesse daran, dich an den Galgen zu bringen.
		AI_Output (self, hero, "Info_Mod_Pyrokar_PETZMASTER_11_07"); //Aber es wird nicht leicht sein, die Leute wieder gn�dig zu stimmen.
		AI_Output (self, hero, "Info_Mod_Pyrokar_PETZMASTER_11_08"); //Du k�nntest deine Reue zeigen, indem du eine Strafe zahlst - nat�rlich muss die Strafe angemessen hoch sein.
	};
		
	if (B_GetGreatestPetzCrime(self) == CRIME_THEFT) 
	{
		AI_Output (self, hero, "Info_Mod_Pyrokar_PETZMASTER_11_09"); //Gut, dass du kommst! Du wirst des Diebstahls bezichtigt! Es gibt Zeugen!

		if ((PETZCOUNTER_City_Attack + PETZCOUNTER_City_Sheepkiller) > 0)
		{
			AI_Output (self, hero, "Info_Mod_Pyrokar_PETZMASTER_11_10"); //Von den anderen Dingen, die mir zu Ohren gekommen sind, will ich gar nicht erst reden.
		};

		AI_Output (self, hero, "Info_Mod_Pyrokar_PETZMASTER_11_11"); //Ich werde so ein Verhalten im Kloster nicht dulden!
		AI_Output (self, hero, "Info_Mod_Pyrokar_PETZMASTER_11_12"); //Du wirst eine Strafe zahlen m�ssen, um dein Verbrechen wieder gutzumachen!
		
		Pyrokar_Schulden = (B_GetTotalPetzCounter(self) * 50); //Anzahl der Zeugen * 50
	};
	
	if (B_GetGreatestPetzCrime(self) == CRIME_ATTACK)
	{
		AI_Output (self, hero, "Info_Mod_Pyrokar_PETZMASTER_11_13"); //Wenn du dich mit den Leuten und der Stadt oder auf den H�fen anlegst, geht uns das nichts an.
		AI_Output (self, hero, "Info_Mod_Pyrokar_PETZMASTER_11_14"); //Aber wenn du Novizen oder Magier angreifst, muss ich dich zur Rechenschaft ziehen.

		if (PETZCOUNTER_City_Sheepkiller > 0)
		{
			AI_Output (self, hero, "Info_Mod_Pyrokar_PETZMASTER_11_15"); //Und die Sache mit den Schafen musste wohl auch nicht sein.
		};

		AI_Output (self, hero, "Info_Mod_Pyrokar_PETZMASTER_11_16"); //Wenn ich dir das durchgehen lasse, macht hier bald jeder, was er will.
		AI_Output (self, hero, "Info_Mod_Pyrokar_PETZMASTER_11_17"); //Also wirst du eine angemessene Strafe zahlen - und die Sache ist vergessen.
		
		Pyrokar_Schulden = (B_GetTotalPetzCounter(self) * 50); //Anzahl der Zeugen * 50
	};
	
	// ------ Schaf get�tet (nahezu uninteressant - in der City gibt es keine Schafe) ------
	if (B_GetGreatestPetzCrime(self) == CRIME_SHEEPKILLER) 
	{
		AI_Output (self, hero, "Info_Mod_Pyrokar_PETZMASTER_11_18"); //Mir ist zu Ohren gekommen, du h�ttest dich an unseren Schafen vergriffen.
		AI_Output (self, hero, "Info_Mod_Pyrokar_PETZMASTER_11_19"); //Dir ist klar, dass ich das nicht durchgehen lassen kann.
		AI_Output (self, hero, "Info_Mod_Pyrokar_PETZMASTER_11_20"); //Du wirst eine Entsch�digung zahlen m�ssen!
		
		Pyrokar_Schulden = 100;
	};
	
	AI_Output (hero, self, "Info_Mod_Pyrokar_PETZMASTER_15_21"); //Wie viel?
	
	if (Pyrokar_Schulden > 1000)	{	Pyrokar_Schulden = 1000;	};
		
	B_Say_Gold (self, hero, Pyrokar_Schulden);
	
	Info_ClearChoices  	(Info_Mod_Pyrokar_PMSchulden);
	Info_ClearChoices  	(Info_Mod_Pyrokar_PETZMASTER);
	Info_AddChoice		(Info_Mod_Pyrokar_PETZMASTER,"Ich habe nicht genug Gold!",Info_Mod_Pyrokar_PETZMASTER_PayLater);
	if (Npc_HasItems(hero, itmi_gold) >= Pyrokar_Schulden)
	{
		Info_AddChoice 	(Info_Mod_Pyrokar_PETZMASTER,"Ich will die Strafe zahlen.",Info_Mod_Pyrokar_PETZMASTER_PayNow);
	};
};

func void Info_Mod_Pyrokar_PETZMASTER_PayNow()
{
	AI_Output (hero, self, "Info_Mod_Pyrokar_PETZMASTER_PayNow_15_00"); //Ich will die Strafe zahlen!
	B_GiveInvItems (hero, self, itmi_gold, Pyrokar_Schulden);
	AI_Output (self, hero, "Info_Mod_Pyrokar_PETZMASTER_PayNow_11_01"); //Gut! Ich werde daf�r sorgen, dass es jeder im Kloster erf�hrt - damit w�re dein Ruf einigerma�en wiederhergestellt.

	B_GrantAbsolution (LOC_MONASTERY);
	
	Pyrokar_Schulden			= 0;
	Pyrokar_LastPetzCounter 	= 0;
	Pyrokar_LastPetzCrime		= CRIME_NONE;
	
	Info_ClearChoices  	(Info_Mod_Pyrokar_PETZMASTER);
	Info_ClearChoices  	(Info_Mod_Pyrokar_PMSchulden);	//!!! Info-Choice wird noch von anderem Dialog angesteuert!
};

func void Info_Mod_Pyrokar_PETZMASTER_PayLater()
{
	AI_Output (hero, self, "Info_Mod_Pyrokar_PETZMASTER_PayLater_15_00"); //Ich habe nicht genug Gold!
	AI_Output (self, hero, "Info_Mod_Pyrokar_PETZMASTER_PayLater_11_01"); //Dann sieh zu, dass du das Gold so schnell wie m�glich beschaffst.
	AI_Output (self, hero, "Info_Mod_Pyrokar_PETZMASTER_PayLater_11_02"); //Und ich warne dich: Wenn du dir noch was zu schulden kommen l�sst, wird die Sache noch schlimmer f�r dich!
	
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
	description	= "Wer kann mir beibringen meine magische Kraft zu erh�hen?";
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
	AI_Output(hero, self, "Info_Mod_Pyrokar_Lehrer_15_00"); //Wer kann mir beibringen meine magische Kraft zu erh�hen?
	AI_Output(self, hero, "Info_Mod_Pyrokar_Lehrer_11_01"); //Ich kann dir beibringen deine magische Kraft zu steigern.

	Log_CreateTopic	(TOPIC_MOD_LEHRER_KLOSTER, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_LEHRER_KLOSTER, "Pyrokar kann mir beibringen meine MANA zu steigern.");
};

INSTANCE Info_Mod_Pyrokar_Lernen (C_INFO)
{
	npc		= Mod_551_KDF_Pyrokar_NW;
	nr		= 1;
	condition	= Info_Mod_Pyrokar_Lernen_Condition;
	information	= Info_Mod_Pyrokar_Lernen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Bring mir was bei.";
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
	AI_Output(hero, self, "Info_Mod_Pyrokar_Lernen_15_00"); //Bring mir was bei.

	Info_ClearChoices	(Info_Mod_Pyrokar_Lernen);

	Info_AddChoice		(Info_Mod_Pyrokar_Lernen, DIALOG_BACK, INFO_MOD_Pyrokar_Lernen_BACK);
	Info_AddChoice		(Info_Mod_Pyrokar_Lernen, B_BuildLearnString_New(PRINT_LearnMANA5	, B_GetLearnCostAttribute_New(hero, ATR_MANA_MAX), ATR_MANA_MAX)	,Info_Mod_Pyrokar_Lernen_5);
	Info_AddChoice		(Info_Mod_Pyrokar_Lernen, B_BuildLearnString_New(PRINT_LearnMANA1	, B_GetLearnCostAttribute(hero, ATR_MANA_MAX), ATR_MANA_MAX)		,Info_Mod_Pyrokar_Lernen_1);
};

FUNC VOID Info_Mod_Pyrokar_Lernen_BACK()
{
	if (hero.attribute[ATR_MANA_MAX]	>=	300)
	{
		AI_Output(self, hero, "Info_Mod_Pyrokar_Lernen_BACK_05_01"); //Deine magischen Kenntnisse sind jetzt so gut, dass ich dir nichts mehr beibringen kann.
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
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_Pyrokar_Pickpocket_Condition()
{
	C_Beklauen	(120, ItMi_Gold, 1500);
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
	B_Beklauen();
	Info_ClearChoices	(Info_Mod_Pyrokar_Pickpocket);
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
	AI_Output(self, hero, "Info_Mod_Pyrokar_EXIT_11_00"); //M�ge Innos deinen Weg erleuchten!

	AI_StopProcessInfos	(self);
};