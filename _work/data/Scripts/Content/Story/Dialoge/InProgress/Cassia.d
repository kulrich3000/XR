INSTANCE Info_Mod_Cassia_Hi (C_INFO)
{
	npc		= Mod_568_NONE_Cassia_NW;
	nr		= 1;
	condition	= Info_Mod_Cassia_Hi_Condition;
	information	= Info_Mod_Cassia_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cassia_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Cassia_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Cassia_Hi_17_00"); //Co Pan tutaj robi?
};

INSTANCE Info_Mod_Cassia_Irdorath (C_INFO)
{
	npc		= Mod_568_NONE_Cassia_NW;
	nr		= 1;
	condition	= Info_Mod_Cassia_Irdorath_Condition;
	information	= Info_Mod_Cassia_Irdorath_Info;
	permanent	= 0;
	important	= 0;
	description	= "Planuje podróz statkiem Paladina na wyspe zlego magika Xeres.";
};

FUNC INT Info_Mod_Cassia_Irdorath_Condition()
{
	if (Diebe_Dabei)
	&& (Mod_Irdorath == 0)
	&& (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_Irdorath))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_Irdorath_Info()
{
	AI_Output(hero, self, "Info_Mod_Cassia_Irdorath_15_00"); //Planuje podróz statkiem Paladina na wyspe zlego magika Xeres.
	AI_Output(hero, self, "Info_Mod_Cassia_Irdorath_15_01"); //Szukam z tej okazji kompetentnych ludzi dla mojego zespolu i chcialem zapytac, czy chcecie przyjechac?
	AI_Output(self, hero, "Info_Mod_Cassia_Irdorath_17_02"); //Otwierasz sie na statek Paladynów, zeglujesz przez szerokie morze i odwiedzasz eksklawe zlowieszczego maga?
	AI_Output(hero, self, "Info_Mod_Cassia_Irdorath_15_03"); //No cóz, to byla tylko kobieta....
	AI_Output(self, hero, "Info_Mod_Cassia_Irdorath_17_04"); //(zaklócenia) I bedziecie pod opieka miejscowych magów, a wiec i wasza misja z wszystkimi zaangazowanymi....
	AI_Output(self, hero, "Info_Mod_Cassia_Irdorath_17_05"); //Hmm, to nie bylaby zla okazja do opuszczenia ciemnego kanalu.
	AI_Output(self, hero, "Info_Mod_Cassia_Irdorath_17_06"); //Jesli tylko zechcecie, udam sie z wami na wyspe tego niebezpiecznego maga.
	AI_Output(self, hero, "Info_Mod_Cassia_Irdorath_17_07"); //Poniewaz niebezpieczenstwo równiez w tym przypadku obiecuje zysk.
};

INSTANCE Info_Mod_Cassia_Irdorath2 (C_INFO)
{
	npc		= Mod_568_NONE_Cassia_NW;
	nr		= 1;
	condition	= Info_Mod_Cassia_Irdorath2_Condition;
	information	= Info_Mod_Cassia_Irdorath2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Potem zostan czlonkiem mojej zalogi i dolacz do mnie w tej podrózy.";
};

FUNC INT Info_Mod_Cassia_Irdorath2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cassia_Irdorath))
	&& (Mod_Irdorath == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_Irdorath2_Info()
{
	AI_Output(hero, self, "Info_Mod_Cassia_Irdorath2_15_00"); //Potem zostan czlonkiem mojej zalogi i dolacz do mnie w tej podrózy.
	AI_Output(self, hero, "Info_Mod_Cassia_Irdorath2_17_01"); //Nic lepszego niz to. Bede czekal przy statku na wyjazd z naszej wycieczki.

	Mod_CrewCount += 1;

	Mod_CassiaDabei = 1;

	B_LogEntry	(TOPIC_MOD_HQ_CREW, "Z Cassia mam zdolnego i umiejetnego mistrza sztyletu na pokladzie, który wie, jak wytrzymac wiecej niz tylko jej skóre.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "SCHIFF");
};

INSTANCE Info_Mod_Cassia_Irdorath3 (C_INFO)
{
	npc		= Mod_568_NONE_Cassia_NW;
	nr		= 1;
	condition	= Info_Mod_Cassia_Irdorath3_Condition;
	information	= Info_Mod_Cassia_Irdorath3_Info;
	permanent	= 1;
	important	= 0;
	description	= "Przykro mi, ale wydaje mi sie, ze to zbyt wiele.";
};

FUNC INT Info_Mod_Cassia_Irdorath3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cassia_Irdorath2))
	&& (Mod_Irdorath == 0)
	&& (Mod_CassiaDabei == 1)
	&& (((Mod_JackDabei == 1)
	&& (Mod_CrewCount > 15))
	|| (Mod_CedricDabei == 1))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_Irdorath3_Info()
{
	AI_Output(hero, self, "Info_Mod_Cassia_Irdorath3_15_00"); //Przykro mi, ale wydaje mi sie, ze to zbyt wiele. Nie moge cie zabrac ze soba.
	AI_Output(self, hero, "Info_Mod_Cassia_Irdorath3_17_01"); //Zbyt zle. Wróce wtedy. Wiesz, gdzie mnie znalezc, jesli kiedykolwiek zostanie jakies miejsce.

	Mod_CassiaDabei = 0;

	Mod_CrewCount -= 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Cassia_Irdorath4 (C_INFO)
{
	npc		= Mod_568_NONE_Cassia_NW;
	nr		= 1;
	condition	= Info_Mod_Cassia_Irdorath4_Condition;
	information	= Info_Mod_Cassia_Irdorath4_Info;
	permanent	= 1;
	important	= 0;
	description	= "Moge dac ci przejazdzke.";
};

FUNC INT Info_Mod_Cassia_Irdorath4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cassia_Irdorath2))
	&& (Mod_Irdorath == 0)
	&& (Mod_CassiaDabei == 0)
	&& (Mod_CedricDabei == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_Irdorath4_Info()
{
	AI_Output(hero, self, "Info_Mod_Cassia_Irdorath4_15_00"); //Moge dac ci przejazdzke. Na statku znajduje sie pomieszczenie.
	AI_Output(self, hero, "Info_Mod_Cassia_Irdorath4_17_01"); //Bardzo dobrze, wróce do portu.

	Mod_CassiaDabei = 1;

	Mod_CrewCount += 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "SCHIFF");
};

