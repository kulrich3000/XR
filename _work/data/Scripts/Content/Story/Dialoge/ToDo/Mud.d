INSTANCE Info_Mod_Mud_ShutUp (C_INFO)
{
	npc			= Mod_803_STT_Mud_MT;
	nr 			= 1;
	condition	= Info_Mod_Mud_ShutUp_Condition;
	information	= Info_Mod_Mud_ShutUp_Info;
	permanent	= 1;
	description	= "Czy moze pani zamknac sie na chwile, prosze?";
};

FUNC INT Info_Mod_Mud_ShutUp_Condition()
{
	if (Mud_NerveRealized == TRUE)
	&& ((!Npc_KnowsInfo(hero, Info_Mod_Mud_OrkJagd))
	|| (Npc_KnowsInfo(hero, Info_Mod_Mud_OrksHunted)))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mud_ShutUp_Info()
{
	AI_Output (hero, self,"Info_Mod_Mud_ShutUp_15_00"); //Czy moze pani zamknac sie na chwile, prosze?
	AI_Output (self, hero,"Info_Mod_Mud_ShutUp_03_01"); //Pewne.
	Npc_SetRefuseTalk(self, 300);
};

INSTANCE Info_Mod_Mud_GetLost (C_INFO)
{
	npc			= Mod_803_STT_Mud_MT;
	nr 			= 1;
	condition	= Info_Mod_Mud_GetLost_Condition;
	information	= Info_Mod_Mud_GetLost_Info;
	permanent	= 1;
	description	= "Wyciagnij z tego fuge!";
};                       

FUNC INT Info_Mod_Mud_GetLost_Condition()
{
	if ((!Npc_KnowsInfo(hero, Info_Mod_Mud_OrkJagd))
	|| (Npc_KnowsInfo(hero, Info_Mod_Mud_OrksHunted)))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mud_GetLost_Info()
{
	AI_Output (hero, self,"Info_Mod_Mud_GetLost_15_00"); //Wyciagnij z tego fuge!
	AI_Output (self, hero,"Info_Mod_Mud_GetLost_03_01"); //Chcesz chwile samotnie, huh? Potrafie zrozumiec..... Pozostane w tle.....
};

INSTANCE Info_Mod_Mud_Defeated (C_INFO)
{
	npc			= Mod_803_STT_Mud_MT;
	nr 			= 1;
	condition	= Info_Mod_Mud_Defeated_Condition;
	information	= Info_Mod_Mud_Defeated_Info;
	permanent	= 0;
	important 	= 1;
};                       

FUNC INT Info_Mod_Mud_Defeated_Condition()
{
	if (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FIGHT_LOST)
	&& ((!Npc_KnowsInfo(hero, Info_Mod_Mud_OrkJagd))
	|| (Npc_KnowsInfo(hero, Info_Mod_Mud_OrksHunted)))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mud_Defeated_Info()
{
	AI_Output (self, hero,"Info_Mod_Mud_GetLost_03_00"); //Hej, Panie, Ty mnie uderzyles! O co to bylo chodzilo?
	AI_Output (hero, self,"Info_Mod_Mud_GetLost_15_01"); //Jeszcze raz ci uderzylem! Lubie wykrawanie!
	AI_Output (self, hero,"Info_Mod_Mud_GetLost_03_02"); //Czlowiek, czym jestes! Nie chce juz z wami nic wspólnego!
	
	AI_StopProcessInfos	(self);
	Npc_ExchangeRoutine(self,"START");
};

INSTANCE Info_Mod_Mud_Nerve_0 (C_INFO)
{
	npc			= Mod_803_STT_Mud_MT;
	nr 			= 1;
	condition	= Info_Mod_Mud_Nerve_0_Condition;
	information	= Info_Mod_Mud_Nerve_0_Info;
	permanent	= 1;
	important 	= 1;
};                       

FUNC INT Info_Mod_Mud_Nerve_0_Condition()
{
	if ((Mud_Nerve==0)
	&& (Npc_RefuseTalk(self)==FALSE)
	&& (Npc_GetDistToNpc(self,hero) < ZivilAnquatschDist)
	&& (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FALSE ))
	&& ((!Npc_KnowsInfo(hero, Info_Mod_Mud_OrkJagd))
	|| (Npc_KnowsInfo(hero, Info_Mod_Mud_OrksHunted)))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mud_Nerve_0_Info()
{
	AI_Output (self, hero,"Info_Mod_Mud_Nerve_0_03_00"); //Ach, milo mi sie znowu ruszac razem z toba. Jestem pewien, ze znów bedziemy równie dobrymi przyjaciólmi.
	Npc_SetRefuseTalk(self, NerveSec);
	Mud_Nerve = 1;
	AI_StopProcessInfos	( self );
};

INSTANCE Info_Mod_Mud_Nerve_1 (C_INFO)
{
	npc			= Mod_803_STT_Mud_MT;
	nr 			= 1;
	condition	= Info_Mod_Mud_Nerve_1_Condition;
	information	= Info_Mod_Mud_Nerve_1_Info;
	permanent	= 1;
	important 	= 1;
};                       

FUNC INT Info_Mod_Mud_Nerve_1_Condition()
{
	if ((Mud_Nerve==1)
	&& (Npc_RefuseTalk(self)==FALSE)
	&& (Npc_GetDistToNpc(self,hero) < ZivilAnquatschDist)
	&& (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FALSE ))
	&& ((!Npc_KnowsInfo(hero, Info_Mod_Mud_OrkJagd))
	|| (Npc_KnowsInfo(hero, Info_Mod_Mud_OrksHunted)))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mud_Nerve_1_Info()
{
	AI_Output (self, hero,"Info_Mod_Mud_Nerve_1_03_00"); //No cóz, czy nie jest ci trudno chodzic caly czas? Chcesz sie polozyc? W mojej kabinie jest pokój.
	Npc_SetRefuseTalk(self, NerveSec);
	Mud_Nerve = 2;
	Mud_NerveRealized = TRUE;
	AI_StopProcessInfos	( self );
};

INSTANCE Info_Mod_Mud_Nerve_2 (C_INFO)
{
	npc			= Mod_803_STT_Mud_MT;
	nr 			= 1;
	condition	= Info_Mod_Mud_Nerve_2_Condition;
	information	= Info_Mod_Mud_Nerve_2_Info;
	permanent	= 1;
	important 	= 1;
};                       

FUNC INT Info_Mod_Mud_Nerve_2_Condition()
{
	if ((Mud_Nerve==2)
	&& (Npc_RefuseTalk(self)==FALSE)
	&& (Npc_GetDistToNpc(self,hero) < ZivilAnquatschDist)
	&& (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FALSE ))
	&& ((!Npc_KnowsInfo(hero, Info_Mod_Mud_OrkJagd))
	|| (Npc_KnowsInfo(hero, Info_Mod_Mud_OrksHunted)))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mud_Nerve_2_Info()
{
	AI_Output (self, hero,"Info_Mod_Mud_Nerve_2_03_00"); //Poniewaz ta kopula juz tam nie jest, nie wolno nam opuscic obozu. Ale teraz, gdy tu znowu jestes, nie nudze sie.
	Npc_SetRefuseTalk(self, NerveSec);
	Mud_Nerve = 3;
	AI_StopProcessInfos	( self );
};

INSTANCE Info_Mod_Mud_Nerve_3 (C_INFO)
{
	npc			= Mod_803_STT_Mud_MT;
	nr 			= 1;
	condition	= Info_Mod_Mud_Nerve_3_Condition;
	information	= Info_Mod_Mud_Nerve_3_Info;
	permanent	= 1;
	important 	= 1;
};                       

FUNC INT Info_Mod_Mud_Nerve_3_Condition()
{
	if ((Mud_Nerve==3)
	&& (Npc_RefuseTalk(self)==FALSE)
	&& (Npc_GetDistToNpc(self,hero) < ZivilAnquatschDist)
	&& (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FALSE ))
	&& ((!Npc_KnowsInfo(hero, Info_Mod_Mud_OrkJagd))
	|| (Npc_KnowsInfo(hero, Info_Mod_Mud_OrksHunted)))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mud_Nerve_3_Info()
{
	AI_Output (self, hero,"Info_Mod_Mud_Nerve_3_03_00"); //Czy nie sadzisz, ze to jest troche niebezpieczne, ze ci ludzie z innych obozów walcza na arenie? Ale nie boje sie, jestes ze mna.
	Npc_SetRefuseTalk(self, NerveSec);
	Mud_Nerve = 4;
	AI_StopProcessInfos	( self );
};

INSTANCE Info_Mod_Mud_Nerve_4 (C_INFO)
{
	npc			= Mod_803_STT_Mud_MT;
	nr 			= 1;
	condition	= Info_Mod_Mud_Nerve_4_Condition;
	information	= Info_Mod_Mud_Nerve_4_Info;
	permanent	= 1;
	important 	= 1;
};                       

FUNC INT Info_Mod_Mud_Nerve_4_Condition()
{
	if ((Mud_Nerve==4)
	&& (Npc_RefuseTalk(self)==FALSE)
	&& (Npc_GetDistToNpc(self,hero) < ZivilAnquatschDist)
	&& (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FALSE ))
	&& ((!Npc_KnowsInfo(hero, Info_Mod_Mud_OrkJagd))
	|| (Npc_KnowsInfo(hero, Info_Mod_Mud_OrksHunted)))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mud_Nerve_4_Info()
{
	AI_Output (self, hero,"Info_Mod_Mud_Nerve_4_03_00"); //Teraz, gdy wiecej ludzi wraca do obozu, nie chca do mnie porozmawiac. Ale nie martw sie, jestes dla mnie jako przyjaciela.
	Npc_SetRefuseTalk(self, NerveSec);
	Mud_Nerve = 5;
	AI_StopProcessInfos	( self );
};

INSTANCE Info_Mod_Mud_Nerve_5 (C_INFO)
{
	npc			= Mod_803_STT_Mud_MT;
	nr 			= 1;
	condition	= Info_Mod_Mud_Nerve_5_Condition;
	information	= Info_Mod_Mud_Nerve_5_Info;
	permanent	= 1;
	important 	= 1;
};                       

FUNC INT Info_Mod_Mud_Nerve_5_Condition()
{
	if ((Mud_Nerve==5)
	&& (Npc_RefuseTalk(self)==FALSE)
	&& (Npc_GetDistToNpc(self,hero) < ZivilAnquatschDist)
	&& (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FALSE ))
	&& ((!Npc_KnowsInfo(hero, Info_Mod_Mud_OrkJagd))
	|| (Npc_KnowsInfo(hero, Info_Mod_Mud_OrksHunted)))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mud_Nerve_5_Info()
{
	AI_Output (self, hero,"Info_Mod_Mud_Nerve_5_03_00"); //Wiesz cos wiesz? Bardzo sie ciesze, ze moge z Toba zrobic cos jeszcze raz. Co robisz? Wiesz stado owiec w sasiedztwie, sa tak slodkie.
	Npc_SetRefuseTalk(self, NerveSec);
	Mud_Nerve = 6;
	AI_StopProcessInfos	( self );
};

INSTANCE Info_Mod_Mud_Nerve_6 (C_INFO)
{
	npc			= Mod_803_STT_Mud_MT;
	nr 			= 1;
	condition	= Info_Mod_Mud_Nerve_6_Condition;
	information	= Info_Mod_Mud_Nerve_6_Info;
	permanent	= 1;
	important 	= 1;
};                       

FUNC INT Info_Mod_Mud_Nerve_6_Condition()
{
	if ((Mud_Nerve==6)
	&& (Npc_RefuseTalk(self)==FALSE)
	&& (Npc_GetDistToNpc(self,hero) < ZivilAnquatschDist)
	&& (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FALSE ))
	&& ((!Npc_KnowsInfo(hero, Info_Mod_Mud_OrkJagd))
	|| (Npc_KnowsInfo(hero, Info_Mod_Mud_OrksHunted)))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mud_Nerve_6_Info()
{
	AI_Output (self, hero,"Info_Mod_Mud_Nerve_6_03_00"); //Masz plany na wszystko poza obozem? Straznikom sie to nie podoba. Ale jesli jestem z wami, to dobrze.
	Npc_SetRefuseTalk(self, NerveSec);
	Mud_Nerve = 0;
	AI_StopProcessInfos	( self );
};

INSTANCE Info_Mod_Mud_FirstEXIT (C_INFO)
{
	npc			= Mod_803_STT_Mud_MT;
	nr 			= 1;
	condition	= Info_Mod_Mud_FirstEXIT_Condition;
	information	= Info_Mod_Mud_FirstEXIT_Info;
	permanent	= 0;
	important 	= 1;
};                       

FUNC INT Info_Mod_Mud_FirstEXIT_Condition()
{
	if (Npc_GetDistToNpc(self,hero) < ZivilAnquatschDist)
	&& (Npc_GetDistToWp(self, "OCR_OUTSIDE_HUT_13") < 500)
	&& ((!Npc_KnowsInfo(hero, Info_Mod_Dexter_OschustAmulett))
	|| (Npc_KnowsInfo(hero, Info_Mod_Dexter_Amulett2Gefunden)))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mud_FirstEXIT_Info()
{
	AI_Output(self, hero, "Info_Mod_Mud_FirstEXIT_03_00"); //Witaj, dobrze, aby cie ponownie zobaczyc. Odkad zapora upadla, odwiedzano mnie czesciej, ale oni nie chcieli byc ze mna.
	AI_Output(self, hero, "Info_Mod_Mud_FirstEXIT_03_01"); //Ale teraz wrócisz, bedzie milo z nami, tak jak wczesniej.

	Info_ClearChoices(Info_Mod_Mud_FirstEXIT);
	Info_AddChoice	 (Info_Mod_Mud_FirstEXIT, "Wyciagnij z tego fuge!"			,Info_Mod_Mud_FirstEXIT_Verpiss);
	Info_AddChoice	 (Info_Mod_Mud_FirstEXIT, "Dlaczego nie - przyjdzcie ze mna!"	,Info_Mod_Mud_FirstEXIT_Komm);
};

func void Info_Mod_Mud_FirstEXIT_Verpiss()
{
	AI_Output (hero, self, "Info_Mod_Mud_FirstEXIT_Verpiss_15_00"); //Wyciagnij z tego fuge!
	AI_Output (self, hero, "Info_Mod_Mud_FirstEXIT_Verpiss_03_01"); //Nie w tak dobrym nastroju dzisiaj, huh? Mysle, ze powinienem przyjsc z wami kiedys....

	Info_ClearChoices(Info_Mod_Mud_FirstEXIT);

	AI_StopProcessInfos	( self );

	Npc_ExchangeRoutine (self,"FOLLOW");
};

func void Info_Mod_Mud_FirstEXIT_Komm()
{
	AI_Output (hero, self, "Info_Mod_Mud_FirstEXIT_Komm_15_00"); //Dlaczego nie - przyjdzcie ze mna!
	AI_Output (self, hero, "Info_Mod_Mud_FirstEXIT_Komm_03_01"); //Wspanialy! Mozemy rozmawiac po drodze.

	Info_ClearChoices(Info_Mod_Mud_FirstEXIT);

	AI_StopProcessInfos	( self );

	Npc_ExchangeRoutine (self,"FOLLOW");
};

INSTANCE Info_Mod_Mud_OrkJagd (C_INFO)
{
	npc			= Mod_803_STT_Mud_MT;
	nr 			= 1;
	condition	= Info_Mod_Mud_OrkJagd_Condition;
	information	= Info_Mod_Mud_OrkJagd_Info;
	permanent	= 0;
	important 	= 0;
	description	= "Czesc, bloto, zróbmy cos wspólnie.";
};                       

FUNC INT Info_Mod_Mud_OrkJagd_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dexter_OschustAmulett))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Dexter_Amulett2Gefunden))
	&& (Npc_HasItems(hero, ItAm_MegaAmulett2) == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mud_OrkJagd_Info()
{
	AI_Output(hero, self, "Info_Mod_Mud_OrkJagd_15_00"); //Czesc, bloto, zróbmy cos wspólnie.
	AI_Output(self, hero, "Info_Mod_Mud_OrkJagd_03_01"); //Och, jestes moim chlopakiem i przyjaciólmi, którzy robia wszystko razem. Co robimy?

	Info_ClearChoices(Info_Mod_Mud_OrkJagd);
	Info_AddChoice	 (Info_Mod_Mud_OrkJagd, "Moglibysmy razem pójsc na spacer po lesie."			,Info_Mod_Mud_OrkJagd_Verpiss);
	Info_AddChoice	 (Info_Mod_Mud_OrkJagd, "Zamknij sie i przyjdz ze mna."	,Info_Mod_Mud_OrkJagd_Komm);
};

func void Info_Mod_Mud_OrkJagd_Verpiss()
{
	AI_Output (hero, self, "Info_Mod_Mud_OrkJagd_Verpiss_15_00"); //Moglibysmy razem pójsc na spacer po lesie. Jest tu ladna jaskinia.
	AI_Output (self, hero, "Info_Mod_Mud_OrkJagd_Verpiss_03_01"); //Bedzie to zabawa, bedziemy mogli rozmawiac o wielkich rzeczach i poznawac sie nawzajem po drodze.
	AI_Output (self, hero, "Info_Mod_Mud_OrkJagd_Verpiss_03_02"); //Chociaz troche sie boje w lesie, ale ty jestem ze mna.

	Info_ClearChoices(Info_Mod_Mud_OrkJagd);

	AI_StopProcessInfos	( self );

	Npc_ExchangeRoutine (self,"FOLLOW");
};

func void Info_Mod_Mud_OrkJagd_Komm()
{
	AI_Output (hero, self, "Info_Mod_Mud_OrkJagd_Komm_15_00"); //Zamknij sie i przyjdz ze mna.
	AI_Output (self, hero, "Info_Mod_Mud_OrkJagd_Komm_03_01"); //Dobrze, cokolwiek sie powie, to jest wspaniale.

	Info_ClearChoices(Info_Mod_Mud_OrkJagd);

	AI_StopProcessInfos	( self );

	Npc_ExchangeRoutine (self,"FOLLOW");

	Mud_Nerve2 = 0;
};

INSTANCE Info_Mod_Mud_Lagermusik (C_INFO)
{
	npc		= Mod_803_STT_Mud_MT;
	nr 		= 1;
	condition	= Info_Mod_Mud_Lagermusik_Condition;
	information	= Info_Mod_Mud_Lagermusik_Info;
	permanent	= 0;
	important 	= 0;
	description	= "Nie chcialbys stac sie slawny, czy móglbys?";
};                       

FUNC INT Info_Mod_Mud_Lagermusik_Condition()
{
	if (Mod_Gravo_Schatz == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mud_Lagermusik_Info()
{
	AI_Output(hero, self, "Info_Mod_Mud_Lagermusik_15_00"); //Nie chcialbys stac sie slawny, czy móglbys?
	AI_Output(self, hero, "Info_Mod_Mud_Lagermusik_03_01"); //Zalezy od tego, co musze zrobic. Oczywiscie nie zostawilabym pana na to.
	AI_Output(hero, self, "Info_Mod_Mud_Lagermusik_15_02"); //Musisz grac na instrumencie. Gravo chce zalozyc grupe.
	AI_Output(self, hero, "Info_Mod_Mud_Lagermusik_03_03"); //Zawsze podobal mi sie ten beben. Dopóki mialem mlotka w reku, nie dostalem zbyt wielu zlych rzeczy.
	AI_Output(hero, self, "Info_Mod_Mud_Lagermusik_15_04"); //Doskonaly! Dlaczego nie idziesz prosto do Gravo.
	AI_Output(self, hero, "Info_Mod_Mud_Lagermusik_03_05"); //Nienawidze, zeby cie zawiesc, ale musze dac szanse mojej karierze. Zobacze cie wkrótce!

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "ATGRAVO");

	B_GivePlayerXP	(50);
};

INSTANCE Info_Mod_Mud_Nerve2_0 (C_INFO)
{
	npc			= Mod_803_STT_Mud_MT;
	nr 			= 1;
	condition	= Info_Mod_Mud_Nerve2_0_Condition;
	information	= Info_Mod_Mud_Nerve2_0_Info;
	permanent	= 1;
	important 	= 1;
};                       

FUNC INT Info_Mod_Mud_Nerve2_0_Condition()
{
	if ((Mud_Nerve2==0)
	&& (Npc_RefuseTalk(self)==FALSE)
	&& (Npc_GetDistToNpc(self,hero) < ZivilAnquatschDist)
	&& (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FALSE ))
	&& (Npc_KnowsInfo(hero, Info_Mod_Mud_OrkJagd))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Mud_OrkHoehle))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mud_Nerve2_0_Info()
{
	AI_Output (self, hero,"Info_Mod_Mud_Nerve2_0_03_00"); //Czy powinnismy usiasc w puchatym miejscu i rozmawiac ze soba nawzajem? ...
	Npc_SetRefuseTalk(self, NerveSec);
	Mud_Nerve2 = 1;
	AI_StopProcessInfos	( self );
};

INSTANCE Info_Mod_Mud_Nerve2_1 (C_INFO)
{
	npc			= Mod_803_STT_Mud_MT;
	nr 			= 1;
	condition	= Info_Mod_Mud_Nerve2_1_Condition;
	information	= Info_Mod_Mud_Nerve2_1_Info;
	permanent	= 1;
	important 	= 1;
};                       

FUNC INT Info_Mod_Mud_Nerve2_1_Condition()
{
	if ((Mud_Nerve2==1)
	&& (Npc_RefuseTalk(self)==FALSE)
	&& (Npc_GetDistToNpc(self,hero) < ZivilAnquatschDist)
	&& (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FALSE ))
	&& (Npc_KnowsInfo(hero, Info_Mod_Mud_OrkJagd))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Mud_OrkHoehle))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mud_Nerve2_1_Info()
{
	AI_Output (self, hero,"Info_Mod_Mud_Nerve2_1_03_00"); //... albo moglismy zbierac kwiaty na lace. Lubie takie kwiaty jak te, pachna tak ladnie i sa tez spiewajace króliki, maja tak puszyste futro....
	Npc_SetRefuseTalk(self, NerveSec);
	Mud_Nerve2 = 2;
	AI_StopProcessInfos	( self );
};

INSTANCE Info_Mod_Mud_Nerve2_2 (C_INFO)
{
	npc			= Mod_803_STT_Mud_MT;
	nr 			= 1;
	condition	= Info_Mod_Mud_Nerve2_2_Condition;
	information	= Info_Mod_Mud_Nerve2_2_Info;
	permanent	= 1;
	important 	= 1;
};                       

FUNC INT Info_Mod_Mud_Nerve2_2_Condition()
{
	if ((Mud_Nerve2==2)
	&& (Npc_RefuseTalk(self)==FALSE)
	&& (Npc_GetDistToNpc(self,hero) < ZivilAnquatschDist)
	&& (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FALSE ))
	&& (Npc_KnowsInfo(hero, Info_Mod_Mud_OrkJagd))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Mud_OrkHoehle))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mud_Nerve2_2_Info()
{
	AI_Output (self, hero,"Info_Mod_Mud_Nerve2_2_03_00"); //... albo moglibysmy rozpryskac sie razem w wodzie, ja tez mi sie to podoba i to jest taka frajda.....
	Npc_SetRefuseTalk(self, NerveSec);
	Mud_Nerve2 = 3;
	AI_StopProcessInfos	( self );
};

INSTANCE Info_Mod_Mud_Nerve2_3 (C_INFO)
{
	npc			= Mod_803_STT_Mud_MT;
	nr 			= 1;
	condition	= Info_Mod_Mud_Nerve2_3_Condition;
	information	= Info_Mod_Mud_Nerve2_3_Info;
	permanent	= 1;
	important 	= 1;
};                       

FUNC INT Info_Mod_Mud_Nerve2_3_Condition()
{
	if ((Mud_Nerve2==3)
	&& (Npc_RefuseTalk(self)==FALSE)
	&& (Npc_GetDistToNpc(self,hero) < ZivilAnquatschDist)
	&& (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FALSE ))
	&& (Npc_KnowsInfo(hero, Info_Mod_Mud_OrkJagd))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Mud_OrkHoehle))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mud_Nerve2_3_Info()
{
	AI_Output (self, hero,"Info_Mod_Mud_Nerve2_3_03_00"); //... Moglibysmy tez isc miedzy krzaki i bawic sie w ukrycie i szukac lub robic inne zabawne rzeczy. Ach, bedzie swietnie, a liscie beda zawsze tak ladnie kopac......
	Npc_SetRefuseTalk(self, NerveSec);
	Mud_Nerve2 = 4;
	AI_StopProcessInfos	( self );
};

INSTANCE Info_Mod_Mud_Nerve2_4 (C_INFO)
{
	npc			= Mod_803_STT_Mud_MT;
	nr 			= 1;
	condition	= Info_Mod_Mud_Nerve2_4_Condition;
	information	= Info_Mod_Mud_Nerve2_4_Info;
	permanent	= 1;
	important 	= 1;
};                       

FUNC INT Info_Mod_Mud_Nerve2_4_Condition()
{
	if ((Mud_Nerve2==4)
	&& (Npc_RefuseTalk(self)==FALSE)
	&& (Npc_GetDistToNpc(self,hero) < ZivilAnquatschDist)
	&& (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FALSE ))
	&& (Npc_KnowsInfo(hero, Info_Mod_Mud_OrkJagd))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Mud_OrkHoehle))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mud_Nerve2_4_Info()
{
	AI_Output (self, hero,"Info_Mod_Mud_Nerve2_4_03_00"); //... wiesz, ze jestes moim najlepszym przyjacielem, bardzo Ci sie podoba. Mam wrazenie, ze podoba mi sie równiez pani.....
	Npc_SetRefuseTalk(self, NerveSec);
	Mud_Nerve2 = 5;
	AI_StopProcessInfos	( self );
};

INSTANCE Info_Mod_Mud_Nerve2_5 (C_INFO)
{
	npc			= Mod_803_STT_Mud_MT;
	nr 			= 1;
	condition	= Info_Mod_Mud_Nerve2_5_Condition;
	information	= Info_Mod_Mud_Nerve2_5_Info;
	permanent	= 1;
	important 	= 1;
};                       

FUNC INT Info_Mod_Mud_Nerve2_5_Condition()
{
	if ((Mud_Nerve2 == 5)
	&& (Npc_RefuseTalk(self)==FALSE)
	&& (Npc_GetDistToNpc(self,hero) < ZivilAnquatschDist)
	&& (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FALSE ))
	&& (Npc_KnowsInfo(hero, Info_Mod_Mud_OrkJagd))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Mud_OrkHoehle))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mud_Nerve2_5_Info()
{
	AI_Output (self, hero,"Info_Mod_Mud_Nerve2_5_03_00"); //... W mojej kabinie jest jeszcze wolne miejsce dla Ciebie. Tam caly czas jestesmy razem i moglismy rozmawiac i robic inne wielkie rzeczy......
	Npc_SetRefuseTalk(self, NerveSec);
	Mud_Nerve2 = 6;
	AI_StopProcessInfos	( self );
};

INSTANCE Info_Mod_Mud_Nerve2_6 (C_INFO)
{
	npc			= Mod_803_STT_Mud_MT;
	nr 			= 1;
	condition	= Info_Mod_Mud_Nerve2_6_Condition;
	information	= Info_Mod_Mud_Nerve2_6_Info;
	permanent	= 1;
	important 	= 1;
};                       

FUNC INT Info_Mod_Mud_Nerve2_6_Condition()
{
	if ((Mud_Nerve2 == 6)
	&& (Npc_RefuseTalk(self)==FALSE)
	&& (Npc_GetDistToNpc(self,hero) < ZivilAnquatschDist)
	&& (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FALSE ))
	&& (Npc_KnowsInfo(hero, Info_Mod_Mud_OrkJagd))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Mud_OrkHoehle))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mud_Nerve2_6_Info()
{
	AI_Output (self, hero,"Info_Mod_Mud_Nerve2_6_03_00"); //... albo mozemy miec dobry czas na zewnatrz. W obozie prawie nikt mnie nie lubi....
	Npc_SetRefuseTalk(self, NerveSec);
	Mud_Nerve2 = 0;
	AI_StopProcessInfos	( self );
};

INSTANCE Info_Mod_Mud_OrkHoehle (C_INFO)
{
	npc			= Mod_803_STT_Mud_MT;
	nr 			= 1;
	condition	= Info_Mod_Mud_OrkHoehle_Condition;
	information	= Info_Mod_Mud_OrkHoehle_Info;
	permanent	= 0;
	important 	= 1;
};                       

FUNC INT Info_Mod_Mud_OrkHoehle_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Mud_OrkJagd))
	&& (Npc_GetDistToWP(hero, "WP_ORKBEIAMULETT") < 2000)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mud_OrkHoehle_Info()
{
	AI_Output (self, hero,"Info_Mod_Mud_OrkHoehle_03_00"); //Teraz juz od tak dawna razem chodzimy i swietnie sie bawilismy.
	AI_Output (self, hero,"Info_Mod_Mud_OrkHoehle_03_01"); //Jestesmy teraz sami w ciemnym lesie. Co robimy dalej?
	AI_Output (hero, self,"Info_Mod_Mud_OrkHoehle_15_02"); //Ooh, idz tam do tej jaskini.
	AI_Output (self, hero,"Info_Mod_Mud_OrkHoehle_03_03"); //Tak, co sie dzieje? Niespodzianka? Lubie niespodzianki.....

	Info_ClearChoices	(Info_Mod_Mud_OrkHoehle);

	Info_AddChoice	(Info_Mod_Mud_OrkHoehle, "Tam czai sie horda krwiozerczych orków, które, miejmy nadzieje, rozerwa cie na strzepy.", Info_Mod_Mud_OrkHoehle_C);
	Info_AddChoice	(Info_Mod_Mud_OrkHoehle, "Gdybym ci powiedzial, to nie byloby zaskoczeniem.", Info_Mod_Mud_OrkHoehle_B);
	Info_AddChoice	(Info_Mod_Mud_OrkHoehle, "Sa tam piekne kwiaty, mozesz je wybrac dla mnie.", Info_Mod_Mud_OrkHoehle_A);
};

