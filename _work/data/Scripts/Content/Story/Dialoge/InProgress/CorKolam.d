INSTANCE Info_Mod_Kolam_Hi (C_INFO)
{
	npc		= Mod_1981_Kolam_FI;
	nr		= 1;
	condition	= Info_Mod_Kolam_Hi_Condition;
	information	= Info_Mod_Kolam_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Kolam_Hi_Condition()
{
	if (FI_Story == 7)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Kolam_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Kolam_Hi_03_00"); //Dobrze, docierajmy do Ciebie. Jestem pewien, ze palisz pytaniami.
	AI_Output(hero, self, "Info_Mod_Kolam_Hi_15_01"); //Co zrobiles dla wynalazcy?
	AI_Output(self, hero, "Info_Mod_Kolam_Hi_03_02"); //(smiech) Haahahahahaha. Glupiec wciaz go nie dostaje. Jestem wynalazca.
	AI_Output(hero, self, "Info_Mod_Kolam_Hi_15_03"); //Co? Jestes wynalazca?
	AI_Output(self, hero, "Info_Mod_Kolam_Hi_03_04"); //Oczywiscie! Calosc porwania byla tylko sztuczka, aby cie tu zwabic!
	AI_Output(self, hero, "Info_Mod_Kolam_Hi_03_05"); //Jedyna magia jaka znam jest magia techniki. Niestety, jest to zbyt wysokie dla tych idiotów z ich sypialnia, wiec wystepowalem jako wielki Guru Cor Kolam, brat Cor Kaloma.
	AI_Output(hero, self, "Info_Mod_Kolam_Hi_15_06"); //Aby mnie tu zwabic? Po co to jest? To tylko sposób na umieszczenie calej milicji na szyi.
	AI_Output(self, hero, "Info_Mod_Kolam_Hi_03_07"); //To wszystko jest czescia mojego wspanialego planu!
	AI_Output(hero, self, "Info_Mod_Kolam_Hi_15_08"); //Planujesz? Pozwólcie mi sie domyslic. Chodzi o pieniadze, kobiety, wladze.... Dominacja na swiecie?
	AI_Output(self, hero, "Info_Mod_Kolam_Hi_03_09"); //Masz swoje pomysly w slowniku banalów? Jak myslisz, jak prymitywny jestem? Nie chodzi tu o wladze, ale tylko o technologie jako taka.
	AI_Output(self, hero, "Info_Mod_Kolam_Hi_03_10"); //Chcialem zbudowac perfekcyjna maszyne i udalo mi sie to. ATAK INICJALIZACJA

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Kolam_SleeperDead (C_INFO)
{
	npc		= Mod_1981_Kolam_FI;
	nr		= 1;
	condition	= Info_Mod_Kolam_SleeperDead_Condition;
	information	= Info_Mod_Kolam_SleeperDead_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Kolam_SleeperDead_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Kolam_Hi))
	&& (Npc_IsDead(Sleeper))
	&& (Npc_GetDistToWP(self, "FI_81") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Kolam_SleeperDead_Info()
{
	AI_Output(self, hero, "Info_Mod_Kolam_SleeperDead_03_00"); //Wspaniale!
	AI_Output(hero, self, "Info_Mod_Kolam_SleeperDead_15_01"); //Czy zdmuchnely wszystkie bezpieczniki? Wlasnie przeksztalcilem wasza "idealna maszyne" w zlom metalowy.
	AI_Output(self, hero, "Info_Mod_Kolam_SleeperDead_03_02"); //Co? Doskonala maszyna? To? Nie, nie rób tego.
	AI_Output(self, hero, "Info_Mod_Kolam_SleeperDead_03_03"); //Moja doskonala maszyna nie jest nawet wykonczona..... co oznacza, ze nie zostalo jeszcze ukonczone, bo brakowalo czegos decydujacego.
	AI_Output(hero, self, "Info_Mod_Kolam_SleeperDead_15_04"); //Mianowicie?
	AI_Output(self, hero, "Info_Mod_Kolam_SleeperDead_03_05"); //Mózg. Oczywiscie, tylko w sensie metaforycznym. Budowa zostala zakonczona, ale programowanie nie zostalo zakonczone.
	AI_Output(self, hero, "Info_Mod_Kolam_SleeperDead_03_06"); //Nie moglem napisac zadnego programu, nie po to, zeby zbudowac idealna maszyne..... Poniewaz jest to maszyna bojowa, potrzebuje doskonalego stylu walki. I tam wlasnie przychodzisz.
	AI_Output(hero, self, "Info_Mod_Kolam_SleeperDead_15_07"); //I myslisz, ze pomoze Ci zbudowac maszyne? Jestem zolnierzem milicji i jestem tutaj, aby strzec chocby odrobiny prawa i porzadku, nie pomagajac ci zbudowac szalona maszyne zabójcza.
	AI_Output(self, hero, "Info_Mod_Kolam_SleeperDead_03_08"); //Rozumiem twoje obawy moralne, ale to nie jest takie, jak ja prosilem o twoja pomoc. Wzialem je.
	AI_Output(self, hero, "Info_Mod_Kolam_SleeperDead_03_09"); //Twoja imponujaca wydajnosc w bitwie z koszem dala mojej maszynie wszystkie potrzebne informacje.
	AI_Output(self, hero, "Info_Mod_Kolam_SleeperDead_03_10"); //Analizowala Cie do tej pory, ale teraz, gdy wie wszystko, czego potrzebuje, przygotuj sie na to, by stac sie pierwsza ofiara prawdziwej perfekcji!
	AI_Output(self, hero, "Info_Mod_Kolam_SleeperDead_03_11"); //INPUT BEENDEN. SZABLONY ATAKU LADOWANIA, INICJUJ ATAK!

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(HeroBot_FI, "ABSCHIED");
};

INSTANCE Info_Mod_Kolam_EXIT (C_INFO)
{
	npc		= Mod_1981_Kolam_FI;
	nr		= 1;
	condition	= Info_Mod_Kolam_EXIT_Condition;
	information	= Info_Mod_Kolam_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Kolam_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Kolam_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