INSTANCE Info_Mod_Cassia_Aufnahme (C_INFO)
{
	npc		= Mod_568_NONE_Cassia_NW;
	nr		= 1;
	condition	= Info_Mod_Cassia_Aufnahme_Condition;
	information	= Info_Mod_Cassia_Aufnahme_Info;
	permanent	= 0;
	important	= 0;
	description	= "No cóz, kim jestes?";
};

FUNC INT Info_Mod_Cassia_Aufnahme_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hanna_Meldor))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_Aufnahme_Info()
{
	AI_Output(hero, self, "Info_Mod_Cassia_Aufnahme_15_00"); //Na, wer bist du denn?
	AI_Output(self, hero, "Info_Mod_Cassia_Aufnahme_17_01"); //Ich? Ich bin die Chefin der Diebe. 
	AI_Output(hero, self, "Info_Mod_Cassia_Aufnahme_15_02"); //Hier bin ich also gelandet.
	AI_Output(self, hero, "Info_Mod_Cassia_Aufnahme_17_03"); //Wieso bist du hier? Hanna würde niemals einem Fremden Zutritt gewähren.
	AI_Output(hero, self, "Info_Mod_Cassia_Aufnahme_15_04"); //Sumpfkrautmeldor schickt mich, er meinte, ich sei ein anständiger Kerl und aus mir könnte noch was werden.
	AI_Output(self, hero, "Info_Mod_Cassia_Aufnahme_17_05"); //Hmm... Was hast du gemacht, um sein Vertrauen zu gewinnen? Normalerweise traut er niemandem über den Weg.
	AI_Output(hero, self, "Info_Mod_Cassia_Aufnahme_15_06"); //Ich hab ihm den Knast erspart, indem ich sein Krautpäckchen versteckt habe, bevor sich die Miliz ihn vorgeknöpft hat.
	AI_Output(self, hero, "Info_Mod_Cassia_Aufnahme_17_07"); //Das wird immer schlimmer. Sehr schwer heutzutage als Dieb über die Runden zu kommen.
	AI_Output(self, hero, "Info_Mod_Cassia_Aufnahme_17_08"); //Jeder schaut dem anderen auf die Finger und dann rennen sie wegen den kleinsten Verdächten direkt zu Lord Andre.
	AI_Output(hero, self, "Info_Mod_Cassia_Aufnahme_15_09"); //Was ist hier eigentlich los?
	AI_Output(self, hero, "Info_Mod_Cassia_Aufnahme_17_10"); //Bevor ich dir das erzähle muss ich wissen, ob ich dir vertrauen kann.
	AI_Output(self, hero, "Info_Mod_Cassia_Aufnahme_17_11"); //Willst du in meine Diebesgilde beitreten? Entscheide zwischen Reichtum und Tod.
	AI_Output(hero, self, "Info_Mod_Cassia_Aufnahme_15_12"); //Was? Du willst mich töten, wenn ich euch nicht beitrete?
	AI_Output(self, hero, "Info_Mod_Cassia_Aufnahme_17_13"); //Ja, mir wird keine andere Möglichkeit bleiben.

	Info_ClearChoices	(Info_Mod_Cassia_Aufnahme);
	
	if (Mod_AnzahlNebengilden < MaxNebengilden)
	&& (hero.guild != GIL_PAL)
	{
		Info_AddChoice	(Info_Mod_Cassia_Aufnahme, "Cóz, zawsze chcialem byc zwinnym zlodziejem.", Info_Mod_Cassia_Aufnahme_Ja);
	};
	Info_AddChoice	(Info_Mod_Cassia_Aufnahme, "Potem spróbuj!", Info_Mod_Cassia_Aufnahme_Nein);
};

FUNC VOID Info_Mod_Cassia_Aufnahme_Ja()
{
	AI_Output(hero, self, "Info_Mod_Cassia_Aufnahme_Ja_15_00"); //W porzadku, zawsze chcialem byc zwinnym zlodziejem.
	AI_Output(self, hero, "Info_Mod_Cassia_Aufnahme_Ja_17_01"); //Przyjmuje Pana serdecznie w nasze szeregi.
	AI_Output(self, hero, "Info_Mod_Cassia_Aufnahme_Ja_17_02"); //Jestes jeszcze daleko od zwinnego i dobrego zlodzieja. Najpierw musisz sie udowodnic przynoszac mi 2000 zlotych monet.
	AI_Output(self, hero, "Info_Mod_Cassia_Aufnahme_Ja_17_03"); //Naucze Cie kieszonkowania. Potem poznam cie z innymi zlodziejami.

	Mod_AnzahlNebengilden += 1;
	
	Spine_UnlockAchievement(SPINE_ACHIEVEMENT_54);
	Spine_UnlockAchievement(SPINE_ACHIEVEMENT_63);

	Diebe_Dabei = TRUE;

	B_GivePlayerXP	(100);

	B_Göttergefallen(3, 2);

	B_SetTopicStatus	(TOPIC_MOD_MELDOR_HANNA, LOG_SUCCESS);

	Log_CreateTopic	(TOPIC_MOD_DIEB_GOLD, LOG_MISSION);
	Log_CreateTopic	(TOPIC_MOD_NEBENGILDEN, LOG_NOTE);
	B_SetTopicStatus	(TOPIC_MOD_DIEB_GOLD, LOG_RUNNING);
	B_LogEntry_More	(TOPIC_MOD_NEBENGILDEN, TOPIC_MOD_DIEB_GOLD, "Jestem teraz jednym z z zlodziei.", "Cassia chce, abym przywiózl 2000 zlotych monet. Próbuje mnie nauczyc pickpocketingu.");

	Info_ClearChoices	(Info_Mod_Cassia_Aufnahme);
};