FUNC VOID Info_Mod_Mud_OrkHoehle_D()
{
	AI_Output(self, hero, "Info_Mod_Mud_OrkHoehle_D_03_00"); //O, swietnie, jade tam wlasnie.

	Info_ClearChoices	(Info_Mod_Mud_OrkHoehle);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "ORKHOEHLE");
};

FUNC VOID Info_Mod_Mud_OrkHoehle_C()
{
	AI_Output(hero, self, "Info_Mod_Mud_OrkHoehle_C_15_00"); //Jest tak, ze uh, stado slodkich owiec.

	Info_Mod_Mud_OrkHoehle_D();
};

FUNC VOID Info_Mod_Mud_OrkHoehle_B()
{
	AI_Output(hero, self, "Info_Mod_Mud_OrkHoehle_B_15_00"); //Gdybym ci powiedzial, to nie byloby zaskoczeniem.

	Info_Mod_Mud_OrkHoehle_D();
};

FUNC VOID Info_Mod_Mud_OrkHoehle_A()
{
	AI_Output(hero, self, "Info_Mod_Mud_OrkHoehle_A_15_00"); //Sa tam piekne kwiaty, mozesz je wybrac dla mnie.

	Info_Mod_Mud_OrkHoehle_D();
};

INSTANCE Info_Mod_Mud_OrksHunted (C_INFO)
{
	npc			= Mod_803_STT_Mud_MT;
	nr 			= 1;
	condition	= Info_Mod_Mud_OrksHunted_Condition;
	information	= Info_Mod_Mud_OrksHunted_Info;
	permanent	= 0;
	important 	= 1;
};                       

