var int Mod_Smalltalk_Cassia;

FUNC VOID B_Say_Smalltalk_Cassia ()
{
	if (Mod_Smalltalk_Cassia == 0)
	{
		AI_Output(Mod_7705_OUT_Cassia_REL, NULL, "Info_Mod_Smalltalk_Cassia_16_00"); //(unterbricht) Werter Richter, ich wollte euch um eine dringliche Sache fragen.

		Mod_Smalltalk_Cassia = 1;
	}
	else if (Mod_Smalltalk_Cassia == 1)
	{
		AI_Output(Mod_7705_OUT_Cassia_REL, NULL, "Info_Mod_Smalltalk_Cassia_16_01"); //Wie verh�lt es sich genau mit diesem ... Gesetz zur Polygamie.

		Mod_Smalltalk_Cassia = 2;
	}
	else if (Mod_Smalltalk_Cassia == 2)
	{
		AI_Output(Mod_7371_OUT_Richter_REL, NULL, "Info_Mod_Smalltalk_Cassia_10_02"); //�hh, wie ... das ist mir v�llig neu. 

		Mod_Smalltalk_Cassia = 3;
	}
	else if (Mod_Smalltalk_Cassia == 3)
	{
		AI_Output(Mod_7705_OUT_Cassia_REL, NULL, "Info_Mod_Smalltalk_Cassia_16_03"); //Ihr wisst schon, das Gesetz, welche einem Mann gestattet �ber mehrere Frauen zu verf�gen.

		Mod_Smalltalk_Cassia = 4;
	}
	else if (Mod_Smalltalk_Cassia == 4)
	{
		AI_Output(Mod_7705_OUT_Cassia_REL, NULL, "Info_Mod_Smalltalk_Cassia_16_04"); //Ich wollte mich erkundigen, ob ich als Frau auch mehrere M�nner haben darf.

		Mod_Smalltalk_Cassia = 5;
	}
	else if (Mod_Smalltalk_Cassia == 5)
	{
		AI_Output(Mod_7371_OUT_Richter_REL, NULL, "Info_Mod_Smalltalk_Cassia_10_05"); //Also ... dar�ber war mir wirklich noch gar nichts bekannt.

		Mod_Smalltalk_Cassia = 6;
	}
	else if (Mod_Smalltalk_Cassia == 6)
	{
		AI_Output(Mod_7705_OUT_Cassia_REL, NULL, "Info_Mod_Smalltalk_Cassia_16_06"); //Aber doch ...

		Mod_Smalltalk_Cassia = 7;
	}
	else if (Mod_Smalltalk_Cassia == 7)
	{
		AI_Output(Mod_7371_OUT_Richter_REL, NULL, "Info_Mod_Smalltalk_Cassia_10_07"); //Solche Untriebe in unseren Gesetzen?

		Mod_Smalltalk_Cassia = 8;
	}
	else if (Mod_Smalltalk_Cassia == 8)
	{
		AI_Output(Mod_7705_OUT_Cassia_REL, NULL, "Info_Mod_Smalltalk_Cassia_16_08"); //Wie verh�lt es sich also damit ...

		Mod_Smalltalk_Cassia = 9;
	}
	else if (Mod_Smalltalk_Cassia == 9)
	{
		AI_Output(Mod_7371_OUT_Richter_REL, NULL, "Info_Mod_Smalltalk_Cassia_10_09"); //Da bin ich v�llig �berfragt ...

		Mod_Smalltalk_Cassia = 10;
	}
	else if (Mod_Smalltalk_Cassia == 10)
	{
		AI_Output(Mod_7705_OUT_Cassia_REL, NULL, "Info_Mod_Smalltalk_Cassia_16_10"); //Aber die Vorteile �berwiegen doch eindeutig ...

		Mod_Smalltalk_Cassia = 11;
	}
	else if (Mod_Smalltalk_Cassia == 11)
	{
		AI_Output(Mod_7371_OUT_Richter_REL, NULL, "Info_Mod_Smalltalk_Cassia_10_11"); //Das ist doch ein Skandal ...

		Mod_Smalltalk_Cassia = 12;
	}
	else if (Mod_Smalltalk_Cassia == 12)
	{
		AI_Output(Mod_7705_OUT_Cassia_REL, NULL, "Info_Mod_Smalltalk_Cassia_16_12"); //Da bin ich anderer Ansicht ...

		Mod_Smalltalk_Cassia = 13;
	}
	else if (Mod_Smalltalk_Cassia == 13)
	{
		AI_Output(Mod_7371_OUT_Richter_REL, NULL, "Info_Mod_Smalltalk_Cassia_10_13"); //Unm�glich ...

		Mod_Smalltalk_Cassia = 6;
	};
};