FUNC VOID Info_Mod_Cassia_Aufnahme_Nein()
{
	AI_Output(hero, self, "Info_Mod_Cassia_Aufnahme_Nein_15_00"); //Potem spróbuj!
	AI_Output(self, hero, "Info_Mod_Cassia_Aufnahme_Nein_17_01"); //Meldor popelnil blad i zamierzam go teraz naprawic.

	Info_ClearChoices	(Info_Mod_Cassia_Aufnahme);

	AI_StopProcessInfos	(self);

	B_SetTopicStatus	(TOPIC_MOD_MELDOR_HANNA, LOG_FAILED);

	B_Attack	(self, hero, AR_GuildEnemy, 0);
};

INSTANCE Info_Mod_Cassia_Goldmuenzen (C_INFO)
{
	npc		= Mod_568_NONE_Cassia_NW;
	nr		= 1;
	condition	= Info_Mod_Cassia_Goldmuenzen_Condition;
	information	= Info_Mod_Cassia_Goldmuenzen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Oto Twoje zloto.";
};

FUNC INT Info_Mod_Cassia_Goldmuenzen_Condition()
{
	if (Diebe_Dabei == TRUE)
	&& (Npc_HasItems(hero, ItMi_Gold) > 1999)
	&& (Npc_GetTalentSkill (hero, NPC_TALENT_PICKPOCKET) == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_Goldmuenzen_Info()
{
	AI_Output(hero, self, "Info_Mod_Cassia_Goldmuenzen_15_00"); //Oto Twoje zloto.

	B_GiveInvItems	(hero, self, ItMi_Gold, 2000);

	AI_Output(self, hero, "Info_Mod_Cassia_Goldmuenzen_17_01"); //Naprawde, jestes lepszy niz sie spodziewalem. Masz teraz prawo wiedziec wszystko. Prosze mnie zapytac.

	B_SetTopicStatus	(TOPIC_MOD_DIEB_GOLD, LOG_SUCCESS);

	B_GivePlayerXP	(250);

	B_Göttergefallen(3, 1);
};

INSTANCE Info_Mod_Cassia_WasNun (C_INFO)
{
	npc		= Mod_568_NONE_Cassia_NW;
	nr		= 1;
	condition	= Info_Mod_Cassia_WasNun_Condition;
	information	= Info_Mod_Cassia_WasNun_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co teraz?";
};

FUNC INT Info_Mod_Cassia_WasNun_Condition()
{
	if (Diebe_Dabei == TRUE)
	&& (Npc_KnowsInfo(hero, Info_Mod_Cassia_Goldmuenzen))
	&& (Kapitel >= 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_WasNun_Info()
{
	AI_Output(hero, self, "Info_Mod_Cassia_WasNun_15_00"); //Was nun?
	AI_Output(self, hero, "Info_Mod_Cassia_WasNun_17_01"); //Da du grad fragst, Attila wurde das letzte Mal von der Miliz geschnappt als er seinen Job machen wollte.
	AI_Output(self, hero, "Info_Mod_Cassia_WasNun_17_02"); //Wir müssen ihn da rausholen.
	AI_Output(hero, self, "Info_Mod_Cassia_WasNun_15_03"); //Und wie hast du dir das vorgestellt?
	AI_Output(self, hero, "Info_Mod_Cassia_WasNun_17_04"); //Wir schleusen dich in die Miliz ein. Du wirst Attila zur Flucht verhelfen und noch versuchen herauszufinden, wer die Miliz auf Meldor hetzt.
	AI_Output(hero, self, "Info_Mod_Cassia_WasNun_15_05"); //Was? Das soll ich machen? Wenn die mich ertappen werden sie mich töten.
	AI_Output(self, hero, "Info_Mod_Cassia_WasNun_17_06"); //Ich weiß. Du hast diesen Weg gewählt, aber du hast eine Chance, da rauszukommen, und ohne Attila wird die Situation immer unerträglicher.
	AI_Output(hero, self, "Info_Mod_Cassia_WasNun_15_07"); //Ich sehe ich hab schon wieder keine Wahl.
	AI_Output(self, hero, "Info_Mod_Cassia_WasNun_17_08"); //Du hattest die Wahl und hast dich für diesen Weg entschieden.
	AI_Output(hero, self, "Info_Mod_Cassia_WasNun_15_09"); //Und wie soll ich in die Miliz reinkommen?
	AI_Output(self, hero, "Info_Mod_Cassia_WasNun_17_10"); //Mach dir darüber keine Sorgen, wir haben schon Vorgeplant. Ramirez ist ein gesuchter Dieb. Wenn du ihnen Ramirez bringst, werden sie dich sofort aufnehmen.
	AI_Output(self, hero, "Info_Mod_Cassia_WasNun_17_11"); //Bloß das Problem wäre, dass du schnell handeln musst. Sie werden ihn bestimmt nicht lange leben lassen.
	AI_Output(hero, self, "Info_Mod_Cassia_WasNun_15_12"); //Wenn ich es nicht schaffe?
	AI_Output(self, hero, "Info_Mod_Cassia_WasNun_17_13"); //Dann wirst du schuldig gesprochen für Attila's und Ramirez' Tod.
	AI_Output(self, hero, "Info_Mod_Cassia_WasNun_17_14"); //Bevor wir noch mehr Zeit verschwenden mach dich bereit und komm später nochmal her.
	AI_Output(self, hero, "Info_Mod_Cassia_WasNun_17_15"); //Dann wirst du mit Ramirez in die Kaserne gehen.	

	Log_CreateTopic	(TOPIC_MOD_DIEB_ATTILA, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_DIEB_ATTILA, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_DIEB_ATTILA, "Cassia chce abym uwolnila Attyle z wiezienia. Dolaczam do milicji, przekazujac im Ramirez.");
};

INSTANCE Info_Mod_Cassia_WasNun_Ramirez (C_INFO)
{
	npc		= Mod_568_NONE_Cassia_NW;
	nr		= 1;
	condition	= Info_Mod_Cassia_WasNun_Ramirez_Condition;
	information	= Info_Mod_Cassia_WasNun_Ramirez_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jestem gotów do przyjecia zadania.";
};

FUNC INT Info_Mod_Cassia_WasNun_Ramirez_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cassia_WasNun))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_WasNun_Ramirez_Info()
{
	AI_Output(hero, self, "Info_Mod_Cassia_WasNun_Ramirez_15_00"); //Jestem gotów do przyjecia zadania.
	AI_Output(self, hero, "Info_Mod_Cassia_WasNun_Ramirez_17_01"); //Jeszcze raz mnie pan zaskoczy, ale niestety mamy problemy.
	AI_Output(self, hero, "Info_Mod_Cassia_WasNun_Ramirez_17_02"); //Ramirez nie ufa Tobie. Nie sadzi, ze jestes wystarczajaco dobry, aby wykonac te prace.
	AI_Output(self, hero, "Info_Mod_Cassia_WasNun_Ramirez_17_03"); //Moze powinienes z nim porozmawiac.

	B_LogEntry	(TOPIC_MOD_DIEB_ATTILA, "Chcialam rozpoczac prace Cassia, ale powiedziala mi, ze Ramirez mi nie zaufal. Mysle, ze najpierw bede musial go przekonac.");
};

INSTANCE Info_Mod_Cassia_RamirezDabei (C_INFO)
{
	npc		= Mod_568_NONE_Cassia_NW;
	nr		= 1;
	condition	= Info_Mod_Cassia_RamirezDabei_Condition;
	information	= Info_Mod_Cassia_RamirezDabei_Info;
	permanent	= 0;
	important	= 0;
	description	= "Udalo mi sie przekonac Ramireza....";
};

FUNC INT Info_Mod_Cassia_RamirezDabei_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ramirez_Bandenchef))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_RamirezDabei_Info()
{
	AI_Output(hero, self, "Info_Mod_Cassia_RamirezDabei_15_00"); //Przekonalem Ramireza, ze przejmujac prace w Attyle i wyciagajac gang w doku.
	AI_Output(self, hero, "Info_Mod_Cassia_RamirezDabei_17_01"); //Jesli udalo Ci sie skutecznie wykonywac swoja prace w Attili, nie bedziesz mial z tym problemu.
	AI_Output(hero, self, "Info_Mod_Cassia_RamirezDabei_15_02"); //Chcialem poinformowac panstwa, ze wychodzimy.
	AI_Output(self, hero, "Info_Mod_Cassia_RamirezDabei_17_03"); //Cóz, szczescie!

	B_LogEntry	(TOPIC_MOD_DIEB_ATTILA, "Powiedzialem Cassia. Potem przejdzmy do pracy. Ramirez pójdzie teraz do mnie do Pana Andre' a.");
};

