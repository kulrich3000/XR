INSTANCE Info_Mod_Elena_Hi (C_INFO)
{
	npc		= Mod_783_BAU_Elena_NW;
	nr		= 1;
	condition	= Info_Mod_Elena_Hi_Condition;
	information	= Info_Mod_Elena_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hi.";
};

FUNC INT Info_Mod_Elena_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Elena_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Elena_Hi_15_00"); //Hi, wie gehts?
	AI_Output(self, hero, "Info_Mod_Elena_Hi_16_01"); //Mir gehts gut. Was willst du von mir?
	AI_Output(hero, self, "Info_Mod_Elena_Hi_15_02"); //Was hast du denn f�r mich?
	AI_Output(self, hero, "Info_Mod_Elena_Hi_16_03"); //Ich k�nnte dir ein paar Sachen verkaufen. Mehr ist aber nicht drin.
	
	Log_CreateTopic	(TOPIC_MOD_HAENDLER_ONAR, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_HAENDLER_ONAR, "Elena kann mir ein paar Waren verkaufen.");
};

INSTANCE Info_Mod_Elena_Hexenparty_01 (C_INFO)
{
	npc		= Mod_783_BAU_Elena_NW;
	nr		= 1;
	condition	= Info_Mod_Elena_Hexenparty_01_Condition;
	information	= Info_Mod_Elena_Hexenparty_01_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Elena_Hexenparty_01_Condition()
{
	if (Mod_TrfWoman == 1)
	|| ((Mod_WM_Boeden == 13)
	&& (Mod_WM_Boeden == 14))
	&& (Npc_GetDistToWP(hero, "NW_BIGFARM_FOREST_08") < 1000)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Elena_Hexenparty_01_Info()
{
	AI_Output(self, hero, "Info_Mod_Elena_Hexenparty_01_16_00"); //Was machst du hier? Ich sp�re magische Bef�higung in dir und die Restaura eines m�chtigen D�mons.
	AI_Output(self, hero, "Info_Mod_Elena_Hexenparty_01_16_01"); //Du scheinst kein gew�hnliches Bauernweib zu sein, sonst h�tten wir dich schon zum Teufel gejagt. Also sprich!

	B_RemoveNpc	(Mod_7198_HEX_AttraktiveFrau_NW);
	
	Info_ClearChoices	(Info_Mod_Elena_Hexenparty_01);

	Info_AddChoice	(Info_Mod_Elena_Hexenparty_01, "Ich will eurer Schwesternschaft beitreten.", Info_Mod_Elena_Hexenparty_01_C);
	Info_AddChoice	(Info_Mod_Elena_Hexenparty_01, "Ich wollte mich nur mal umsehen.", Info_Mod_Elena_Hexenparty_01_B);
	Info_AddChoice	(Info_Mod_Elena_Hexenparty_01, "Ich bin hier um euch zu vernichten.", Info_Mod_Elena_Hexenparty_01_A);
};

FUNC VOID Info_Mod_Elena_Hexenparty_01_C()
{
	AI_Output(hero, self, "Info_Mod_Elena_Hexenparty_01_C_15_00"); //Ich will eurer Schwesternschaft beitreten.
	AI_Output(self, hero, "Info_Mod_Elena_Hexenparty_01_C_16_01"); //(lacht) Eine neue Anw�rterin f�r unseren Bund.
	AI_Output(self, hero, "Info_Mod_Elena_Hexenparty_01_C_16_02"); //(ernster) In der Tat, deine magischen F�higkeiten sprechen f�r dich, werfen aber auch einige Fragen auf: Wo hast du es erlernt?
	
	Info_ClearChoices	(Info_Mod_Elena_Hexenparty_01);

	Info_AddChoice	(Info_Mod_Elena_Hexenparty_01, "Ich kann mich nicht mehr erinnern.", Info_Mod_Elena_Hexenparty_01_F);
	Info_AddChoice	(Info_Mod_Elena_Hexenparty_01, "Ich habe es mich selbst gelehrt.", Info_Mod_Elena_Hexenparty_01_E);
	Info_AddChoice	(Info_Mod_Elena_Hexenparty_01, "Ein Wassermagier lehrte sie mich.", Info_Mod_Elena_Hexenparty_01_D);
};

FUNC VOID Info_Mod_Elena_Hexenparty_01_B()
{
	AI_Output(hero, self, "Info_Mod_Elena_Hexenparty_01_B_15_00"); //Ich wollte mich nur mal umsehen.
	AI_Output(self, hero, "Info_Mod_Elena_Hexenparty_01_B_16_01"); //Du t�richtes Ding willst mich wohl zum Besten geben. Sag mir auf der Stelle, was du hier suchst, und �berlege wohl, was du sagst.
	
	Info_ClearChoices	(Info_Mod_Elena_Hexenparty_01);

	Info_AddChoice	(Info_Mod_Elena_Hexenparty_01, "Ich will eurer Schwesternschaft beitreten.", Info_Mod_Elena_Hexenparty_01_C);
	Info_AddChoice	(Info_Mod_Elena_Hexenparty_01, "Ich bin hier um euch zu vernichten.", Info_Mod_Elena_Hexenparty_01_A);
};

FUNC VOID Info_Mod_Elena_Hexenparty_01_A()
{
	AI_Output(hero, self, "Info_Mod_Elena_Hexenparty_01_A_15_00"); //Ich bin hier um euch zu vernichten.
	AI_Output(self, hero, "Info_Mod_Elena_Hexenparty_01_A_16_01"); //Was?! Du N�rrin hast wohl keine Vorstellung, mit wem du dich hier messen willst.
	AI_Output(self, hero, "Info_Mod_Elena_Hexenparty_01_A_16_02"); //Los Schwestern, zeigt ihr, wie wir mit ungebetenen G�sten verfahren.
	
	Info_ClearChoices	(Info_Mod_Elena_Hexenparty_01);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_Kill, 0);
	B_Attack	(Mod_104_BAU_Rega_NW, hero, AR_Kill, 0);
	B_Attack	(Mod_1403_BAU_Baeuerin_NW, hero, AR_Kill, 0);

	Mod_HexenAttack = 1;
};

FUNC VOID Info_Mod_Elena_Hexenparty_01_G()
{
	AI_Output(self, hero, "Info_Mod_Elena_Hexenparty_01_G_16_00"); //Gut, wir wollen dir eine Chance geben. Wenn du dich unserer Schwesternschaft als w�rdig erwiesen hast, werden wir dich in unsere Gemeinschaft aufnehmen.
	AI_Output(hero, self, "Info_Mod_Elena_Hexenparty_01_G_15_01"); //Was soll ich tun?
	AI_Output(self, hero, "Info_Mod_Elena_Hexenparty_01_G_16_02"); //Dieser Pepe ist uns schon seit langem ein Dorn im Auge. Er steht viel zu nah an unserem Versteck.
	AI_Output(self, hero, "Info_Mod_Elena_Hexenparty_01_G_16_03"); //Wir werden ihm einen kleinen Besuch abstatten ... das hei�t, du wirst in Wolfsgestalt erscheinen, seine Herde dezimieren und wir werden dieses Mal nur zusehen.
	AI_Output(self, hero, "Info_Mod_Elena_Hexenparty_01_G_16_04"); //Das sollte reichen, um ihn zuk�nftig vom Wald fernzuhalten, damit wir unser Werk des Chaos ungest�rt fortsetzen k�nnen.
	AI_Output(self, hero, "Info_Mod_Elena_Hexenparty_01_G_16_05"); //Nimm dazu diese verzauberte Wolfshaut, lege sie an und Folge uns.

	B_GiveInvItems	(self, hero, ItRu_Verwandlungsfell, 1);

	AI_Output(self, hero, "Info_Mod_Elena_Hexenparty_01_G_16_06"); //Wenn du willst kann ich dich auch noch lehren, deine tierische Form geschickter einzusetzen, deine aggressiven Triebe zu z�hmen, Kadaver zu fressen und andere W�lfe und Warg dir folgen zu lassen.
	AI_Output(self, hero, "Info_Mod_Elena_Hexenparty_01_G_16_07"); //Au�erdem w�rdest du deine Tiergestalt an den Erfahrungen teilhaben lassen, die du als Mensche machst und so als Wolf an St�rke und Macht mit der Zeit gewinnen.
	
	Info_ClearChoices	(Info_Mod_Elena_Hexenparty_01);

	if (hero.lp >= 3)
	{
		Info_AddChoice	(Info_Mod_Elena_Hexenparty_01, "Bring mir bei meine tierische Gestalt besser zu kontrollieren. (3 Lernpunkte)", Info_Mod_Elena_Hexenparty_01_H);
	};

	Info_AddChoice	(Info_Mod_Elena_Hexenparty_01, "Lass uns aufbrechen.", Info_Mod_Elena_Hexenparty_01_I);
};

FUNC VOID Info_Mod_Elena_Hexenparty_01_F()
{
	AI_Output(hero, self, "Info_Mod_Elena_Hexenparty_01_F_15_00"); //Ich kann mich nicht mehr erinnern.
	AI_Output(self, hero, "Info_Mod_Elena_Hexenparty_01_F_16_01"); //Hmm, hat ihr Ged�chtnis verloren. Die Begegnung mit einem D�mon k�nnte nat�rlich so etwas hervorrufen.
	
	Info_Mod_Elena_Hexenparty_01_G();
};

FUNC VOID Info_Mod_Elena_Hexenparty_01_E()
{
	AI_Output(hero, self, "Info_Mod_Elena_Hexenparty_01_E_15_00"); //Ich habe es mich selbst gelehrt.
	AI_Output(self, hero, "Info_Mod_Elena_Hexenparty_01_E_16_01"); //Beeindruckend, du musst Hexenblut in dir haben.
	
	Info_Mod_Elena_Hexenparty_01_G();
};

FUNC VOID Info_Mod_Elena_Hexenparty_01_D()
{
	AI_Output(hero, self, "Info_Mod_Elena_Hexenparty_01_D_15_00"); //Ein Wassermagier lehrte sie mich.
	AI_Output(self, hero, "Info_Mod_Elena_Hexenparty_01_D_16_01"); //Du willst meiner spotten?! Weidet sie aus, Schwestern ...
	
	Info_ClearChoices	(Info_Mod_Elena_Hexenparty_01);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_Kill, 0);
	B_Attack	(Mod_104_BAU_Rega_NW, hero, AR_Kill, 0);
	B_Attack	(Mod_1403_BAU_Baeuerin_NW, hero, AR_Kill, 0);

	Mod_HexenAttack = 1;
};

