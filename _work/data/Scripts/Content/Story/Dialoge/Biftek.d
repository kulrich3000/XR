INSTANCE Info_Mod_Biftek_Hi (C_INFO)
{
	npc		= Mod_10047_Orc_Biftek_MT;
	nr		= 1;
	condition	= Info_Mod_Biftek_Hi_Condition;
	information	= Info_Mod_Biftek_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jestes nowym facetem?";
};

FUNC INT Info_Mod_Biftek_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Biftek_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Biftek_Hi_15_00"); //Jestes nowym facetem?
	AI_Output(self, hero, "Info_Mod_Biftek_Hi_18_01"); //Dlaczego ludzie chca wiedziec? Uwazaj na poteznego biftka i jego siekiere!
	AI_Output(self, hero, "Info_Mod_Biftek_Hi_18_02"); //Biftek zrobi naskórek i zje surowy!
	AI_Output(hero, self, "Info_Mod_Biftek_Hi_15_03"); //Nie spiesz sie! Jestem dobrym przyjacielem Ur Shaka.
	AI_Output(self, hero, "Info_Mod_Biftek_Hi_18_04"); //Upps! Biftek nie wiedzial. Nie moze sie nawet wydostac na ludzi?
	AI_Output(hero, self, "Info_Mod_Biftek_Hi_15_05"); //Nie teraz, nie.
};

INSTANCE Info_Mod_Biftek_Mager (C_INFO)
{
	npc		= Mod_10047_Orc_Biftek_MT;
	nr		= 1;
	condition	= Info_Mod_Biftek_Mager_Condition;
	information	= Info_Mod_Biftek_Mager_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wygladasz na dosyc chudy ork.";
};

FUNC INT Info_Mod_Biftek_Mager_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Biftek_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Biftek_Mager_Info()
{
	AI_Output(hero, self, "Info_Mod_Biftek_Mager_15_00"); //Wygladasz na dosyc chudy ork.
	AI_Output(self, hero, "Info_Mod_Biftek_Mager_18_01"); //Kilka tygodni temu Biftek mial byc mocnym orkiem, ale od tego czasu juz wiecej miesa nie jadl.
	AI_Output(self, hero, "Info_Mod_Biftek_Mager_18_02"); //W obozowiskach orków juz nie jesc zadnego jedzenia, a tu tylko warzywa i ziola, z których biftek dostaje bóle brzucha.
	AI_Output(self, hero, "Info_Mod_Biftek_Mager_18_03"); //Wiec Biftek jest juz bardzo slaby i na pewno wkrótce umrze.
	AI_Output(self, hero, "Info_Mod_Biftek_Mager_18_04"); //Placz dosc pewny, ze wciaz potrzebuje wszystkich swoich rak i nóg?
	AI_Output(hero, self, "Info_Mod_Biftek_Mager_15_05"); //Dlaczego tu nie dostajesz miesa?
	AI_Output(self, hero, "Info_Mod_Biftek_Mager_18_06"); //Ur shak mówi, ze orki moga równiez zyc na roslinach i grzybach, a o wiele latwiej je znalezc i zebrac.
	AI_Output(self, hero, "Info_Mod_Biftek_Mager_18_07"); //Ale Biftek mówi: Jikes! Rosliny i grzyby nie smakuja dobrze i nie wypelniaja sie. Ale on jest zbyt slaby, zeby sie polowac.
	
	AI_TurnAway(hero, self);
	
	AI_Output(hero, self, "Info_Mod_Biftek_Mager_15_08"); //(do samego siebie) Oczywiscie moglem zaoferowac mu mieso. Ale przez dlugi czas nie mialby tego wiele. Powinienem porozmawiac o tym z Ur Shakiem.
	
	AI_TurnToNpc(hero, self);
	
	AI_Output(hero, self, "Info_Mod_Biftek_Mager_15_09"); //Spójrzmy, teraz nie moge ci jednak pomóc. Ale jesli znajde sposób, wróce.
	AI_Output(self, hero, "Info_Mod_Biftek_Mager_18_10"); //Móglbys posolic sie lepiej smakowac?

	Log_CreateTopic	(TOPIC_MOD_BIFTEK_FLEISCHERSATZ, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_BIFTEK_FLEISCHERSATZ, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_BIFTEK_FLEISCHERSATZ, "Ork Biftek w twierdzy od tygodni nie ma miesa i czuje sie jak glód. Poniewaz mieso jest rzadkie, potrzebuje odpowiedniego substytutu. Moze Ur Shak wie co robic.");
};

var int Mod_Biftek_Day;

INSTANCE Info_Mod_Biftek_Mager2 (C_INFO)
{
	npc		= Mod_10047_Orc_Biftek_MT;
	nr		= 1;
	condition	= Info_Mod_Biftek_Mager2_Condition;
	information	= Info_Mod_Biftek_Mager2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Spójrz, przynioslem ci kawalek miesa.";
};