INSTANCE Info_Mod_Cassia_Elvira (C_INFO)
{
	npc		= Mod_568_NONE_Cassia_NW;
	nr		= 1;
	condition	= Info_Mod_Cassia_Elvira_Condition;
	information	= Info_Mod_Cassia_Elvira_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cassia_Elvira_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ramirez_WelcomeBack))
	&& (Wld_GetDay()-1 > Mod_Diebe_Andre_Day)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Fuego_Unruhen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_Elvira_Info()
{
	AI_Output(self, hero, "Info_Mod_Cassia_Elvira_17_00"); //Ahhh, znów jestes.... tylko dla pracy.
	AI_Output(hero, self, "Info_Mod_Cassia_Elvira_15_01"); //Co o tym chodzi? Czy usuniecie kolejnej klatki piersiowej whorynie?
	AI_Output(self, hero, "Info_Mod_Cassia_Elvira_17_02"); //Nie, po ostatnim wielkim zamachu stanu musimy byc bardziej ostrozni przez jakis czas, poniewaz straznicy sa teraz bardziej uwazni..... przynajmniej na najblizsze lata.
	AI_Output(hero, self, "Info_Mod_Cassia_Elvira_15_03"); //Jaki jest zatem plan?
	AI_Output(self, hero, "Info_Mod_Cassia_Elvira_17_04"); //Cóz, troche wydobywamy nasze czucia.
	AI_Output(self, hero, "Info_Mod_Cassia_Elvira_17_05"); //Jesper odbyl mala wycieczke do Khoraty i spytal troche.
	AI_Output(self, hero, "Info_Mod_Cassia_Elvira_17_06"); //Miasto wydaje sie byc dosc zniszczone.... ale ludzie sa bardzo przesadni.
	AI_Output(self, hero, "Info_Mod_Cassia_Elvira_17_07"); //Zawsze trzeba zarobic duzo pieniedzy.
	AI_Output(hero, self, "Info_Mod_Cassia_Elvira_15_08"); //Chcesz, abym przestraszyl ich strasznymi historiami i wzial ich zloto?
	AI_Output(self, hero, "Info_Mod_Cassia_Elvira_17_09"); //Nie, nie musisz.... To wlasnie zrobili dla nas magicy ognia.
	AI_Output(self, hero, "Info_Mod_Cassia_Elvira_17_10"); //Zloto jest ladnie przechowywane w klatce piersiowej.
	AI_Output(self, hero, "Info_Mod_Cassia_Elvira_17_11"); //Niestety, jest to zabezpieczone dobrym zamkiem.
	AI_Output(self, hero, "Info_Mod_Cassia_Elvira_17_12"); //Jak dowiedzial sie Jesper, czarodziejka ognia Elvira nosi klucz.
	AI_Output(hero, self, "Info_Mod_Cassia_Elvira_15_13"); //Okay, i teraz ja zdejmuje.
	AI_Output(self, hero, "Info_Mod_Cassia_Elvira_17_14"); //Cóz, wlasnie o tym myslales.
	AI_Output(self, hero, "Info_Mod_Cassia_Elvira_17_15"); //Niezaleznie od tego, czy jest to kieszonkowe, czy tez w inny sposób.
	AI_Output(self, hero, "Info_Mod_Cassia_Elvira_17_16"); //Zapytanie wlasciwych osób o informacje nigdy nie jest niekorzystne. Ta cnota powinna byc zawsze pielegnowana przez zlodziejów.
	AI_Output(self, hero, "Info_Mod_Cassia_Elvira_17_17"); //W kazdym razie w klatce piersiowej znajduje sie okolo 1.000 zlotych monet i cenny posag Inno, którego z pewnoscia mozemy pozbyc sie za dobra cene.
	AI_Output(self, hero, "Info_Mod_Cassia_Elvira_17_18"); //Jak tylko masz wszystko, skontaktuj sie ze mna.

	Log_CreateTopic	(TOPIC_MOD_DIEB_ELVIRA, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_DIEB_ELVIRA, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_DIEB_ELVIRA, "Tym razem, za Khorata i czarodziejka ognia Elvira, pozwolono mi wziac klucz do zlotej skrzyni wybranego Innosa '. Cassia powiedziala, ze nie moze zranic sie pytac wlasciwych ludzi.");
};

