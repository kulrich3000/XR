INSTANCE Info_Mod_Xeres_XW_Hi (C_INFO)
{
	npc		= Xeres_02;
	nr		= 1;
	condition	= Info_Mod_Xeres_XW_Hi_Condition;
	information	= Info_Mod_Xeres_XW_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Xeres_XW_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Xeres_XW_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Xeres_XW_Hi_14_00"); //Widze, ze znalazles nie tylko droge do mojego skromnego królestwa, ale tym razem nawet przyprowadziles swoich przyjaciól do siebie.
	AI_Output(self, hero, "Info_Mod_Xeres_XW_Hi_14_01"); //Wiec to wlasnie tam umrzesz i staniesz sie moimi slugami.
	AI_Output(self, hero, "Info_Mod_Xeres_XW_Hi_14_02"); //Udalo sie równiez zjednoczyc potege bogów, ale to nie uczyni ci nic dobrego przeciwko mnie.
	AI_Output(self, hero, "Info_Mod_Xeres_XW_Hi_14_03"); //Nie zostane dwukrotnie wypedzony przez ten miecz.
	AI_Output(hero, self, "Info_Mod_Xeres_XW_Hi_15_04"); //Jak moze sie to kiedys zdarzyc, gdy jestes tak potezny?
	AI_Output(self, hero, "Info_Mod_Xeres_XW_Hi_14_05"); //Miejmy wiec troche pogawedki, gdy twoje kolesie sa tam.
	AI_Output(self, hero, "Info_Mod_Xeres_XW_Hi_14_06"); //Wszystko zaczelo sie wiele lat temu w Jharkendarzu. Tam wlasnie sie urodzilem. Mozna powiedziec, ze wówczas dominowala kultura wysoka.
	AI_Output(self, hero, "Info_Mod_Xeres_XW_Hi_14_07"); //Byl tylko jeden Bóg, a nie trzech, jak teraz. Nazywal sie Radanosem i laczyl w sobie trzech bogów.
	AI_Output(hero, self, "Info_Mod_Xeres_XW_Hi_15_08"); //Wiem juz to wszystko.
	AI_Output(self, hero, "Info_Mod_Xeres_XW_Hi_14_09"); //Dlaczego nagle tak pospiesznie?
	AI_Output(self, hero, "Info_Mod_Xeres_XW_Hi_14_10"); //Dorastalem wiec w Jharkendarzu. Mój ojciec byl zwyklym kowalem, a moja matka zielarzem.
	AI_Output(self, hero, "Info_Mod_Xeres_XW_Hi_14_11"); //Juz w mlodosci poczulem pragnienie ucieczki od swojej nieistotnej egzystencji i zdobycia wladzy.
	AI_Output(self, hero, "Info_Mod_Xeres_XW_Hi_14_12"); //Wiec duzo eksperymentowalem z magia i eliksirami.
	AI_Output(self, hero, "Info_Mod_Xeres_XW_Hi_14_13"); //W owym czasie istnialy wówczas zupelnie inne niz dzisiaj sposoby pracy magii.
	AI_Output(self, hero, "Info_Mod_Xeres_XW_Hi_14_14"); //Uzycie nowych, mocniejszych zaklec jest juz niedopowiedziane. W przeszlosci nie bylo ograniczen dla ducha badan.
	AI_Output(self, hero, "Info_Mod_Xeres_XW_Hi_14_15"); //Tak sie wiec stalo, ze po pieciu latach znalazlem sposób aby stac sie niesmiertelnym. Musialem sie jednak podzielic.
	AI_Output(self, hero, "Info_Mod_Xeres_XW_Hi_14_16"); //Najwiekszym problemem byla ochrona moich lub u wladzy czesci.
	AI_Output(self, hero, "Info_Mod_Xeres_XW_Hi_14_17"); //Pierwszy byl slaby, ale przez swój wyglad mógl zniknac wsród ludzi i byl tak bezpieczny przed zabiciem.
	AI_Output(self, hero, "Info_Mod_Xeres_XW_Hi_14_18"); //Oczywiscie jeden nosnik energii nie wystarczyl. Stworzylem drugi. Smok od zmarlych sprowadzil z powrotem. Byl bardzo potezny. Moje arcydzielo, ze tak powiem. I go zniszczyles.
	AI_Output(hero, self, "Info_Mod_Xeres_XW_Hi_15_19"); //Skad to wiesz?
	AI_Output(self, hero, "Info_Mod_Xeres_XW_Hi_14_20"); //Smok byl czescia mojego ja. Po jego smierci jego energia powrócila do mnie.
	AI_Output(self, hero, "Info_Mod_Xeres_XW_Hi_14_21"); //Czulem smierc trzech moich posiadaczy uprawnien. Smok, Ksztaltownia i Urnol. Najemca zostaje wypedzony.
	AI_Output(self, hero, "Info_Mod_Xeres_XW_Hi_14_22"); //Wiec prawie zabrales moja niesmiertelnosc, ale dales mi wiecej sily.
	AI_Output(self, hero, "Info_Mod_Xeres_XW_Hi_14_23"); //Moge zabic kazdego, kogo chce.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Xeres_XW_LesterTot (C_INFO)
{
	npc		= Xeres_02;
	nr		= 1;
	condition	= Info_Mod_Xeres_XW_LesterTot_Condition;
	information	= Info_Mod_Xeres_XW_LesterTot_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Xeres_XW_LesterTot_Condition()
{
	if (Mod_XW_Kap6 == 7)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xeres_XW_LesterTot_Info()
{
	AI_Output(self, hero, "Info_Mod_Xeres_XW_LesterTot_14_00"); //Widzisz, nie mam sie oszukiwac.
	AI_Output(self, hero, "Info_Mod_Xeres_XW_LesterTot_14_01"); //Uzyskalem wiec swoja niesmiertelnosc i niemal nieskonczona wladze.
	AI_Output(self, hero, "Info_Mod_Xeres_XW_LesterTot_14_02"); //Poniewaz nie chcieli mi sie podporzadkowac, zabilem wiekszosc mieszkanców Jharkendend i szukalem slug.
	AI_Output(self, hero, "Info_Mod_Xeres_XW_LesterTot_14_03"); //Jako nieumarli, ludzie moich ludzi byli bardzo pozyteczni. Jednak po krótkim czasie pojawil sie nieznajomy.
	AI_Output(self, hero, "Info_Mod_Xeres_XW_LesterTot_14_04"); //Podejrzewam, ze byl wyslannikiem Radano. Nosil on Uriziel, skrecone ostrze bogów.
	AI_Output(self, hero, "Info_Mod_Xeres_XW_LesterTot_14_05"); //Przez ten miecz ciezko mnie ranil, a Radanosowi udalo sie mnie tu uwiezic.
	AI_Output(self, hero, "Info_Mod_Xeres_XW_LesterTot_14_06"); //Ale dzieki moim poteznym ludziom nie umarlem. Próbowalem uciekac przez dlugi czas.
	AI_Output(self, hero, "Info_Mod_Xeres_XW_LesterTot_14_07"); //Stworzylem inny nosnik zasilania. Znasz go. To ty go zniszczyles. Dzieki Tobie znajduje sie w sferze Beliara.
	AI_Output(self, hero, "Info_Mod_Xeres_XW_LesterTot_14_08"); //Przez dlugi czas byl moim zwierzakiem. Potem wyslalem go do doliny Minentala, gdzie przypadkowo pomógl powiekszyc bariere. Zerwalem z nim kontakt.
	AI_Output(self, hero, "Info_Mod_Xeres_XW_LesterTot_14_09"); //Ale potem przyszedles. Wiesz te czesc historii. Miales sypialnia na swoim sumieniu, mój wierny przyjaciel. Chcialem zemsty.
	AI_Output(self, hero, "Info_Mod_Xeres_XW_LesterTot_14_10"); //Urnol powinien teraz skierowac cie na mój szlak i skonczyc to, czego nie moglem powiedziec sypialni. A plan zadzialal.
	AI_Output(self, hero, "Info_Mod_Xeres_XW_LesterTot_14_11"); //Ciekawosc magików wody sprawila, ze przelamala magie, która nade mna lezala i wyzwolila mnie.
	AI_Output(self, hero, "Info_Mod_Xeres_XW_LesterTot_14_12"); //I teraz stajemy przed soba twarza w twarz: nowy wybrany jeden z bogów i ja, potezny i przede wszystkim niesmiertelny Xeres.
	AI_Output(self, hero, "Info_Mod_Xeres_XW_LesterTot_14_13"); //Ale teraz wystarczy slów, przejdzmy do mosieznych kluczy. Bedziesz jak Twój przyjaciel!

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Xeres_XW_LetzteRunde (C_INFO)
{
	npc		= Xeres_02;
	nr		= 1;
	condition	= Info_Mod_Xeres_XW_LetzteRunde_Condition;
	information	= Info_Mod_Xeres_XW_LetzteRunde_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Xeres_XW_LetzteRunde_Condition()
{
	if (Mod_XW_Kap6 == 15)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xeres_XW_LetzteRunde_Info()
{
	AI_Output(self, hero, "Info_Mod_Xeres_XW_LetzteRunde_14_00"); //Dobrze sie walczylo. Chce wynegocjowac krawat.
	AI_Output(hero, self, "Info_Mod_Xeres_XW_LetzteRunde_15_01"); //Koniec linii?
	AI_Output(self, hero, "Info_Mod_Xeres_XW_LetzteRunde_14_02"); //(pietrzenie) Nigdy.... Nigdy nigdy!

	AI_StopProcessInfos	(self);

	self.guild = GIL_STRF;
	Npc_SetTrueGuild	(self, GIL_STRF);

	self.fight_tactic = FAI_HUMAN_COWARD;
};
