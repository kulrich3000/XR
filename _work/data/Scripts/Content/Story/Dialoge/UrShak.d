INSTANCE Info_Mod_UrShak_Hi (C_INFO)
{
	npc		= Mod_10001_Orc_UrShak_MT;
	nr		= 1;
	condition	= Info_Mod_UrShak_Hi_Condition;
	information	= Info_Mod_UrShak_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_UrShak_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_UrShak_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_UrShak_Hi_04_00"); //Obcy sa przeze mnie witani.
	AI_Output(hero, self, "Info_Mod_UrShak_Hi_15_01"); //Ur-Shak, to ja.
	AI_Output(self, hero, "Info_Mod_UrShak_Hi_04_02"); //Badz przyjacielem. Uratowales mnie przed wojownikami z Orcstadtu. Wciaz jestem wam bardzo wdzieczny.
};

INSTANCE Info_Mod_UrShak_WasHier (C_INFO)
{
	npc		= Mod_10001_Orc_UrShak_MT;
	nr		= 1;
	condition	= Info_Mod_UrShak_WasHier_Condition;
	information	= Info_Mod_UrShak_WasHier_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co Pan tutaj robi?";
};

FUNC INT Info_Mod_UrShak_WasHier_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_UrShak_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_UrShak_WasHier_Info()
{
	B_Say	(hero, self, "$WASMACHSTDUHIER");

	AI_Output(self, hero, "Info_Mod_UrShak_WasHier_04_01"); //Po tym jak przyjaciel zniszczyl Krushaka, Ur Shak uderzyl w Tarrok. Wspólnie postanowilismy znalezc nowego Klan.
	AI_Output(self, hero, "Info_Mod_UrShak_WasHier_04_02"); //Jako obóz zabralismy w skaly stara twierdze. Tutaj chronimy sie przed zlymi orkami.
};

INSTANCE Info_Mod_UrShak_Foki (C_INFO)
{
	npc		= Mod_10001_Orc_UrShak_MT;
	nr		= 1;
	condition	= Info_Mod_UrShak_Foki_Condition;
	information	= Info_Mod_UrShak_Foki_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co wiesz o skupieniu uwagi?";
};

FUNC INT Info_Mod_UrShak_Foki_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_UrShak_WasHier))
	&& (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_Fokusplatz))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_UrShak_Foki_Info()
{
	AI_Output(hero, self, "Info_Mod_UrShak_Foki_15_00"); //Co wiesz o skupieniu uwagi?
	AI_Output(self, hero, "Info_Mod_UrShak_Foki_04_01"); //Tutaj na podium spowiedziano sie, ale pewnego wieczoru juz nie bylo.
	AI_Output(self, hero, "Info_Mod_UrShak_Foki_04_02"); //Kiedy Focus zniknal, Ur Shak udal sie do przyjaciela Xardasa. Wyjasnil, ze istnieje piec punktów ostrosci.
	AI_Output(self, hero, "Info_Mod_UrShak_Foki_04_03"); //On Ur Shak daje mape, gdzie narysowal wszystkie lokalizacje Fokusse. W rezultacie Ur Shak wyslal Tarrok, aby szukac ostrosci na kamieniach.
	AI_Output(self, hero, "Info_Mod_UrShak_Foki_04_04"); //Jednak nawet ta uwaga juz sie nie skupia. Xardas podejrzewa, ze orki ukradzione skupiaja sie na wskrzeszeniu Krushaka.
	AI_Output(self, hero, "Info_Mod_UrShak_Foki_04_05"); //Nie moze sie to jednak zdarzyc. Przyjaciól musi odnalezc pozostale ogniska i przyniesc te z Orków.
	AI_Output(hero, self, "Info_Mod_UrShak_Foki_15_06"); //Tak czy owak szukam ostrosci.
	AI_Output(self, hero, "Info_Mod_UrShak_Foki_04_07"); //Przyjaciel szuka równiez ostrosci? Wtedy Ur Shak pomoze przyjacielowi najlepiej jak potrafi.
	AI_Output(self, hero, "Info_Mod_UrShak_Foki_04_08"); //Ranad wiele o tym wie. Czasami jeszcze czasami oglada obozy orkowe.
	AI_Output(self, hero, "Info_Mod_UrShak_Foki_04_09"); //Obecnie znajduje sie on na szczycie fortecy. Idz do niego i porozmawiaj z nim. Prawdopodobnie ma wiele informacji dla przyjaciela.

	B_LogEntry	(TOPIC_MOD_FOKUSSUCHE,	"Wydaje sie, ze orki w Orku znajduja sie równiez po Foki. Jestem tutaj, aby porozmawiac z czlowiekiem o nazwisku Ranad w twierdzy. Jest szpiegiem orków i jestem pewien, ze ma dla mnie jakies ciekawe informacje.");
};