FUNC INT Info_Mod_Mud_OrksHunted_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Mud_OrkHoehle))
	&& (Npc_GetDistToWP(hero, "OCR_HUT_13") < 300)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mud_OrksHunted_Info()
{
	AI_Output (self, hero,"Info_Mod_Mud_OrksHunted_03_00"); //Witaj, nie uwierzysz mi. Nagle bylo duzo zlych, srednich orków.
	AI_Output (self, hero,"Info_Mod_Mud_OrksHunted_03_01"); //Niestety, dlatego nie moglem pójsc do jaskini. Ale mozemy robic inne wielkie rzeczy.

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Mud_VMG (C_INFO)
{
	npc		= Mod_803_STT_Mud_MT;
	nr 		= 1;
	condition	= Info_Mod_Mud_VMG_Condition;
	information	= Info_Mod_Mud_VMG_Info;
	permanent	= 0;
	important 	= 1;
};                       

FUNC INT Info_Mod_Mud_VMG_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ferco_Aufnahmequest))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mud_VMG_Info()
{
	AI_Output(self, hero, "Info_Mod_Mud_VMG_03_00"); //Hej, Ty, Ty, Ja Cie znam. Ochraniales mnie przed zlymi facetami w Nowym Obozie i uratowales nas wszystkich.
	AI_Output(self, hero, "Info_Mod_Mud_VMG_03_01"); //Wiedzialem dokladnie, ze....

	Info_ClearChoices(Info_Mod_Mud_VMG);

	Info_AddChoice	 (Info_Mod_Mud_VMG, "Trzymaj oddech.", Info_Mod_Mud_VMG_B);
	Info_AddChoice	 (Info_Mod_Mud_VMG, "Tak? Idz dalej, idz dalej.", Info_Mod_Mud_VMG_A);
};