FUNC VOID Info_Mod_Elena_Hexenparty_01_I()
{
	AI_Output(hero, self, "Info_Mod_Elena_Hexenparty_01_I_15_00"); //Lass uns aufbrechen.

	B_LogEntry	(TOPIC_MOD_ADANOS_UNHEIL, "Unglaublich. Die Hexen sind doch tats�chlich auf meine Tarnung hereingefallen. Ich soll mir jetzt die Wolfshaut anlegen und mit meinen 'Schwestern' Pepe verscheuchen.");
	
	Info_ClearChoices	(Info_Mod_Elena_Hexenparty_01);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Elena_Hexenparty_01_H()
{
	AI_Output(hero, self, "Info_Mod_Elena_Hexenparty_01_H_15_00"); //Bring mir bei meine tierische Gestalt besser zu kontrollieren.

	hero.lp -= 3;

	Mod_WM_Tiergestalt = 1;
	
	Info_Mod_Elena_Hexenparty_01_I();
};

INSTANCE Info_Mod_Elena_Hexenparty_07 (C_INFO)
{
	npc		= Mod_783_BAU_Elena_NW;
	nr		= 1;
	condition	= Info_Mod_Elena_Hexenparty_07_Condition;
	information	= Info_Mod_Elena_Hexenparty_07_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Elena_Hexenparty_07_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Elena_Hexenparty_01))
	&& (Mod_WM_IsWarg == 1)
	&& (Mod_TrfWoman == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Elena_Hexenparty_07_Info()
{
	AI_Output(self, hero, "Info_Mod_Elena_Hexenparty_07_16_00"); //Gut, und nun folge uns.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOPEPE");
	B_StartOtherRoutine	(Mod_104_BAU_Rega_NW, "TOPEPE");
	B_StartOtherRoutine	(Mod_1403_BAU_Baeuerin_NW, "TOPEPE");
};

INSTANCE Info_Mod_Elena_Hexenparty_08 (C_INFO)
{
	npc		= Mod_783_BAU_Elena_NW;
	nr		= 1;
	condition	= Info_Mod_Elena_Hexenparty_08_Condition;
	information	= Info_Mod_Elena_Hexenparty_08_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Elena_Hexenparty_08_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Elena_Hexenparty_07))
	&& (Mod_WM_IsWarg == 1)
	&& (Mod_TrfWoman == 1)
	&& (Npc_GetDistToWP(self, "NW_BIGFARM_FOREST_03_NAVIGATION3") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Elena_Hexenparty_08_Info()
{
	AI_Output(self, hero, "Info_Mod_Elena_Hexenparty_08_16_00"); //Na dann los, du wei�t, was du zu tun hast.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Elena_Hexenparty_09 (C_INFO)
{
	npc		= Mod_783_BAU_Elena_NW;
	nr		= 1;
	condition	= Info_Mod_Elena_Hexenparty_09_Condition;
	information	= Info_Mod_Elena_Hexenparty_09_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Elena_Hexenparty_09_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Elena_Hexenparty_08))
	&& (Mod_WM_IsWarg == 1)
	&& (Mod_TrfWoman == 1)
	&& (Npc_GetDistToWP(self, "NW_BIGFARM_SHEEP2_02") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Elena_Hexenparty_09_Info()
{
	AI_Output(self, hero, "Info_Mod_Elena_Hexenparty_09_16_00"); //Hast du dich sch�n am Blut der Schafe gelabt? Keine schlechte Arbeit ... f�r eine beginnende Hexe.

	AI_StopProcessInfos	(self);

	Mod_WM_HexenVerwandlung = 1;
};

INSTANCE Info_Mod_Elena_Hexenparty_02 (C_INFO)
{
	npc		= Mod_783_BAU_Elena_NW;
	nr		= 1;
	condition	= Info_Mod_Elena_Hexenparty_02_Condition;
	information	= Info_Mod_Elena_Hexenparty_02_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Elena_Hexenparty_02_Condition()
{
	if (Mod_WM_HexenVerwandlung == 2)
	&& (Mod_TrfWoman == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Elena_Hexenparty_02_Info()
{
	AI_Output(self, hero, "Info_Mod_Elena_Hexenparty_02_16_00"); //Das war doch eine erbauliche, wie auch vergn�gsame Erfahrung meine Schwester, meinst du nicht auch?

	B_GivePlayerXP	(200);

	B_StartOtherRoutine	(self, "HEXE");
	B_StartOtherRoutine	(Mod_104_BAU_Rega_NW, "HEXE");
	B_StartOtherRoutine	(Mod_1403_BAU_Baeuerin_NW, "HEXE");

	B_StartOtherRoutine	(Mod_793_BAU_Pepe_NW, "SCHAFETOT");
	
	Info_ClearChoices	(Info_Mod_Elena_Hexenparty_02);

	Info_AddChoice	(Info_Mod_Elena_Hexenparty_02, "Wei� nicht.", Info_Mod_Elena_Hexenparty_02_B);
	Info_AddChoice	(Info_Mod_Elena_Hexenparty_02, "Ja, gewiss.", Info_Mod_Elena_Hexenparty_02_A);
};

FUNC VOID Info_Mod_Elena_Hexenparty_02_C()
{
	AI_Output(self, hero, "Info_Mod_Elena_Hexenparty_02_C_16_00"); //Wie dem auch sei, ich hoffe du bist bereit, dein Werk der Zerst�rung und Zersetzung fortzuf�hren.
	AI_Output(self, hero, "Info_Mod_Elena_Hexenparty_02_C_16_01"); //Nimm diese Spruchrolle des Hagelschauers, warte bis ein Bauer und die B�uerin auf dem Feld vor Onar�s Geh�ft arbeiten und wende sie dort an.

	B_GiveInvItems	(self, hero, ItSc_Hagel, 1);

	B_LogEntry	(TOPIC_MOD_ADANOS_UNHEIL, "Diesmal haben mir meine Schwestern aufgetragen die Hagelspruchrolle bei dem Bauer und der B�uerin auf dem Feld vor Onar�s Hof anzuwenden.");
	
	Info_ClearChoices	(Info_Mod_Elena_Hexenparty_02);
};

FUNC VOID Info_Mod_Elena_Hexenparty_02_B()
{
	AI_Output(hero, self, "Info_Mod_Elena_Hexenparty_02_B_15_00"); //Wei� nicht.
	AI_Output(self, hero, "Info_Mod_Elena_Hexenparty_02_B_16_01"); //Aber, aber. Du musst noch viel lernen.
	
	Info_Mod_Elena_Hexenparty_02_C();
};

FUNC VOID Info_Mod_Elena_Hexenparty_02_A()
{
	AI_Output(hero, self, "Info_Mod_Elena_Hexenparty_02_A_15_00"); //Ja, gewiss.
	AI_Output(self, hero, "Info_Mod_Elena_Hexenparty_02_A_16_01"); //Das will ich meinen.
	
	Info_Mod_Elena_Hexenparty_02_C();
};

INSTANCE Info_Mod_Elena_Hexenparty_03 (C_INFO)
{
	npc		= Mod_783_BAU_Elena_NW;
	nr		= 1;
	condition	= Info_Mod_Elena_Hexenparty_03_Condition;
	information	= Info_Mod_Elena_Hexenparty_03_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ich habe die Spruchrolle angewendet.";
};

FUNC INT Info_Mod_Elena_Hexenparty_03_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Elena_Hexenparty_02))
	&& (Mod_WM_HexenHagel > 0)
	&& (Mod_TrfWoman == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Elena_Hexenparty_03_Info()
{
	AI_Output(hero, hero, "Info_Mod_Elena_Hexenparty_03_15_00"); //Ich habe die Spruchrolle angewendet.

	if (Mod_WM_HexenHagel == 1)
	{
		AI_Output(self, hero, "Info_Mod_Elena_Hexenparty_03_16_01"); //Ausgezeichnet. Das hat wieder f�r zauberhafte Unruhe auf dem Hof gesorgt.

		B_GivePlayerXP	(250);
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Elena_Hexenparty_03_16_02"); //Aber ohne die gew�nschte Wirkung. Sehr entt�uschend, meine Schwester.
		AI_Output(self, hero, "Info_Mod_Elena_Hexenparty_03_16_03"); //Wenn du dir noch mehr Fehler dieser Art erlaubst, werden wir dich irgendwann noch f�r deine Unf�higkeit umbringen m�ssen.
	};

	AI_Output(self, hero, "Info_Mod_Elena_Hexenparty_03_16_04"); //So, bevor wir dich in unsere Schwesternschaft aufnehmen, musst du noch die Macht jener Zauber erlernen, die ihre Opfer beeinflussen.
	AI_Output(self, hero, "Info_Mod_Elena_Hexenparty_03_16_05"); //Nimm diese Spruchrolle der Beeinflussung, wende sie an und sprich danach mit Torlof.

	B_GiveInvItems	(self, hero, ItSc_Beeinflussung, 1);

	AI_Output(self, hero, "Info_Mod_Elena_Hexenparty_03_16_06"); //Bring ihn dazu sich unm�glich vor den anderen S�ldnern zu verhalten.

	B_LogEntry	(TOPIC_MOD_ADANOS_UNHEIL, "Nun soll ich noch Torlof mit der Spruchrolle der Beeinflussung dazu bringen unm�gliche Dinge zu tun.");
};

INSTANCE Info_Mod_Elena_Hexenparty_04 (C_INFO)
{
	npc		= Mod_783_BAU_Elena_NW;
	nr		= 1;
	condition	= Info_Mod_Elena_Hexenparty_04_Condition;
	information	= Info_Mod_Elena_Hexenparty_04_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Elena_Hexenparty_04_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Elena_Hexenparty_03))
	&& (Npc_KnowsInfo(hero, Info_Mod_Torlof_Hexen))
	&& (Mod_TrfWoman == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Elena_Hexenparty_04_Info()
{
	AI_Output(self, hero, "Info_Mod_Elena_Hexenparty_04_16_00"); //Das hast du gro�artig gemacht. Es h�tte jeder von uns zur Ehre gereicht. Was f�r ein Spa�.
	AI_Output(self, hero, "Info_Mod_Elena_Hexenparty_04_16_01"); //Damit hast du der Moral der S�ldner geschadet und ein w�rdiges Zeugnis deiner magischen K�nste, wie auch deines listenreichen Verstandes abgegeben.
	AI_Output(self, hero, "Info_Mod_Elena_Hexenparty_04_16_02"); //Nun bist du bereit eine von uns zu werden. Komm bei Nacht in unser Versteck.

	B_GivePlayerXP	(250);

	B_LogEntry	(TOPIC_MOD_ADANOS_UNHEIL, "Verquer. Meine Schwestern ... �hh, die Hexen wollen mich doch tats�chlich in ihre Gemeinschaft aufnehmen. Bei Nacht soll ich sie in der H�hle aufsuchen.");
};

INSTANCE Info_Mod_Elena_Hexenparty_05 (C_INFO)
{
	npc		= Mod_783_BAU_Elena_NW;
	nr		= 1;
	condition	= Info_Mod_Elena_Hexenparty_05_Condition;
	information	= Info_Mod_Elena_Hexenparty_05_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Elena_Hexenparty_05_Condition()
{
	if (Mod_TrfWoman == 1)
	&& (Npc_GetDistToWP(hero, "NW_BIGFARM_FOREST_08") < 1000)
	&& (Npc_KnowsInfo(hero, Info_Mod_Elena_Hexenparty_04))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Elena_Hexenparty_05_Info()
{
	AI_Output(self, hero, "Info_Mod_Elena_Hexenparty_05_16_00"); //So, Schwestern. Nun haben wir uns hier versammelt einer neuen Anw�rterin ihre d�monische Weihe zu geben.
	AI_Output(self, hero, "Info_Mod_Elena_Hexenparty_05_16_01"); //(zum Helden) Ja, meine Schwester, dir werden sich nun ganz neue T�ren �ffnen, die Macht deine Umgebung zu beeinflussen und zu verheeren.
	AI_Output(self, hero, "Info_Mod_Elena_Hexenparty_05_16_02"); //Ohne Zweifel hast du schon die Unget�me bemerkt, die in der Umgebung erstanden sind. Sie stehen zum gro�en Teil unter unserer Kontrolle.
	AI_Output(self, hero, "Info_Mod_Elena_Hexenparty_05_16_03"); //Unsere Verb�ndeten des Blutkults m�gen zwar die Macht absorbiert haben, um diese zu erschaffen. Ohne unseren Einfluss k�nnten sie diese Kreaturen jedoch nie unter solcher Kontrolle halten.
	
	Info_ClearChoices	(Info_Mod_Elena_Hexenparty_05);

	Info_AddChoice	(Info_Mod_Elena_Hexenparty_05, "Lass uns mit dem Ritual beginnen.", Info_Mod_Elena_Hexenparty_05_B);
	Info_AddChoice	(Info_Mod_Elena_Hexenparty_05, "Blutkult?", Info_Mod_Elena_Hexenparty_05_A);
};

FUNC VOID Info_Mod_Elena_Hexenparty_05_C()
{
	AI_Output(self, hero, "Info_Mod_Elena_Hexenparty_05_C_16_00"); //Schwestern, lasst uns nun in Meditation verfallen, unsere Kr�fte sammeln, um ein neues Mitglied in unsere Gemeinschaft aufzunehmen und ihr den Teil d�monischer Macht zukommen zu lassen, der ihr zusteht.
	
	Info_ClearChoices	(Info_Mod_Elena_Hexenparty_05);

	AI_StopProcessInfos	(self);

	Mod_WM_Hexenritual = 1;
};

FUNC VOID Info_Mod_Elena_Hexenparty_05_B()
{
	AI_Output(hero, self, "Info_Mod_Elena_Hexenparty_05_B_15_00"); //Lass uns mit dem Ritual beginnen.
	
	Info_Mod_Elena_Hexenparty_05_C();
};

FUNC VOID Info_Mod_Elena_Hexenparty_05_A()
{
	AI_Output(hero, self, "Info_Mod_Elena_Hexenparty_05_A_15_00"); //Blutkult?
	AI_Output(self, hero, "Info_Mod_Elena_Hexenparty_05_A_16_01"); //Eine uralte Bruderschaft. Einer ihrer Clans hat vor einiger Zeit Kontakt zu uns aufgenommen und das B�ndnis mit uns geschlossen, auf dass wir  mit vereinten Kr�ften alles ins Chaos st�rzen.
	AI_Output(self, hero, "Info_Mod_Elena_Hexenparty_05_A_16_02"); //Sie haben ihr Refugium in der N�he des Weidenplateaus.

	if (Npc_KnowsInfo(hero, Info_Mod_AttraktiveFrau_Sex))
	{
		AI_Output(self, hero, "Info_Mod_Elena_Hexenparty_05_A_16_03"); //Ja, die Taverne beim Weidenplateau ... da habe ich die k�stliche Lebenskraft eines Mannes in mich aufgesogen, der von besonderer Art war.
		AI_Output(self, hero, "Info_Mod_Elena_Hexenparty_05_A_16_04"); //Wie dem auch sei, beginnen wir mit dem Ritual.
	};

	Mod_WM_Blutkultinfos = 1;
	
	Info_Mod_Elena_Hexenparty_05_C();
};

INSTANCE Info_Mod_Elena_Hexenparty_06 (C_INFO)
{
	npc		= Mod_783_BAU_Elena_NW;
	nr		= 1;
	condition	= Info_Mod_Elena_Hexenparty_06_Condition;
	information	= Info_Mod_Elena_Hexenparty_06_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Elena_Hexenparty_06_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Elena_Hexenparty_05))
	&& (Mod_WM_Hexenritual == 2)
	&& (Mod_TrfWoman == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Elena_Hexenparty_06_Info()
{
	AI_Output(self, hero, "Info_Mod_Elena_Hexenparty_06_16_00"); //(benommen) Was, wie ... Schwestern, wir wurden reingelegt.

	Mod_HexenAttack = 1;

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Elena_Hexenparty_10 (C_INFO)
{
	npc		= Mod_783_BAU_Elena_NW;
	nr		= 1;
	condition	= Info_Mod_Elena_Hexenparty_10_Condition;
	information	= Info_Mod_Elena_Hexenparty_10_Info;
	permanent	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Elena_Hexenparty_10_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Elena_Hexenparty_01))
	&& (Mod_WM_HexenVerwandlung < 2)
	&& (Mod_WM_IsWarg == 0)
	&& (Npc_RefuseTalk(self) == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Elena_Hexenparty_10_Info()
{
	AI_Output(self, hero, "Info_Mod_Elena_Hexenparty_10_16_00"); //Was soll das, nimm deine Tiergestalt wieder an und verrichte, was dir aufgetragen wurde.

	AI_StopProcessInfos	(self);

	Npc_SetRefuseTalk (self, 10);
};

INSTANCE Info_Mod_Elena_Trade (C_INFO)
{
	npc		= Mod_783_BAU_Elena_NW;
	nr		= 1;
	condition	= Info_Mod_Elena_Trade_Condition;
	information	= Info_Mod_Elena_Trade_Info;
	permanent	= 1;
	important	= 0;
	trade		= 1;
	description	= DIALOG_TRADE;
};

FUNC INT Info_Mod_Elena_Trade_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Elena_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Elena_Trade_Info()
{
	Backup_Questitems();

	B_GiveTradeInv	(self);
	B_Say	(hero, self, "$TRADE_1");
};

INSTANCE Info_Mod_Elena_Pickpocket (C_INFO)
{
	npc		= Mod_783_BAU_Elena_NW;
	nr		= 1;
	condition	= Info_Mod_Elena_Pickpocket_Condition;
	information	= Info_Mod_Elena_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_40_Female;
};

FUNC INT Info_Mod_Elena_Pickpocket_Condition()
{
	C_Beklauen	(34, ItMi_Gold, 80);
};

FUNC VOID Info_Mod_Elena_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Elena_Pickpocket);

	Info_AddChoice	(Info_Mod_Elena_Pickpocket, DIALOG_BACK, Info_Mod_Elena_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Elena_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Elena_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Elena_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Elena_Pickpocket);
};

FUNC VOID Info_Mod_Elena_Pickpocket_DoIt()
{
	B_Beklauen();
	Info_ClearChoices	(Info_Mod_Elena_Pickpocket);
};

INSTANCE Info_Mod_Elena_EXIT (C_INFO)
{
	npc		= Mod_783_BAU_Elena_NW;
	nr		= 1;
	condition	= Info_Mod_Elena_EXIT_Condition;
	information	= Info_Mod_Elena_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Elena_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Elena_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};