INSTANCE Info_Mod_Cassia_Elvira2 (C_INFO)
{
	npc		= Mod_568_NONE_Cassia_NW;
	nr		= 1;
	condition	= Info_Mod_Cassia_Elvira2_Condition;
	information	= Info_Mod_Cassia_Elvira2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mam zawartosc klatki piersiowej.";
};

FUNC INT Info_Mod_Cassia_Elvira2_Condition()
{
	if (Npc_HasItems(hero, ItMi_InnosStatue_REL) == 1)
	&& (Npc_HasItems(hero, ItMi_Gold) >= 200)
	&& (Npc_KnowsInfo(hero, Info_Mod_Cassia_Elvira))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_Elvira2_Info()
{
	AI_Output(hero, self, "Info_Mod_Cassia_Elvira2_15_01"); //Mam zawartosc klatki piersiowej. Oto posag.....

	B_GiveInvItems	(hero, self, ItMi_InnosStatue_REL, 1);

	AI_Output(self, hero, "Info_Mod_Cassia_Elvira2_17_02"); //Bardzo ladne. A i zloto?

	Info_ClearChoices	(Info_Mod_Cassia_Elvira2);

	if (Npc_HasItems(hero, ItMi_Gold) >= 200)
	{
		Info_AddChoice	(Info_Mod_Cassia_Elvira2, "Niestety w srodku bylo tylko 200 sztuk zlota.", Info_Mod_Cassia_Elvira2_C);
	};
	if (Npc_HasItems(hero, ItMi_Gold) >= 500)
	{
		Info_AddChoice	(Info_Mod_Cassia_Elvira2, "Znalazlem w nim 500 sztuk zlota.", Info_Mod_Cassia_Elvira2_B);
	};
	if (Npc_HasItems(hero, ItMi_Gold) >= 1000)
	{
		Info_AddChoice	(Info_Mod_Cassia_Elvira2, "Oto 1000 sztuk zlota.", Info_Mod_Cassia_Elvira2_A);
	};
};

FUNC VOID Info_Mod_Cassia_Elvira2_C()
{
	AI_Output(hero, self, "Info_Mod_Cassia_Elvira2_C_15_00"); //Niestety w srodku bylo tylko 200 sztuk zlota.

	B_GiveInvItems	(hero, self, ItMi_Gold, 200);

	AI_Output(self, hero, "Info_Mod_Cassia_Elvira2_C_17_01"); //Próbujesz mnie oszukac? Spójrzmy na to, synowy chlopiec....

	if (Npc_HasItems(hero, ItMi_Gold) >= 800)
	{
		AI_Output(self, hero, "Info_Mod_Cassia_Elvira2_C_17_02"); //Uh-huh. Pomyslalem tak, ale.... worki zlota.
		AI_Output(self, hero, "Info_Mod_Cassia_Elvira2_C_17_03"); //Sama wyjme z tulowia pozostale monety.

		B_GiveInvItems	(hero, self, ItMi_Gold, 800);

		AI_Output(self, hero, "Info_Mod_Cassia_Elvira2_C_17_04"); //Oto Twoja nagroda.

		B_GiveInvItems	(self, hero, ItMi_Gold, 50);

		AI_Output(self, hero, "Info_Mod_Cassia_Elvira2_C_17_05"); //Za wasza zalosna próbe oszustwa mnie, naprawde zaslugujecie na nic wiecej.

		B_GivePlayerXP	(400);
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Cassia_Elvira2_C_17_06"); //Co, prawie nie ma w kieszeniach zlotej monety?
		AI_Output(self, hero, "Info_Mod_Cassia_Elvira2_C_17_07"); //Slaba kielbasa.... kiedy ostatni raz z powodzeniem kogos okradales?
		AI_Output(self, hero, "Info_Mod_Cassia_Elvira2_C_17_08"); //Oto kilka kawalków zlota, aby kupic kawalek zlego chleba na rynku.

		B_GiveInvItems	(self, hero, ItMi_Gold, 50);

		B_GivePlayerXP	(200);
	};

	B_SetTopicStatus	(TOPIC_MOD_DIEB_ELVIRA, LOG_SUCCESS);

	Info_ClearChoices	(Info_Mod_Cassia_Elvira2);
};

FUNC VOID Info_Mod_Cassia_Elvira2_B()
{
	AI_Output(hero, self, "Info_Mod_Cassia_Elvira2_B_15_00"); //Znalazlem w nim 500 sztuk zlota.

	B_GiveInvItems	(hero, self, ItMi_Gold, 500);

	AI_Output(self, hero, "Info_Mod_Cassia_Elvira2_B_17_01"); //Tylko 500 sztuk zlota? Hmm, wszystkie w prawo.
	AI_Output(self, hero, "Info_Mod_Cassia_Elvira2_B_17_02"); //Oto 200 sztuk zlota na Twoje problemy.

	B_GiveInvItems	(self, hero, ItMi_Gold, 200);

	B_GivePlayerXP	(500);

	B_SetTopicStatus	(TOPIC_MOD_DIEB_ELVIRA, LOG_SUCCESS);

	Info_ClearChoices	(Info_Mod_Cassia_Elvira2);
};

FUNC VOID Info_Mod_Cassia_Elvira2_A()
{
	AI_Output(hero, self, "Info_Mod_Cassia_Elvira2_A_15_00"); //Oto 1000 sztuk zlota.

	B_GiveInvItems	(hero, self, ItMi_Gold, 1000);

	AI_Output(self, hero, "Info_Mod_Cassia_Elvira2_A_17_01"); //Bardzo ladne. Otrzymasz 600 sztuk zlota za dobra robote, poniewaz posag przyniesie nam kilka monet z odpowiednim kupujacym......

	B_GiveInvItems	(self, hero, ItMi_Gold, 600);

	B_GivePlayerXP	(600);

	B_SetTopicStatus	(TOPIC_MOD_DIEB_ELVIRA, LOG_SUCCESS);

	Info_ClearChoices	(Info_Mod_Cassia_Elvira2);
};

INSTANCE Info_Mod_Cassia_Meldor (C_INFO)
{
	npc		= Mod_568_NONE_Cassia_NW;
	nr		= 1;
	condition	= Info_Mod_Cassia_Meldor_Condition;
	information	= Info_Mod_Cassia_Meldor_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co robi Meldor?";
};

FUNC INT Info_Mod_Cassia_Meldor_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cassia_Goldmuenzen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_Meldor_Info()
{
	AI_Output(hero, self, "Info_Mod_Cassia_Meldor_15_00"); //Co robi Meldor?
	AI_Output(self, hero, "Info_Mod_Cassia_Meldor_17_01"); //Meldor jest kupcem ziela bagiennego. W tej chwili jednak nie moze prowadzic dzialalnosci, poniewaz milicja czesto go zasypuje.
};

INSTANCE Info_Mod_Cassia_Mitglieder (C_INFO)
{
	npc		= Mod_568_NONE_Cassia_NW;
	nr		= 1;
	condition	= Info_Mod_Cassia_Mitglieder_Condition;
	information	= Info_Mod_Cassia_Mitglieder_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kto nalezy do cechu zlodziei?";
};

FUNC INT Info_Mod_Cassia_Mitglieder_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cassia_Goldmuenzen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_Mitglieder_Info()
{
	AI_Output(hero, self, "Info_Mod_Cassia_Mitglieder_15_00"); //Kto nalezy do cechu zlodziei?
	AI_Output(self, hero, "Info_Mod_Cassia_Mitglieder_17_01"); //Ramirez i ja jestesmy przywódcami gildii.
	AI_Output(self, hero, "Info_Mod_Cassia_Mitglieder_17_02"); //Do portu naleza: Cardif, Nagur, Meldor i Halvor.
	AI_Output(self, hero, "Info_Mod_Cassia_Mitglieder_17_03"); //Halvor moze kupic skradziony towar po znacznie lepszej cenie niz inni kupcy kiedykolwiek by go kupili.
	AI_Output(self, hero, "Info_Mod_Cassia_Mitglieder_17_04"); //Rengaru jest obecnie na rynku, aby ukrasc bogatym, a Joe jest w swiatyni placu.
	AI_Output(self, hero, "Info_Mod_Cassia_Mitglieder_17_05"); //Nasz szpieg, przebrany za ogrodnika, siedzi w górnej cwiartce szpiegowania na paladynach.
	AI_Output(self, hero, "Info_Mod_Cassia_Mitglieder_17_06"); //Hanna jest tylko naszym straznikiem, a nie prawdziwym zlodziejem.
	AI_Output(self, hero, "Info_Mod_Cassia_Mitglieder_17_07"); //I na koniec Attyla, nasz czlowiek, który naprawia nasz problem.
};

INSTANCE Info_Mod_Cassia_AndreVermaechtnis (C_INFO)
{
	npc		= Mod_568_NONE_Cassia_NW;
	nr		= 1;
	condition	= Info_Mod_Cassia_AndreVermaechtnis_Condition;
	information	= Info_Mod_Cassia_AndreVermaechtnis_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cassia_AndreVermaechtnis_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bilgot_AndreVermaechtnis))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_AndreVermaechtnis_Info()
{
	AI_Output(self, hero, "Info_Mod_Cassia_AndreVermaechtnis_17_00"); //Hej, spójrz, kto po prostu wchodzi tutaj.
	AI_Output(self, hero, "Info_Mod_Cassia_AndreVermaechtnis_17_01"); //Oczekiwalem Jespera.... nie z niepozadanymi goscmi.
	AI_Output(self, hero, "Info_Mod_Cassia_AndreVermaechtnis_17_02"); //Musze wiec wyrzucic cie z tego miejsca mieczem.

	AI_ReadyMeleeWeapon	(self);

	AI_Output(hero, self, "Info_Mod_Cassia_AndreVermaechtnis_15_03"); //Wiecej jak cala moja zaloga.....
	AI_Output(self, hero, "Info_Mod_Cassia_AndreVermaechtnis_17_04"); //O czym Pan mówi? (zaklócone)

	AI_StopProcessInfos	(self);

	AI_Teleport	(Mod_755_MIL_Wambo_NW, "NW_CITY_KANAL_25");
	B_StartOtherRoutine	(Mod_755_MIL_Wambo_NW, "DIEB");

	AI_Teleport	(Mod_744_MIL_Pablo_NW, "NW_CITY_KANAL_25");
	B_StartOtherRoutine	(Mod_744_MIL_Pablo_NW, "DIEB");

	AI_Teleport	(Mod_564_MIL_Boltan_NW, "NW_CITY_KANAL_25");
	B_StartOtherRoutine	(Mod_564_MIL_Boltan_NW, "DIEB");

	AI_Teleport	(Mod_596_MIL_Martin_NW, "NW_CITY_KANAL_25");
	B_StartOtherRoutine	(Mod_596_MIL_Martin_NW, "DIEB");
};