func void Info_Mod_Mud_VMG_C()
{
	AI_Output (self, hero, "Info_Mod_Mud_VMG_C_03_00"); //... ze mozna to zrobic. Wiesz, inni pchali mnie dookola, ale kiedy powiedzialem im, ze patrzycie na mnie, bardzo szybko zamykaly usta.
	AI_Output (self, hero, "Info_Mod_Mud_VMG_C_03_01"); //Ty - Ty Ty
};

func void Info_Mod_Mud_VMG_F()
{
	AI_Output (self, hero, "Info_Mod_Mud_VMG_F_03_00"); //Mysle, ze boja sie Ciebie. Ale juz nie chcialem byc uzalezniony, wiec postanowilem zostac magikiem. To madre, czyz nie?
};

func void Info_Mod_Mud_VMG_I()
{
	AI_Output (self, hero, "Info_Mod_Mud_VMG_I_03_00"); //Tak wlasnie teraz stoje. Z cala pewnoscia mozesz umiescic dla mnie dobre slowo, czy nie?
	AI_Output (self, hero, "Info_Mod_Mud_VMG_I_03_01"); //Byloby wspaniale, gdybysmy tutaj razem jako magicy czynili ten obszar niebezpiecznym, czy nie?
};

func void Info_Mod_Mud_VMG_B()
{
	AI_Output (hero, self, "Info_Mod_Mud_VMG_B_15_00"); //Trzymaj oddech.
	AI_Output (self, hero, "Info_Mod_Mud_VMG_B_03_01"); //Znalem to. Nikt mi nie lubi.

	Info_ClearChoices(Info_Mod_Mud_VMG);

	Info_AddChoice	 (Info_Mod_Mud_VMG, "To wcale nie jest prawda.", Info_Mod_Mud_VMG_M);
	Info_AddChoice	 (Info_Mod_Mud_VMG, "To jest calkowicie sluszne.", Info_Mod_Mud_VMG_L);
};