FUNC INT Info_Mod_Biftek_Mager2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_UrShak_Biftek))
	&& (Npc_HasItems(hero, ItWr_TofuRezept))
	&& (Npc_HasItems(hero, ItFo_Tofu))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Biftek_Mager2_Info()
{
	AI_Output(hero, self, "Info_Mod_Biftek_Mager2_15_00"); //Spójrz, przynioslem ci kawalek miesa.
	
	B_GiveInvItems(hero, self, ItFo_Tofu, 1);
	
	B_UseItem(self, ItFo_Tofu);
	
	AI_Output(self, hero, "Info_Mod_Biftek_Mager2_18_01"); //(chewing z relaksem) Hmmjommjommjomm. Ah, ten smak Biftek tak dlugo brakowalo. Biftek jest teraz zadowolony. Czlowiek ma wiecej?
	AI_Output(hero, self, "Info_Mod_Biftek_Mager2_15_02"); //Nie, ale mozna tylko gotowac wlasne jedzenie. Tutaj.
	
	B_GiveInvItems(hero, self, ItWr_TofuRezept, 1);
	
	AI_Output(self, hero, "Info_Mod_Biftek_Mager2_18_03"); //Czlowiek chce zatruc Biftek! A Biftek ufa ludziom!
	AI_Output(hero, self, "Info_Mod_Biftek_Mager2_15_04"); //Przyjedz na dól tutaj. Nie smakowales inaczej.
	AI_Output(self, hero, "Info_Mod_Biftek_Mager2_18_05"); //Tak, tak. Biftek chce po prostu byc mily i nie przyznac sie do tego.
	AI_Output(hero, self, "Info_Mod_Biftek_Mager2_15_06"); //To wcale nie jest prawda.
	AI_Output(self, hero, "Info_Mod_Biftek_Mager2_18_07"); //Dobrze mówi.
	AI_Output(hero, self, "Info_Mod_Biftek_Mager2_15_08"); //Teraz posluchajcie mnie, nie zauwazyliscie zadnej róznicy, to jest final. Mozesz powiedziec matce wszystko inne.
	AI_Output(hero, self, "Info_Mod_Biftek_Mager2_15_09"); //A jesli jestes zbyt leniwy, aby poprosic Ur Shak, aby pozwolil mu zbierac rosliny i zamienic je w To-Fu, to Twoja wina.
	AI_Output(hero, self, "Info_Mod_Biftek_Mager2_15_10"); //Jak tylko odzyskasz sily, mozesz otrzymac wlasne mieso.
	AI_Output(self, hero, "Info_Mod_Biftek_Mager2_18_11"); //No cóz, moze maja racje. Biftek dziekuje czlowiekowi, ale w przyszlosci nie bedzie juz oszukiwal Biftka.
	AI_Output(hero, self, "Info_Mod_Biftek_Mager2_15_12"); //Ladunek.
	
	B_GivePlayerXP(350);

	B_SetTopicStatus	(TOPIC_MOD_BIFTEK_FLEISCHERSATZ, LOG_SUCCESS);

	CurrentNQ += 1;
	
	Mod_Biftek_Day = Wld_GetDay();
};

INSTANCE Info_Mod_Biftek_Mager3 (C_INFO)
{
	npc		= Mod_10047_Orc_Biftek_MT;
	nr		= 1;
	condition	= Info_Mod_Biftek_Mager3_Condition;
	information	= Info_Mod_Biftek_Mager3_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ponownie wygladasz silniej.";
};

FUNC INT Info_Mod_Biftek_Mager3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Biftek_Mager2))
	&& (Wld_GetDay() - 3 >= Mod_Biftek_Day)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Biftek_Mager3_Info()
{
	AI_Output(hero, self, "Info_Mod_Biftek_Mager3_15_00"); //Ponownie wygladasz silniej.
	AI_Output(self, hero, "Info_Mod_Biftek_Mager3_18_01"); //Tak, biftek jada przez caly dzien, ciezko sie zatrzymac. Ur wstrzas musi zakazac biftkowi dalszego jedzenia, poniewaz nie ma tam wystarczajacej ilosci fasoli.
	AI_Output(self, hero, "Info_Mod_Biftek_Mager3_18_02"); //Ale Biftek idz i znajdz swoja wlasna fasole!
	AI_Output(hero, self, "Info_Mod_Biftek_Mager3_15_03"); //Tak dlugo jak masz racje.
	AI_Output(self, hero, "Info_Mod_Biftek_Mager3_18_04"); //Biftek nie chce juz dluzej slinic sie z ludzmi!
	AI_Output(hero, self, "Info_Mod_Biftek_Mager3_15_05"); //Ciesze sie, ze Pan to zrobil.
};

INSTANCE Info_Mod_Biftek_WarumDabei (C_INFO)
{
	npc		= Mod_10047_Orc_Biftek_MT;
	nr		= 1;
	condition	= Info_Mod_Biftek_WarumDabei_Condition;
	information	= Info_Mod_Biftek_WarumDabei_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dlaczego dolaczyles do Ur Shak, Tarrok i Ranad?";
};

FUNC INT Info_Mod_Biftek_WarumDabei_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Biftek_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Biftek_WarumDabei_Info()
{
	AI_Output(hero, self, "Info_Mod_Biftek_WarumDabei_15_00"); //Dlaczego dolaczyles do Ur Shak, Tarrok i Ranad?
	AI_Output(self, hero, "Info_Mod_Biftek_WarumDabei_18_01"); //Calkiem po prostu, w obozach orków nie ma juz tam jedzenia, duzo grzebanych w swiatyniach Krushaka i za malo orków do polowania na swieze mieso.
	AI_Output(self, hero, "Info_Mod_Biftek_WarumDabei_18_02"); //Ale Ranad mówi, ze wie gdzie Biftek moze jesc tyle, ile chce. Tak wiec biftek przychodzi z nami. Ale Ranad nie powiedzial, ze tylko warzywa!
};

INSTANCE Info_Mod_Biftek_EXIT (C_INFO)
{
	npc		= Mod_10047_Orc_Biftek_MT;
	nr		= 1;
	condition	= Info_Mod_Biftek_EXIT_Condition;
	information	= Info_Mod_Biftek_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Biftek_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Biftek_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