INSTANCE Info_Mod_Cassia_Lehrer (C_INFO)
{
	npc		= Mod_568_NONE_Cassia_NW;
	nr		= 1;
	condition	= Info_Mod_Cassia_Lehrer_Condition;
	information	= Info_Mod_Cassia_Lehrer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kto moze mnie nauczyc czegos innego?";
};

FUNC INT Info_Mod_Cassia_Lehrer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cassia_Goldmuenzen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_Lehrer_Info()
{
	AI_Output(hero, self, "Info_Mod_Cassia_Lehrer_15_00"); //Kto moze mnie nauczyc czegos innego?

	if (Mod_Schwierigkeit != 4)
	{
		AI_Output(self, hero, "Info_Mod_Cassia_Lehrer_17_01"); //No cóz, pomóglbym wam uczynic to inteligentniejszym.
	};

	if (Npc_GetTalentSkill (hero, NPC_TALENT_PICKLOCK) == FALSE)
	{
		AI_Output(self, hero, "Info_Mod_Cassia_Lehrer_17_02"); //Ramirez jest najlepszym chlopcem zamkiem. Zadna klatka piersiowa nie jest bezpieczna od szafek.
		AI_Output(self, hero, "Info_Mod_Cassia_Lehrer_17_03"); //Ale Diego moze równiez pokazac Ci, jak wybrac zamek.
	};

	if (Mod_Schwierigkeit != 4)
	{
		AI_Output(self, hero, "Info_Mod_Cassia_Lehrer_17_04"); //Attyla moze nauczyc Cie walki jedna reka.
	};

	if (Npc_GetTalentSkill (hero, NPC_TALENT_SNEAK) == FALSE)
	{
		AI_Output(self, hero, "Info_Mod_Cassia_Lehrer_17_05"); //Jesper jest mistrzem skradania sie.
	};

	if (Npc_GetTalentSkill (hero, NPC_TALENT_ACROBAT) == FALSE)
	{
		AI_Output(self, hero, "Info_Mod_Cassia_Lehrer_17_06"); //Rengaru jest mistrzem akrobatyki.
	};
};