INSTANCE Info_Mod_UrShak_Mitmachen (C_INFO)
{
	npc		= Mod_10001_Orc_UrShak_MT;
	nr		= 1;
	condition	= Info_Mod_UrShak_Mitmachen_Condition;
	information	= Info_Mod_UrShak_Mitmachen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Rytual orków w miescie nie sprawdzil sie.";
};

FUNC INT Info_Mod_UrShak_Mitmachen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ranad_OC_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_UrShak_Mitmachen_Info()
{
	AI_Output(hero, self, "Info_Mod_UrShak_Mitmachen_15_00"); //Rytual orków w miescie nie sprawdzil sie.
	AI_Output(self, hero, "Info_Mod_UrShak_Mitmachen_04_01"); //To nie nazywa sie Krushak jego plecy?
	AI_Output(hero, self, "Info_Mod_UrShak_Mitmachen_15_02"); //Nie. Dzieki Ranadowi, który poprowadzil mnie do Hosh Pak, udalo mi sie go zabic i zawladnac ostroscia.
	AI_Output(self, hero, "Info_Mod_UrShak_Mitmachen_04_03"); //Badz dobry.
};

INSTANCE Info_Mod_UrShak_Oschust (C_INFO)
{
	npc		= Mod_10001_Orc_UrShak_MT;
	nr		= 1;
	condition	= Info_Mod_UrShak_Oschust_Condition;
	information	= Info_Mod_UrShak_Oschust_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_UrShak_Oschust_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dexter_BanditenKidnapped))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Oschust_BadOne_Gnade))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Oschust_BadOne_Plan))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_UrShak_Oschust_Info()
{
	AI_Output(self, hero, "Info_Mod_UrShak_Oschust_04_00"); //Witaj, przyjaciela. Ranad Ur Shak doniósl, ze orki zlapaly ludzi z obozu w Bergen.
	AI_Output(self, hero, "Info_Mod_UrShak_Oschust_04_01"); //Ponadto, chcesz rozpoczac atak na zapasy i naklonic magów do zdobycia amuletu.
	AI_Output(hero, self, "Info_Mod_UrShak_Oschust_15_02"); //Dlatego szukam Panstwa rady. Wiezniami sa moi przyjaciele z obozu bandytów. Chce podjac próbe ich uwolnienia.
	AI_Output(self, hero, "Info_Mod_UrShak_Oschust_04_03"); //Bedzie to jego trudne zadanie. Dobrze strzezeni orkami sa w Orkstadcie w podziemnej jaskini.
	AI_Output(self, hero, "Info_Mod_UrShak_Oschust_04_04"); //Ur Shak wie, ze jestes jego mocnym wojownikiem. Ale to nie wystarczy, aby uwolnic przyjaciól.
	AI_Output(hero, self, "Info_Mod_UrShak_Oschust_15_05"); //Prawdopodobnie bede musial szukac wsparcia u przemieniajacych sie magów. Dziekujemy za informacje.
	AI_Output(self, hero, "Info_Mod_UrShak_Oschust_04_06"); //Ur Shak lubi pomagac przyjaciolom i zyczyc sukcesów w trudnych zadaniach.

	B_LogEntry	(TOPIC_MOD_BDT_ORKS, "Powinienem zwrócic sie do przemieniajacego sie magika Alberta, aby opowiedzial mu o niebezpieczenstwach zagrazajacych jego obozowi. Moze tak wlasnie moge uzyskac wsparcie....");
};