func void Info_Mod_Mud_VMG_B2()
{
	AI_Output (hero, self, "Info_Mod_Mud_VMG_B_15_00"); //Trzymaj oddech.
	AI_Output (self, hero, "Info_Mod_Mud_VMG_B_03_01"); //Znalem to. Nikt mi nie lubi.

	Info_ClearChoices(Info_Mod_Mud_VMG);

	Info_AddChoice	 (Info_Mod_Mud_VMG, "To wcale nie jest prawda.", Info_Mod_Mud_VMG_M2);
	Info_AddChoice	 (Info_Mod_Mud_VMG, "To jest calkowicie sluszne.", Info_Mod_Mud_VMG_L2);
};

func void Info_Mod_Mud_VMG_B3()
{
	AI_Output (hero, self, "Info_Mod_Mud_VMG_B_15_00"); //Trzymaj oddech.
	AI_Output (self, hero, "Info_Mod_Mud_VMG_B_03_01"); //Znalem to. Nikt mi nie lubi.

	Info_ClearChoices(Info_Mod_Mud_VMG);

	Info_AddChoice	 (Info_Mod_Mud_VMG, "To wcale nie jest prawda.", Info_Mod_Mud_VMG_M3);
	Info_AddChoice	 (Info_Mod_Mud_VMG, "To jest calkowicie sluszne.", Info_Mod_Mud_VMG_L3);
};

func void Info_Mod_Mud_VMG_M()
{
	AI_Output (hero, self, "Info_Mod_Mud_VMG_M_15_00"); //To wcale nie jest prawda.
	AI_Output (self, hero, "Info_Mod_Mud_VMG_Q_03_01"); //Musze byc zle zrozumiany.

	Info_Mod_Mud_VMG_C();

	Info_ClearChoices(Info_Mod_Mud_VMG);

	Info_AddChoice	 (Info_Mod_Mud_VMG, "Trzymaj oddech.", Info_Mod_Mud_VMG_B);
	Info_AddChoice	 (Info_Mod_Mud_VMG, "Tak?", Info_Mod_Mud_VMG_E);
};

func void Info_Mod_Mud_VMG_L()
{
	AI_Output (hero, self, "Info_Mod_Mud_VMG_L_15_00"); //To jest calkowicie sluszne.
	AI_Output (self, hero, "Info_Mod_Mud_VMG_L_03_01"); //Nie lubisz mnie juz wiecej?

	Info_ClearChoices(Info_Mod_Mud_VMG);

	Info_AddChoice	 (Info_Mod_Mud_VMG, "Tak, tak, tak, tak, tak.", Info_Mod_Mud_VMG_O);
	Info_AddChoice	 (Info_Mod_Mud_VMG, "Nigdy wczesniej nie podobal mi sie Pan wczesniej.", Info_Mod_Mud_VMG_N);
};

func void Info_Mod_Mud_VMG_M2()
{
	AI_Output (hero, self, "Info_Mod_Mud_VMG_M_15_00"); //To wcale nie jest prawda.
	AI_Output (self, hero, "Info_Mod_Mud_VMG_Q_03_01"); //Musze byc zle zrozumiany.

	Info_Mod_Mud_VMG_F();

	Info_ClearChoices(Info_Mod_Mud_VMG);

	Info_AddChoice	 (Info_Mod_Mud_VMG, "Trzymaj oddech.", Info_Mod_Mud_VMG_B2);
	Info_AddChoice	 (Info_Mod_Mud_VMG, "Ja bym zrobil to samo.", Info_Mod_Mud_VMG_G);
};