INSTANCE Info_Mod_Cassia_Lernen   (C_INFO)
{
	npc         	= Mod_568_NONE_Cassia_NW;
	nr          	= 1;
	condition   	= Info_Mod_Cassia_Lernen_Condition;
	information 	= Info_Mod_Cassia_Lernen_Info;
	permanent   	= 1;
	important	= 0;
	description 	= "Pokaz mi kieszonkowe. (10 LP)";
};

FUNC INT Info_Mod_Cassia_Lernen_Condition()
{	
	Info_Mod_Cassia_Lernen.description = B_BuildLearnString("Pokaz mi kieszonkowe.", B_GetLearnCostTalent(hero, NPC_TALENT_PICKPOCKET, 1));

	if (Diebe_Dabei == TRUE)
	&& (Npc_GetTalentSkill (hero, NPC_TALENT_PICKPOCKET) == FALSE)
	{
		return 1;
	};
};
FUNC VOID Info_Mod_Cassia_Lernen_Info()
{
	AI_Output (hero, self, "Info_Mod_Cassia_Lernen_15_00");//Zeig mir den Taschendiebstahl.
	
	if (B_TeachThiefTalent (self, hero, NPC_TALENT_PICKPOCKET))
	{
		AI_Output (self, hero, "Info_Mod_Cassia_Lernen_17_01");//Wenn du jemandem die Taschen ausleeren willst, lenke ihn ab. Quatsch ihn einfach an, sprich mit ihm.
		AI_Output (self, hero, "Info_Mod_Cassia_Lernen_17_02");//Beim Gespräch guckst du dir ihn an. Achte auf ausgebeulte Taschen, Schmuck oder Lederschnüre am Hals. Und achte vor allem darauf, wie aufmerksam der Kerl ist.
		AI_Output (self, hero, "Info_Mod_Cassia_Lernen_17_03");//Einen betrunkenen Tagelöhner auszurauben, ist was anderes, als einen wachsamen Händler, klar?
		AI_Output (self, hero, "Info_Mod_Cassia_Lernen_17_04");//Wenn du dich natürlich ungeschickt anstellst, kriegt er's mit. Also immer ruhig bleiben.
	};
};