INSTANCE Info_Mod_UrShak_Xeres (C_INFO)
{
	npc		= Mod_10001_Orc_UrShak_MT;
	nr		= 1;
	condition	= Info_Mod_UrShak_Xeres_Condition;
	information	= Info_Mod_UrShak_Xeres_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_UrShak_Xeres_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_AW_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_UrShak_Xeres_Info()
{
	AI_Output(self, hero, "Info_Mod_UrShak_Xeres_04_00"); //Ciesze sie, ze przychodza przyjaciele. Ur Shak ma zle wiesci. Orki z miasta maja nowych przywódców. Wyglada jak czlowiek, ale nie calkiem zywy.
	AI_Output(self, hero, "Info_Mod_UrShak_Xeres_04_01"); //Orki chca zrobic swoja armie. Przyjaciel musi zapobiegac.

	B_LogEntry	(TOPIC_MOD_XERES, "Xeres wydaje sie chciec, aby wszystkie orki byly jego slugami. Ur Shak chce abym to zatrzymal.");
};

INSTANCE Info_Mod_UrShak_Karte (C_INFO)
{
	npc		= Mod_10001_Orc_UrShak_MT;
	nr		= 1;
	condition	= Info_Mod_UrShak_Karte_Condition;
	information	= Info_Mod_UrShak_Karte_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_UrShak_Karte_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_UrShak_Hi))
	&& (Npc_HasItems(hero, ItWrWorldmap) > 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_UrShak_Karte_Info()
{
	AI_Output(self, hero, "Info_Mod_UrShak_Karte_04_00"); //Zobacz Ur Shak, zla karte przyjaciela. Ur Shak zrobi calosc.

	Npc_RemoveInvItems	(hero, ItWrWorldmap, 1);
	CreateInvItems	(hero, ItWrWorldmap_Orc, 1);

	AI_Output(self, hero, "Info_Mod_UrShak_Karte_04_01"); //Teraz mapujemy wszystko.
};

INSTANCE Info_Mod_UrShak_Biftek (C_INFO)
{
	npc		= Mod_10001_Orc_UrShak_MT;
	nr		= 1;
	condition	= Info_Mod_UrShak_Biftek_Condition;
	information	= Info_Mod_UrShak_Biftek_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wiesz o problemie Biftka?";
};

FUNC INT Info_Mod_UrShak_Biftek_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_UrShak_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Biftek_Mager))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_UrShak_Biftek_Info()
{
	AI_Output(hero, self, "Info_Mod_UrShak_Biftek_15_00"); //Wiesz o problemie Biftka?
	AI_Output(self, hero, "Info_Mod_UrShak_Biftek_04_01"); //Tak. Ale kazdy ork moze przyzwyczaic sie do ziól i grzybów, po prostu nie chce.
	AI_Output(hero, self, "Info_Mod_UrShak_Biftek_15_02"); //Czyz nie ma sposobu, aby zmusic go do spróbowania roslin? Czy orki zazwyczaj jedza tylko mieso?
	AI_Output(self, hero, "Info_Mod_UrShak_Biftek_04_03"); //(myslal) Ur Shak da spadl na stary przepis, aby zastapic mieso. Orki nazywaja go To-Fu.
	AI_Output(hero, self, "Info_Mod_UrShak_Biftek_15_04"); //Co to oznacza?
	AI_Output(self, hero, "Info_Mod_UrShak_Biftek_04_05"); //Nie znaczy nic, to nazwa.
	AI_Output(hero, self, "Info_Mod_UrShak_Biftek_15_06"); //A jak przygotowac to do Fu?
	AI_Output(self, hero, "Info_Mod_UrShak_Biftek_04_07"); //Ur Shak musi spojrzec w nuty. (sees)
	
	AI_PlayAni(self, "r_Roam1");
	
	AI_Output(self, hero, "Info_Mod_UrShak_Biftek_04_08"); //Tam ma nawet recepte zrozumiala dla ludzi.
	
	B_GiveInvItems(self, hero, ItWr_TofuRezept, 1);
	
	AI_Output(self, hero, "Info_Mod_UrShak_Biftek_04_09"); //Czlowiek musi szukac taksówek i zbierac ich straki. W strakach znajduje male ziarna fasoli. Ur Shak nie wie, czy i tu rosna rosliny So-Ja, ale w okolicach Orków zdecydowanie tak.
	AI_Output(self, hero, "Info_Mod_UrShak_Biftek_04_10"); //W stojaku na receptury, aby wykonac To-Fu, nalezy nacisnac przycisk So-Ja. Ale czlowiek moze równiez uzywac stolu alchemicznego.
	AI_Output(self, hero, "Info_Mod_UrShak_Biftek_04_11"); //Po zakonczeniu, Biftek mówi, ze mieso dla niego miec, a on nie zauwazy zadnej róznicy.
	AI_Output(hero, self, "Info_Mod_UrShak_Biftek_15_12"); //Dzieki temu brzmi to jak plan.
	
	B_LogEntry	(TOPIC_MOD_BIFTEK_FLEISCHERSATZ, "Ur Shak sugeruje przygotowanie Biftka na pewien To-Fu. Uzyskuje sie ja z rosliny So-Ja, która miala rosnac wszedzie w Minentalu, ale przede wszystkim na Orcie. Wszystkie informacje na temat preparatu mozna znalezc w przepisie powierzonym mi przez Ur Shak. Widocznie moge zrobic To-Fu przy kazdym stole alchemicznym.");
	
	Mod_Soja_01 = 0;
	Mod_Soja_02 = 0;
	Mod_Soja_03 = 0;
	Mod_Soja_04 = 0;
	Mod_Soja_05 = 0;
	Mod_Soja_06 = 0;
	Mod_Soja_07 = 0;
	Mod_Soja_08 = 0;
	Mod_Soja_09 = 0;
	Mod_Soja_010 = 0;
	Mod_Soja_011 = 0;
	Mod_Soja_012 = 0;
	Mod_Soja_013 = 0;
	Mod_Soja_014 = 0;
	Mod_Soja_015 = 0;
	Mod_Soja_016 = 0;
	Mod_Soja_017 = 0;
	Mod_Soja_018 = 0;
	Mod_Soja_019 = 0;
	Mod_Soja_020 = 0;
	Mod_Soja_021 = 0;
	Mod_Soja_022 = 0;
	Mod_Soja_023 = 0;
	Mod_Soja_024 = 0;
	Mod_Soja_025 = 0;
	Mod_Soja_026 = 0;
	Mod_Soja_027 = 0;
	Mod_Soja_028 = 0;
	Mod_Soja_029 = 0;
	Mod_Soja_030 = 0;
};