func void Info_Mod_Mud_VMG_L2()
{
	AI_Output (hero, self, "Info_Mod_Mud_VMG_L_15_00"); //To jest calkowicie sluszne.
	AI_Output (self, hero, "Info_Mod_Mud_VMG_L_03_01"); //Nie lubisz mnie juz wiecej?

	Info_ClearChoices(Info_Mod_Mud_VMG);

	Info_AddChoice	 (Info_Mod_Mud_VMG, "Tak, tak, tak, tak, tak.", Info_Mod_Mud_VMG_O2);
	Info_AddChoice	 (Info_Mod_Mud_VMG, "Nigdy wczesniej nie podobal mi sie Pan wczesniej.", Info_Mod_Mud_VMG_N2);
};

func void Info_Mod_Mud_VMG_M3()
{
	AI_Output (hero, self, "Info_Mod_Mud_VMG_M_15_00"); //To wcale nie jest prawda.
	AI_Output (self, hero, "Info_Mod_Mud_VMG_Q_03_01"); //Musze byc zle zrozumiany.

	Info_Mod_Mud_VMG_I();

	Info_ClearChoices(Info_Mod_Mud_VMG);

	Info_AddChoice	 (Info_Mod_Mud_VMG, "Trzymaj oddech.", Info_Mod_Mud_VMG_B3);
	Info_AddChoice	 (Info_Mod_Mud_VMG, "Tak, to byloby wspaniale.", Info_Mod_Mud_VMG_J);
};

func void Info_Mod_Mud_VMG_L3()
{
	AI_Output (hero, self, "Info_Mod_Mud_VMG_L_15_00"); //To jest calkowicie sluszne.
	AI_Output (self, hero, "Info_Mod_Mud_VMG_L_03_01"); //Nie lubisz mnie juz wiecej?

	Info_ClearChoices(Info_Mod_Mud_VMG);

	Info_AddChoice	 (Info_Mod_Mud_VMG, "Tak, tak, tak, tak, tak.", Info_Mod_Mud_VMG_O);
	Info_AddChoice	 (Info_Mod_Mud_VMG, "Nigdy wczesniej nie podobal mi sie Pan wczesniej.", Info_Mod_Mud_VMG_N);
};

func void Info_Mod_Mud_VMG_N()
{
	AI_Output (hero, self, "Info_Mod_Mud_VMG_N_15_00"); //Nigdy wczesniej nie podobal mi sie Pan wczesniej.
	AI_Output (self, hero, "Info_Mod_Mud_VMG_N_03_01"); //Cóz, o tym mówie tutaj do samego najwyzszego czlowieka. Najwyzszy pulkownik!

	Info_ClearChoices(Info_Mod_Mud_VMG);

	Info_AddChoice	 (Info_Mod_Mud_VMG, "Dobrze, spokojnie.", Info_Mod_Mud_VMG_Q);
	Info_AddChoice	 (Info_Mod_Mud_VMG, "Cóz, zobacz, jak sie do niego dostac.", Info_Mod_Mud_VMG_P);
};

func void Info_Mod_Mud_VMG_N2()
{
	AI_Output (hero, self, "Info_Mod_Mud_VMG_N_15_00"); //Nigdy wczesniej nie podobal mi sie Pan wczesniej.
	AI_Output (self, hero, "Info_Mod_Mud_VMG_N_03_01"); //Cóz, o tym mówie tutaj do samego najwyzszego czlowieka. Najwyzszy pulkownik!

	Info_ClearChoices(Info_Mod_Mud_VMG);

	Info_AddChoice	 (Info_Mod_Mud_VMG, "Dobrze, spokojnie.", Info_Mod_Mud_VMG_Q);
	Info_AddChoice	 (Info_Mod_Mud_VMG, "Cóz, zobacz, jak sie do niego dostac.", Info_Mod_Mud_VMG_P);
};

func void Info_Mod_Mud_VMG_N3()
{
	AI_Output (hero, self, "Info_Mod_Mud_VMG_N_15_00"); //Nigdy wczesniej nie podobal mi sie Pan wczesniej.
	AI_Output (self, hero, "Info_Mod_Mud_VMG_N_03_01"); //Cóz, o tym mówie tutaj do samego najwyzszego czlowieka. Najwyzszy pulkownik!

	Info_ClearChoices(Info_Mod_Mud_VMG);

	Info_AddChoice	 (Info_Mod_Mud_VMG, "Dobrze, spokojnie.", Info_Mod_Mud_VMG_Q);
	Info_AddChoice	 (Info_Mod_Mud_VMG, "Cóz, zobacz, jak sie do niego dostac.", Info_Mod_Mud_VMG_P);
};

func void Info_Mod_Mud_VMG_Q()
{
	AI_Output (hero, self, "Info_Mod_Mud_VMG_Q_15_00"); //Dobrze, spokojnie.
	AI_Output (self, hero, "Info_Mod_Mud_VMG_Q_03_01"); //Musze byc zle zrozumiany.

	Info_Mod_Mud_VMG_C();

	Info_ClearChoices(Info_Mod_Mud_VMG);

	Info_AddChoice	 (Info_Mod_Mud_VMG, "Trzymaj oddech.", Info_Mod_Mud_VMG_B2);
	Info_AddChoice	 (Info_Mod_Mud_VMG, "Tak?", Info_Mod_Mud_VMG_E);
};

func void Info_Mod_Mud_VMG_O()
{
	AI_Output (hero, self, "Info_Mod_Mud_VMG_O_15_00"); //Tak, tak, tak, tak, tak.
	AI_Output (self, hero, "Info_Mod_Mud_VMG_Q_03_01"); //Musze byc zle zrozumiany.

	Info_Mod_Mud_VMG_C();

	Info_ClearChoices(Info_Mod_Mud_VMG);

	Info_AddChoice	 (Info_Mod_Mud_VMG, "Trzymaj oddech.", Info_Mod_Mud_VMG_B2);
	Info_AddChoice	 (Info_Mod_Mud_VMG, "Tak?", Info_Mod_Mud_VMG_E);
};

func void Info_Mod_Mud_VMG_P()
{
	AI_Output (hero, self, "Info_Mod_Mud_VMG_P_15_00"); //Cóz, zobacz, jak sie do niego dostac.
	AI_Output (self, hero, "Info_Mod_Mud_VMG_P_03_01"); //Bede. I pomyslalem, ze jestes moim przyjacielem.

	Info_ClearChoices(Info_Mod_Mud_VMG);
};

func void Info_Mod_Mud_VMG_Q2()
{
	AI_Output (hero, self, "Info_Mod_Mud_VMG_Q_15_00"); //Dobrze, spokojnie.
	AI_Output (self, hero, "Info_Mod_Mud_VMG_Q_03_01"); //Musze byc zle zrozumiany.

	Info_Mod_Mud_VMG_F();

	Info_ClearChoices(Info_Mod_Mud_VMG);

	Info_AddChoice	 (Info_Mod_Mud_VMG, "Trzymaj oddech.", Info_Mod_Mud_VMG_B2);
	Info_AddChoice	 (Info_Mod_Mud_VMG, "Ja bym zrobil to samo.", Info_Mod_Mud_VMG_G);
};

func void Info_Mod_Mud_VMG_O2()
{
	AI_Output (hero, self, "Info_Mod_Mud_VMG_O_15_00"); //Tak, tak, tak, tak, tak.
	AI_Output (self, hero, "Info_Mod_Mud_VMG_Q_03_01"); //Musze byc zle zrozumiany.

	Info_Mod_Mud_VMG_F();

	Info_ClearChoices(Info_Mod_Mud_VMG);

	Info_AddChoice	 (Info_Mod_Mud_VMG, "Trzymaj oddech.", Info_Mod_Mud_VMG_B2);
	Info_AddChoice	 (Info_Mod_Mud_VMG, "Ja bym zrobil to samo.", Info_Mod_Mud_VMG_G);
};