INSTANCE Info_Mod_Cassia_Lernen_DEX (C_INFO)
{
	npc		= Mod_568_NONE_Cassia_NW;
	nr		= 1;
	condition	= Info_Mod_Cassia_Lernen_DEX_Condition;
	information	= Info_Mod_Cassia_Lernen_DEX_Info;
	permanent	= 1;
	important	= 0;
	description	= "Naucz mnie czegos.";
};

FUNC INT Info_Mod_Cassia_Lernen_DEX_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cassia_Lehrer))
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_Lernen_DEX_Info()
{
	AI_Output(hero, self, "Info_Mod_Cassia_Lernen_DEX_15_00"); //Naucz mnie czegos.
	AI_Output(self, hero, "Info_Mod_Cassia_Lernen_DEX_17_01"); //Czego chcesz sie nauczyc?

	Info_ClearChoices	(Info_Mod_Cassia_Lernen_DEX);

	Info_AddChoice 		(Info_Mod_Cassia_Lernen_DEX, DIALOG_BACK, Info_Mod_Cassia_Lernen_DEX_BACK);
	Info_AddChoice		(Info_Mod_Cassia_Lernen_DEX, B_BuildLearnString_New(PRINT_LearnDEX5	, B_GetLearnCostAttribute_New(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Cassia_Lernen_DEX_Geschick_5);
	Info_AddChoice		(Info_Mod_Cassia_Lernen_DEX, B_BuildLearnString_New(PRINT_LearnDEX1	, B_GetLearnCostAttribute(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Cassia_Lernen_DEX_Geschick_1);
};

FUNC VOID Info_Mod_Cassia_Lernen_DEX_BACK()
{
	Info_ClearChoices (Info_Mod_Cassia_Lernen_DEX);
};

FUNC VOID Info_Mod_Cassia_Lernen_DEX_Geschick_5()
{
	B_TeachAttributePoints_New (self, hero, ATR_DEXTERITY, 5, 200);
	
	Info_ClearChoices	(Info_Mod_Cassia_Lernen_DEX);

	Info_AddChoice 		(Info_Mod_Cassia_Lernen_DEX, DIALOG_BACK, Info_Mod_Cassia_Lernen_DEX_BACK);
	Info_AddChoice		(Info_Mod_Cassia_Lernen_DEX, B_BuildLearnString_New(PRINT_LearnDEX5	, B_GetLearnCostAttribute_New(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Cassia_Lernen_DEX_Geschick_5);
	Info_AddChoice		(Info_Mod_Cassia_Lernen_DEX, B_BuildLearnString_New(PRINT_LearnDEX1	, B_GetLearnCostAttribute(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Cassia_Lernen_DEX_Geschick_1);
};

FUNC VOID Info_Mod_Cassia_Lernen_DEX_Geschick_1()
{
	B_TeachAttributePoints (self, hero, ATR_DEXTERITY, 1, 200);
	
	Info_ClearChoices	(Info_Mod_Cassia_Lernen_DEX);

	Info_AddChoice 		(Info_Mod_Cassia_Lernen_DEX, DIALOG_BACK, Info_Mod_Cassia_Lernen_DEX_BACK);
	Info_AddChoice		(Info_Mod_Cassia_Lernen_DEX, B_BuildLearnString_New(PRINT_LearnDEX5	, B_GetLearnCostAttribute_New(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Cassia_Lernen_DEX_Geschick_5);
	Info_AddChoice		(Info_Mod_Cassia_Lernen_DEX, B_BuildLearnString_New(PRINT_LearnDEX1	, B_GetLearnCostAttribute(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Cassia_Lernen_DEX_Geschick_1);
};

INSTANCE Info_Mod_Cassia_Pickpocket (C_INFO)
{
	npc		= Mod_568_NONE_Cassia_NW;
	nr		= 1;
	condition	= Info_Mod_Cassia_Pickpocket_Condition;
	information	= Info_Mod_Cassia_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_180_Female;
};

FUNC INT Info_Mod_Cassia_Pickpocket_Condition()
{
	C_Beklauen	(170, ItMi_Gold, 110);
};

FUNC VOID Info_Mod_Cassia_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Cassia_Pickpocket);

	Info_AddChoice	(Info_Mod_Cassia_Pickpocket, DIALOG_BACK, Info_Mod_Cassia_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Cassia_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Cassia_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Cassia_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Cassia_Pickpocket);
};

FUNC VOID Info_Mod_Cassia_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Cassia_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Cassia_Pickpocket);

		Info_AddChoice	(Info_Mod_Cassia_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Cassia_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Cassia_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Cassia_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Cassia_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Cassia_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Cassia_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Cassia_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Cassia_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Cassia_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Cassia_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Cassia_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Cassia_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Cassia_EXIT (C_INFO)
{
	npc		= Mod_568_NONE_Cassia_NW;
	nr		= 1;
	condition	= Info_Mod_Cassia_EXIT_Condition;
	information	= Info_Mod_Cassia_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Cassia_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Cassia_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
