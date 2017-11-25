INSTANCE Info_Mod_Argez_IR_Hi (C_INFO)
{
	npc		= PC_Friend_IR;
	nr		= 1;
	condition	= Info_Mod_Argez_IR_Hi_Condition;
	information	= Info_Mod_Argez_IR_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Argez?";
};

FUNC INT Info_Mod_Argez_IR_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Argez_IR_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Argez_IR_Hi_15_00"); //Argez?
	AI_Output(self, hero, "Info_Mod_Argez_IR_Hi_37_01"); //Tak, przepraszam za nieproszony wyglad.
	AI_Output(hero, self, "Info_Mod_Argez_IR_Hi_15_02"); //Co, jak....?
	AI_Output(self, hero, "Info_Mod_Argez_IR_Hi_37_03"); //No cóz, ukrywalem sie w magazynie. Musialem tylko isc z wami na te podróz.
	AI_Output(hero, self, "Info_Mod_Argez_IR_Hi_15_04"); //Potrzeba przyjscia na te nikczemna, ciemna wyspe?
	AI_Output(self, hero, "Info_Mod_Argez_IR_Hi_37_05"); //Nie pytaj dlaczego. Nie moge tez powiedziec na pewno......
	AI_Output(self, hero, "Info_Mod_Argez_IR_Hi_37_06"); //Z jednej strony jest to straszne miejsce, pelne obrzydliwych stworzen niegodziwosci, do których zwykle nigdy nie chcialem wejsc... Wiecej ale potem znowu.....
	AI_Output(hero, self, "Info_Mod_Argez_IR_Hi_15_07"); //Tak, wiesz cos o tym?
	AI_Output(self, hero, "Info_Mod_Argez_IR_Hi_37_08"); //Cóz, wydaje mi sie to tak znane.... tak wiele fragmentów wrazen i wspomnien, które mnie zaatakowaly......
	AI_Output(hero, self, "Info_Mod_Argez_IR_Hi_15_09"); //Co to jest?
	AI_Output(self, hero, "Info_Mod_Argez_IR_Hi_37_10"); //l-- To tyle, ze przenika do mojego umyslu jednoczesnie.... Wrazenia, obrazy, obrazy, glosy...... to....

	AI_PlayAni  (self, "T_MAGRUN_2_HEASHOOT");

	AI_Output(self, hero, "Info_Mod_Argez_IR_Hi_37_11"); //Sciezka, która odslaniaja rece dwóch osób.... co zdaje sie laczyc, a jednak oddzieli sie od siebie....
	AI_Output(self, hero, "Info_Mod_Argez_IR_Hi_37_12"); //... po prawej i lewej stronie bedzie decydowac, czy nasiaknieta krwia czy czy czysta, jak woda zródlana.....
	AI_Output(hero, self, "Info_Mod_Argez_IR_Hi_15_13"); //Co to wszystko oznacza?

	AI_PlayAni  (self, "T_HEASHOOT_2_STAND");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "DRAINED");

	AI_TurnToNpc	(hero, Mod_7458_NONE_Jack_IR);

	AI_Output(hero, self, "Info_Mod_Argez_IR_Hi_15_14"); //Damn, on sie wymarl.
};

INSTANCE Info_Mod_Argez_IR_Bridge (C_INFO)
{
	npc		= PC_Friend_IR;
	nr		= 1;
	condition	= Info_Mod_Argez_IR_Bridge_Condition;
	information	= Info_Mod_Argez_IR_Bridge_Info;
	permanent	= 0;
	important	= 0;
	description	= "Argez! Jestes swiadomy?";
};

FUNC INT Info_Mod_Argez_IR_Bridge_Condition()
{
	if (Npc_IsDead(Dragon_Undead))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Argez_IR_Bridge_Info()
{
	AI_Output(hero, self, "Info_Mod_Argez_IR_Bridge_15_00"); //Argez! Jestes swiadomy? Most jest ponownie dostepny. Czy tak wlasnie postepowales?
	AI_Output(self, hero, "Info_Mod_Argez_IR_Bridge_37_01"); //Tak, udalo mi sie magicznie uruchomic mechanizm dla mostu.... i wyczuwam, ze obecnosc demona wygasa.
	AI_Output(self, hero, "Info_Mod_Argez_IR_Bridge_37_02"); //Gdy tylko go zabiles, ja odzyskalem swiadomosc.
	AI_Output(self, hero, "Info_Mod_Argez_IR_Bridge_37_03"); //Teraz nadal jedynym moim zamiarem jest szybkie opuszczenie wyspy.
	AI_Output(hero, self, "Info_Mod_Argez_IR_Bridge_15_04"); //Tak, nic nas nie powstrzyma. Powrót na statek.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Argez_IR_EXIT (C_INFO)
{
	npc		= PC_Friend_IR;
	nr		= 1;
	condition	= Info_Mod_Argez_IR_EXIT_Condition;
	information	= Info_Mod_Argez_IR_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Argez_IR_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Argez_IR_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