func void Info_Mod_Mud_VMG_P2()
{
	AI_Output (hero, self, "Info_Mod_Mud_VMG_P_15_00"); //Cóz, zobacz, jak sie do niego dostac.
	AI_Output (self, hero, "Info_Mod_Mud_VMG_P_03_01"); //Bede. I pomyslalem, ze jestes moim przyjacielem.

	Info_ClearChoices(Info_Mod_Mud_VMG);
};

func void Info_Mod_Mud_VMG_Q3()
{
	AI_Output (hero, self, "Info_Mod_Mud_VMG_Q_15_00"); //Dobrze, spokojnie.
	AI_Output (self, hero, "Info_Mod_Mud_VMG_Q_03_01"); //Musze byc zle zrozumiany.

	Info_Mod_Mud_VMG_I();

	Info_ClearChoices(Info_Mod_Mud_VMG);

	Info_AddChoice	 (Info_Mod_Mud_VMG, "Trzymaj oddech.", Info_Mod_Mud_VMG_B3);
	Info_AddChoice	 (Info_Mod_Mud_VMG, "Tak, to byloby wspaniale.", Info_Mod_Mud_VMG_J);
};

func void Info_Mod_Mud_VMG_O3()
{
	AI_Output (hero, self, "Info_Mod_Mud_VMG_O_15_00"); //Tak, tak, tak, tak, tak.
	AI_Output (self, hero, "Info_Mod_Mud_VMG_Q_03_01"); //Musze byc zle zrozumiany.

	Info_Mod_Mud_VMG_I();

	Info_ClearChoices(Info_Mod_Mud_VMG);

	Info_AddChoice	 (Info_Mod_Mud_VMG, "Trzymaj oddech.", Info_Mod_Mud_VMG_B3);
	Info_AddChoice	 (Info_Mod_Mud_VMG, "Tak, to byloby wspaniale.", Info_Mod_Mud_VMG_J);
};

func void Info_Mod_Mud_VMG_P3()
{
	AI_Output (hero, self, "Info_Mod_Mud_VMG_P_15_00"); //Cóz, zobacz, jak sie do niego dostac.
	AI_Output (self, hero, "Info_Mod_Mud_VMG_P_03_01"); //Bede. I pomyslalem, ze jestes moim przyjacielem.

	Info_ClearChoices(Info_Mod_Mud_VMG);
};

func void Info_Mod_Mud_VMG_A()
{
	AI_Output (hero, self, "Info_Mod_Mud_VMG_A_15_00"); //Tak? Idz dalej, idz dalej.

	Info_Mod_Mud_VMG_C();

	Info_ClearChoices(Info_Mod_Mud_VMG);

	Info_AddChoice	 (Info_Mod_Mud_VMG, "Trzymaj oddech.", Info_Mod_Mud_VMG_B);
	Info_AddChoice	 (Info_Mod_Mud_VMG, "Tak?", Info_Mod_Mud_VMG_E);
};

func void Info_Mod_Mud_VMG_E()
{
	AI_Output (hero, self, "Info_Mod_Mud_VMG_E_15_00"); //Tak?

	Info_Mod_Mud_VMG_F();

	Info_ClearChoices(Info_Mod_Mud_VMG);

	Info_AddChoice	 (Info_Mod_Mud_VMG, "Trzymaj oddech.", Info_Mod_Mud_VMG_B2);
	Info_AddChoice	 (Info_Mod_Mud_VMG, "Ja bym zrobil to samo.", Info_Mod_Mud_VMG_G);
};

func void Info_Mod_Mud_VMG_G()
{
	AI_Output (hero, self, "Info_Mod_Mud_VMG_G_15_00"); //Ja bym zrobil to samo.

	Info_Mod_Mud_VMG_I();

	Info_ClearChoices(Info_Mod_Mud_VMG);

	Info_AddChoice	 (Info_Mod_Mud_VMG, "Trzymaj oddech.", Info_Mod_Mud_VMG_B3);
	Info_AddChoice	 (Info_Mod_Mud_VMG, "Tak, to byloby wspaniale.", Info_Mod_Mud_VMG_J);
};

func void Info_Mod_Mud_VMG_J()
{
	AI_Output (hero, self, "Info_Mod_Mud_VMG_J_15_00"); //Tak, to byloby wspaniale.
	AI_Output (self, hero, "Info_Mod_Mud_VMG_J_03_01"); //A wiec co pan tutaj robi? Chcesz mi przekazac zadania?
	AI_Output (hero, self, "Info_Mod_Mud_VMG_J_15_02"); //Tak. Czy jestes gotowy?
	AI_Output (self, hero, "Info_Mod_Mud_VMG_J_03_03"); //Dobrze, ruszaj naprzód, przyjaciel.

	Info_ClearChoices(Info_Mod_Mud_VMG);

	Info_AddChoice	 (Info_Mod_Mud_VMG, "Przynies mi role 'transformacji muchy krwi'.", Info_Mod_Mud_VMG_V);
	Info_AddChoice	 (Info_Mod_Mud_VMG, "Poza bariera, jeden z magów cos stracil. Znajdz to, prosze.", Info_Mod_Mud_VMG_U);
	Info_AddChoice	 (Info_Mod_Mud_VMG, "Przynies mi kilka klubów padlinozerców. Piec powinno wystarczyc.", Info_Mod_Mud_VMG_T);
	Info_AddChoice	 (Info_Mod_Mud_VMG, "W lesie jest biegacz cieni.", Info_Mod_Mud_VMG_S);
	if (Npc_HasItems(hero, ItSc_TrfSheep) > 0)
	{
		//Info_AddChoice	 (Info_Mod_Mud_VMG, "Nimm diese Spruchrolle und führe den Zauber durch.", Info_Mod_Mud_VMG_R);
	};
};

func void Info_Mod_Mud_VMG_V()
{
	AI_Output (hero, self, "Info_Mod_Mud_VMG_V_15_00"); //Przynies mi role "transformacji muchy krwi".
	AI_Output (self, hero, "Info_Mod_Mud_VMG_V_03_01"); //To smieszne, czyz nie? Tak sie sklada, ze tak sie sklada. Tutaj.

	B_GiveInvItems	(self, hero, ItSc_TrfBloodfly, 1);

	AI_Output (hero, self, "Info_Mod_Mud_VMG_V_15_02"); //No cóz, wtedy jestes.
	AI_Output (self, hero, "Info_Mod_Mud_VMG_V_03_02"); //Wspaniale, jestes prawdziwym przyjacielem.

	Info_ClearChoices(Info_Mod_Mud_VMG);

	Mod_Mud_Unterwegs = 5;
};

func void Info_Mod_Mud_VMG_U()
{
	AI_Output (hero, self, "Info_Mod_Mud_VMG_U_15_00"); //Poza bariera, jeden z magów cos stracil. Znajdz to, prosze.
	AI_Output (self, hero, "Info_Mod_Mud_VMG_U_03_01"); //Czy kochasz mnie, mezczyzne? Jak mam sie tam dostac?

	Info_ClearChoices(Info_Mod_Mud_VMG);

	Info_AddChoice	 (Info_Mod_Mud_VMG, "Chcesz byc magikiem, czy nie?", Info_Mod_Mud_VMG_X2);
	Info_AddChoice	 (Info_Mod_Mud_VMG, "Masz racje, masz racje. Dam ci jeszcze jedno zadanie.", Info_Mod_Mud_VMG_W2);
};