INSTANCE Info_Mod_UrShak_Biftek2 (C_INFO)
{
	npc		= Mod_10001_Orc_UrShak_MT;
	nr		= 1;
	condition	= Info_Mod_UrShak_Biftek2_Condition;
	information	= Info_Mod_UrShak_Biftek2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Biftek jest równiez zadowolony z To-Fu.";
};

FUNC INT Info_Mod_UrShak_Biftek2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Biftek_Mager2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_UrShak_Biftek2_Info()
{
	AI_Output(hero, self, "Info_Mod_UrShak_Biftek2_15_00"); //Biftek jest równiez zadowolony z To-Fu.
	AI_Output(self, hero, "Info_Mod_UrShak_Biftek2_04_01"); //Zaskoczy nas Ur Shak. Oczekuje wiekszych problemów.
	AI_Output(hero, self, "Info_Mod_UrShak_Biftek2_15_02"); //Nic, czego nie dalo sie rozwiazac. Wkrótce powinien zostac ponownie wzmocniony i byc w stanie pomóc.
	AI_Output(self, hero, "Info_Mod_UrShak_Biftek2_04_03"); //Badz wdzieczny za ludzka pomoc!
	AI_Output(hero, self, "Info_Mod_UrShak_Biftek2_15_04"); //Nie ma nic.
};

INSTANCE Info_Mod_UrShak_PolochTretor (C_INFO)
{
	npc		= Mod_10001_Orc_UrShak_MT;
	nr		= 1;
	condition	= Info_Mod_UrShak_PolochTretor_Condition;
	information	= Info_Mod_UrShak_PolochTretor_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_UrShak_PolochTretor_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Poloch_Won))
	|| (Npc_KnowsInfo(hero, Info_Mod_Poloch_Lost))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_UrShak_PolochTretor_Info()
{
	AI_Output(self, hero, "Info_Mod_UrShak_PolochTretor_04_00"); //Ur Shak sluchac Tretor i Poloch teraz najlepszych przyjaciól, a czlowiek ma palce w grze.
	AI_Output(hero, self, "Info_Mod_UrShak_PolochTretor_15_01"); //Tak, kosztem kilku siniaków.
	AI_Output(self, hero, "Info_Mod_UrShak_PolochTretor_04_02"); //Czlowiek bierze to, co Ur Shak znajduje w twierdzy górskiej. Orki nie moga jej uzyc.
	
	B_GiveInvItems(self, hero, ItMi_Gold, 150);
	
	AI_Output(hero, self, "Info_Mod_UrShak_PolochTretor_15_03"); //Dzieki.
};

INSTANCE Info_Mod_UrShak_EXIT (C_INFO)
{
	npc		= Mod_10001_Orc_UrShak_MT;
	nr		= 1;
	condition	= Info_Mod_UrShak_EXIT_Condition;
	information	= Info_Mod_UrShak_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_UrShak_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_UrShak_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
