// ***************
// B_Preach_Vatras
// ***************

func void B_Announce_Richter_Anna (var int satz)
{
	AI_TurnToNpc	(self, Mod_7376_OUT_Anna_REL);

	if (satz == 0) 	
	{	
		AI_Output (self, self, "Info_Announce_Richter_Anna_10_00"); //Po wnikliwej analizie i rozwazaniach doszlismy do nastepujacego werdyktu:
	};
	if (satz == 1) 	
	{	
		AI_Output (self, self, "Info_Announce_Richter_Anna_10_01"); //Pozwana Anna Weinschmäckerin zostala uznana za winna 26 przestepstw czarnej magii.
	};
	if (satz == 2)
	{	
		AI_Output (self, self, "Info_Announce_Richter_Anna_10_02"); //Podczas stosowania tortur trzeciego stopnia oskarzony przyznal sie do haniebnych zbrodni zgloszonych przez swiadków.
	};
	if (satz == 3)
	{	
		AI_Output (self, self, "Info_Announce_Richter_Anna_10_03"); //Naleza do nich szczególy:
	};
	if (satz == 4)
	{	
		AI_Output (self, self, "Info_Announce_Richter_Anna_10_04"); //Zatrucie miejskiego jeziora, wykopalenie martwych dzieci i spozycie ich, hold Beliara, zastosowanie magicznej masci do lotu miotla, umyslne falszywe przepisy i zle spojrzenie, które doprowadzily do choroby i smierci.
	};
	if (satz == 5)
	{	
		AI_Output (self, self, "Info_Announce_Richter_Anna_10_05"); //Przyznanie sie swiadków do zeznan i pelne wyznanie sa wystarczajacym dowodem skazania oskarzonego.
	};
	if (satz == 6)
	{	
		AI_Output (self, self, "Info_Announce_Richter_Anna_10_06"); //W celu ochrony naszego spoleczenstwa i blabli czas nieco skrócilismy, postanowilismy, mianowani przez wznioslego gubernatora Khoratasa i udzieleni przez Adanosa, Boga sprawiedliwosci, ze Anna Weinschmäckerin ma byc dzis po poludniu oddana publicznie pod ogien.
	};
	if (satz == 7)
	{	
		AI_Output (self, self, "Info_Announce_Richter_Anna_10_07"); //Poniewaz pozwany okazuje skruche i zaluje, mamy w naszej nieskonczonej lasce, ze powinna byc uduszona na smierc, zanim zostanie spalona.
	};
	if (satz == 8)
	{	
		AI_Output (self, self, "Info_Announce_Richter_Anna_10_08"); //Niech Adanos chroni swoja dusze.
	};
	if (satz == 9)
	{		
		AI_Output (self, self, "Info_Announce_Richter_Anna_10_09"); //Niniejszym zamyka sie rozprawe. Cokolwiek zjesc teraz?

		Mod_AnnaQuest = 8;

		B_Attack	(Mod_7370_OUT_Ulrich_REL, Mod_7373_OUT_Schoeppe_REL, AR_NONE, 0);
	};
};