func void Info_Mod_Mud_VMG_X2()
{
	AI_Output (hero, self, "Info_Mod_Mud_VMG_X2_15_00"); //Chcesz byc magikiem, czy nie?
	AI_Output (self, hero, "Info_Mod_Mud_VMG_X2_03_01"); //Dobrze, zrobie to. Gdzie mam zaczac?
	AI_Output (hero, self, "Info_Mod_Mud_VMG_X2_15_02"); //Najlepiej na miejscu wymiany.
	AI_Output (self, hero, "Info_Mod_Mud_VMG_X2_03_03"); //Czego szukam?

	Info_ClearChoices(Info_Mod_Mud_VMG);

	Mod_Mud_Unterwegs = 4;

	B_StartOtherRoutine	(self, "TRADE");

	Info_AddChoice	 (Info_Mod_Mud_VMG, "Przewijanie.", Info_Mod_Mud_VMG_Y3);
	Info_AddChoice	 (Info_Mod_Mud_VMG, "Czarny pierscien.", Info_Mod_Mud_VMG_Y2);
	Info_AddChoice	 (Info_Mod_Mud_VMG, "Magiczna szata.", Info_Mod_Mud_VMG_Y1);
};

func void Info_Mod_Mud_VMG_Y3()
{
	AI_Output (hero, self, "Info_Mod_Mud_VMG_Y3_15_00"); //Przewijanie.
	AI_Output (self, hero, "Info_Mod_Mud_VMG_Y3_03_01"); //Mysle, ze ja znajde.
	AI_Output (hero, self, "Info_Mod_Mud_VMG_Y_15_02"); //Zycze powodzenia.

	Info_ClearChoices(Info_Mod_Mud_VMG);

	AI_StopProcessInfos	(self);
};

func void Info_Mod_Mud_VMG_Y2()
{
	AI_Output (hero, self, "Info_Mod_Mud_VMG_Y2_15_00"); //Czarny pierscien.
	AI_Output (self, hero, "Info_Mod_Mud_VMG_Y2_03_01"); //To zajmie troche czasu.
	AI_Output (hero, self, "Info_Mod_Mud_VMG_Y_15_02"); //Zycze powodzenia.

	Info_ClearChoices(Info_Mod_Mud_VMG);

	AI_StopProcessInfos	(self);
};

func void Info_Mod_Mud_VMG_Y1()
{
	AI_Output (hero, self, "Info_Mod_Mud_VMG_Y1_15_00"); //Magiczna szata.
	AI_Output (self, hero, "Info_Mod_Mud_VMG_Y1_03_01"); //Okay, to bedzie latwe do znalezienia.
	AI_Output (hero, self, "Info_Mod_Mud_VMG_Y_15_02"); //Zycze powodzenia.

	Info_ClearChoices(Info_Mod_Mud_VMG);

	AI_StopProcessInfos	(self);
};

func void Info_Mod_Mud_VMG_W2()
{
	AI_Output (hero, self, "Info_Mod_Mud_VMG_W2_15_00"); //Masz racje, masz racje. Dam ci jeszcze jedno zadanie.

	Info_ClearChoices(Info_Mod_Mud_VMG);

	Info_AddChoice	 (Info_Mod_Mud_VMG, "Przynies mi zaklecie metamorfoz krwi.", Info_Mod_Mud_VMG_V);
	Info_AddChoice	 (Info_Mod_Mud_VMG, "Przynies mi kilka klubów padlinozerców. Piec powinno wystarczyc.", Info_Mod_Mud_VMG_T);
	Info_AddChoice	 (Info_Mod_Mud_VMG, "W lesie jest biegacz cieni.", Info_Mod_Mud_VMG_S);
};

func void Info_Mod_Mud_VMG_T()
{
	AI_Output (hero, self, "Info_Mod_Mud_VMG_T_15_00"); //Przynies mi kilka klubów padlinozerców. Piec powinno wystarczyc.
	AI_Output (self, hero, "Info_Mod_Mud_VMG_T_03_01"); //Dobrze, to nie powinno byc zbyt trudne. Rozejrze sie troche dookola.
	AI_Output (hero, self, "Info_Mod_Mud_VMG_T_15_02"); //(smiech) Dobra zabawa.
	AI_Output (self, hero, "Info_Mod_Mud_VMG_T_03_03"); //Bede wtedy w drodze. Och, straznik tam jest faluje, lepiej isc do niej.
	AI_Output (self, hero, "Info_Mod_Mud_VMG_T_03_04"); //Cóz, zobaczcie dookola, mój przyjaciel.

	Info_ClearChoices(Info_Mod_Mud_VMG);

	AI_StopProcessInfos	(self);

	Mod_Mud_Unterwegs = 3;

	B_StartOtherRoutine	(self, "SCAV");
};

func void Info_Mod_Mud_VMG_S()
{
	AI_Output (hero, self, "Info_Mod_Mud_VMG_S_15_00"); //W lesie jest biegacz cieni. Przynies mi jego futro, a ja pozwole ci jechac.
	AI_Output (self, hero, "Info_Mod_Mud_VMG_S_03_01"); //Czy jestes powazny?

	Info_ClearChoices(Info_Mod_Mud_VMG);

	Info_AddChoice	 (Info_Mod_Mud_VMG, "Oczywiscie, i teraz zaczynamy dzialac.", Info_Mod_Mud_VMG_X);
	Info_AddChoice	 (Info_Mod_Mud_VMG, "Nie, myslalem.", Info_Mod_Mud_VMG_W);
};

func void Info_Mod_Mud_VMG_X()
{
	AI_Output (hero, self, "Info_Mod_Mud_VMG_X_15_00"); //Oczywiscie, i teraz zaczynamy dzialac.
	AI_Output (self, hero, "Info_Mod_Mud_VMG_X_03_01"); //Jesli tak powiesz, to....

	Info_ClearChoices(Info_Mod_Mud_VMG);

	AI_StopProcessInfos	(self);

	Mod_Mud_Unterwegs = 2;

	B_StartOtherRoutine	(self, "SHADOW");
};

func void Info_Mod_Mud_VMG_W()
{
	AI_Output (hero, self, "Info_Mod_Mud_VMG_W_15_00"); //Nie, myslalem.

	Info_ClearChoices(Info_Mod_Mud_VMG);

	Info_AddChoice	 (Info_Mod_Mud_VMG, "Przynies mi zaklecie metamorfoz krwi.", Info_Mod_Mud_VMG_V);
	Info_AddChoice	 (Info_Mod_Mud_VMG, "Poza bariera, jeden z magów cos stracil. Znajdz to, prosze.", Info_Mod_Mud_VMG_U);
	Info_AddChoice	 (Info_Mod_Mud_VMG, "Przynies mi kilka klubów padlinozerców. Piec powinno wystarczyc.", Info_Mod_Mud_VMG_T);
};

INSTANCE Info_Mod_Mud_Pickpocket (C_INFO)
{
	npc		= Mod_803_STT_Mud_MT;
	nr		= 1;
	condition	= Info_Mod_Mud_Pickpocket_Condition;
	information	= Info_Mod_Mud_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_30;
};

FUNC INT Info_Mod_Mud_Pickpocket_Condition()
{
	C_Beklauen	(10, ItMi_OldCoin, 1);
};

FUNC VOID Info_Mod_Mud_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Mud_Pickpocket);

	Info_AddChoice	(Info_Mod_Mud_Pickpocket, DIALOG_BACK, Info_Mod_Mud_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Mud_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Mud_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Mud_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Mud_Pickpocket);
};

FUNC VOID Info_Mod_Mud_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Mud_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Mud_Pickpocket);

		Info_AddChoice	(Info_Mod_Mud_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Mud_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Mud_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Mud_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Mud_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Mud_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Mud_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Mud_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Mud_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Mud_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Mud_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Mud_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Mud_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Mud_EXIT (C_INFO)
{
	npc			= Mod_803_STT_Mud_MT;
	nr 			= 1;
	condition	= Info_Mod_Mud_EXIT_Condition;
	information	= Info_Mod_Mud_EXIT_Info;
	permanent	= 1;
	description = DIALOG_ENDE;
};                       

FUNC INT Info_Mod_Mud_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Mud_EXIT_Info()
{
	AI_StopProcessInfos	( self );
};
