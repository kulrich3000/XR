// *****************************************************
// B_AssignAmbientInfos
// --------------------
// Verteiler. Aufruf aller B_AssignAmbientInfos-Befehle,
// abh�ngig von Gilde und Geschlecht
// *****************************************************

FUNC VOID B_AssignAmbientInfos (var C_NPC slf)
{
	// ------ VLK ------
	if (slf.guild == GIL_PAL)	
	&& (slf.npctype == NPCTYPE_AMBIENT)
	{		
		if (slf.voice == 6 || slf.voice == 0)		{	B_AssignAmbientInfos_Vlk_6 (slf);	};	
		if (slf.voice == 8) 	{	B_AssignAmbientInfos_Vlk_8 (slf);	};
		if (slf.voice == 16)	{	B_AssignAmbientInfos_Vlk_16 (slf);	};
		if (slf.voice == 19)		{	B_AssignAmbientInfos_Vlk_19 (slf);	};
		if (slf.voice == 21)	{	B_AssignAmbientInfos_Vlk_21 (slf);	};
	};

	if (slf.npctype == NPCTYPE_MT_GARDIST)
	{
		if (slf.voice == 6 || slf.voice == 0) { B_AssignAmbientInfos_Grd_6 (slf); };
		if (slf.voice == 7) { B_AssignAmbientInfos_Grd_7 (slf); };
		if (slf.voice == 13) { B_AssignAmbientInfos_Grd_13 (slf); };
	};

	if (slf.npctype == NPCTYPE_MT_REISBAUER)
	{
		if (slf.voice == 2 || slf.voice == 0) { B_AssignAmbientInfos_ReisBau_2 (slf); };
		if (slf.voice == 4) { B_AssignAmbientInfos_ReisBau_4 (slf); };
		if (slf.voice == 9) { B_AssignAmbientInfos_ReisBau_9 (slf); };
	};

	if (slf.npctype == NPCTYPE_MT_SUMPFNOVIZE)
	{
		if (slf.voice == 2 || slf.voice == 0) { B_AssignAmbientInfos_PSINOV_2 (slf); };
		if (slf.voice == 3) { B_AssignAmbientInfos_PSINOV_3 (slf); };
		if (slf.voice == 5) { B_AssignAmbientInfos_PSINOV_5 (slf); };
	};

	if (slf.npctype == NPCTYPE_MT_SCHATTEN)
	{
		if (slf.voice == 10 || slf.voice == 0) { B_AssignAmbientInfos_Stt_10 (slf); };
		if (slf.voice == 12) { B_AssignAmbientInfos_Stt_12 (slf); };
	};

	if (slf.npctype == NPCTYPE_MT_BUDDLER)
	{		
		if (slf.voice == 1 || slf.voice == 0) { B_AssignAmbientInfos_Bud_1 (slf);	};
		if (slf.voice == 2) { B_AssignAmbientInfos_Bud_2 (slf);	};	
		if (slf.voice == 3) { B_AssignAmbientInfos_Bud_3 (slf);	};
		if (slf.voice == 4) { B_AssignAmbientInfos_Bud_4 (slf); };
	};

	if (slf.npctype == NPCTYPE_MT_TEMPLER)
	{
		if (slf.voice == 29 || slf.voice == 0) { B_AssignAmbientInfos_Tpl_29 (slf); };
		if (slf.voice == 13) { B_AssignAmbientInfos_Tpl_13 (slf); };
	};

	if (slf.npctype == NPCTYPE_MT_SOELDNER)
	{
		if (slf.voice == 8 || slf.voice == 0) { B_AssignAmbientInfos_Sld_8 (slf); };
		if (slf.voice == 11) { B_AssignAmbientInfos_Sld_11 (slf); };
	};

	if (slf.npctype == NPCTYPE_MT_SCHUERFER)
	{
		if (slf.voice == 1 || slf.voice == 0) { B_AssignAmbientInfos_Sfb_1 (slf); };
		if (slf.voice == 2) { B_AssignAmbientInfos_Sfb_2 (slf); };
		if (slf.voice == 5) { B_AssignAmbientInfos_Sfb_5 (slf); };
	};

	if (slf.npctype == NPCTYPE_NW_BAUER)
	{		
		if (slf.voice == 1 || slf.voice == 0) { B_AssignAmbientInfos_Bau_1 (slf);	};
		if (slf.voice == 7) { B_AssignAmbientInfos_Bau_7 (slf);	};	
		if (slf.voice == 13) { B_AssignAmbientInfos_Bau_13 (slf); };
		if (slf.voice == 16) { B_AssignAmbientInfos_Bau_16 (slf); };
	};

	if (slf.npctype == NPCTYPE_NW_MILIZ)
	{
		if (slf.voice == 6 || slf.voice == 0) { B_AssignAmbientInfos_Mil_6 (slf); };
		if (slf.voice == 7) { B_AssignAmbientInfos_Mil_7 (slf); };
	};

	if (slf.npctype == NPCTYPE_NW_FEUERNOVIZE)
	{
		if (slf.voice == 3 || slf.voice == 0) { B_AssignAmbientInfos_Nov_3 (slf); };
		if (slf.voice == 8) { B_AssignAmbientInfos_Nov_8 (slf); };
	};

	if (slf.npctype == NPCTYPE_NW_PALADIN)
	{
		if (slf.voice == 4 || slf.voice == 0) { B_AssignAmbientInfos_Pal_4 (slf); };
		if (slf.voice == 9) { B_AssignAmbientInfos_Pal_9 (slf); };
		if (slf.voice == 12) { B_AssignAmbientInfos_Pal_12 (slf); };
	};

	if (slf.npctype == NPCTYPE_PAT_PALADIN_MAUER)
	{
		if (slf.voice == 13 || slf.voice == 0) { B_AssignAmbientInfos_PAL_13 (slf); };
	};

	if (slf.npctype == NPCTYPE_PAT_ORDENSPRIESTER_MAUER)
	{
		if (slf.voice == 13 || slf.voice == 0) { B_AssignAmbientInfos_KDF_13 (slf); };
	};

	if (slf.npctype == NPCTYPE_NW_SOELDNER)
	{
		if (slf.voice == 6 || slf.voice == 0) { B_AssignAmbientInfos_Sld_6 (slf); };
		if (slf.voice == 7) { B_AssignAmbientInfos_Sld_7 (slf); };
	};

	if (slf.npctype == NPCTYPE_FM_SOELDNER)
	{
		if (slf.voice == 5 || slf.voice == 0) { B_AssignAmbientInfos_FM_Sld_5 (slf); };
		if (slf.voice == 9) { B_AssignAmbientInfos_FM_Sld_9 (slf); };
	};

	if (slf.npctype == NPCTYPE_FM_SCHUERFER)
	{
		if (slf.voice == 10 || slf.voice == 0) { B_AssignAmbientInfos_FM_SFB_10 (slf); };
		if (slf.voice == 14) { B_AssignAmbientInfos_FM_SFB_14 (slf); };
	};

	if (slf.npctype == NPCTYPE_NW_SCHWARZERNOVIZE)
	{
		if (slf.voice == 11 || slf.voice == 0) { B_AssignAmbientInfos_SNOV_11 (slf); };
		if (slf.voice == 5) { B_AssignAmbientInfos_SNOV_05 (slf); };
	};

	if (slf.npctype == NPCTYPE_EIS_BEWOHNER)
	{
		if (slf.voice == 6 || slf.voice == 0) { B_AssignAmbientInfos_EIS_6 (slf); };
		//if (slf.voice == 7) { B_AssignAmbientInfos_WKR_7 (slf); };
	};

	if (slf.npctype == NPCTYPE_OM_BUDDLER)
	{
		if (slf.voice == 1 || slf.voice == 0) { B_AssignAmbientInfos_OM_BUD_1 (slf); };
		if (slf.voice == 2) { B_AssignAmbientInfos_OM_BUD_2 (slf); };
		if (slf.voice == 3) { B_AssignAmbientInfos_OM_BUD_3 (slf); };
		if (slf.voice == 4) { B_AssignAmbientInfos_OM_BUD_4 (slf); };
	};

	if (slf.npctype == NPCTYPE_OM_SCHWARZERKRIEGER)
	{
		if (slf.voice == 6 || slf.voice == 0) { B_AssignAmbientInfos_Mod_SMK_OM_6 (slf); };
		if (slf.voice == 7) { B_AssignAmbientInfos_Mod_SMK_OM_7 (slf); };
		if (slf.voice == 13) { B_AssignAmbientInfos_Mod_SMK_OM_13 (slf); };
	};

	if (slf.npctype == NPCTYPE_MT_BANDIT)
	{
		B_AssignAmbientInfos_BDT_MT (slf);
	};

	if (slf.npctype == NPCTYPE_MT_ORKJAGD)
	|| (slf.npctype == NPCTYPE_MT_ORKJAEGER)
	{
		B_AssignAmbientInfos_Orkjagd_11 (slf);
	};

	if (slf.npctype == NPCTYPE_REL_BUERGER)
	{		
		if (slf.voice == 6 || slf.voice == 0)		{	B_AssignAmbientInfos_REL_Buerger_6 (slf);	};	
		if (slf.voice == 8) 	{	B_AssignAmbientInfos_REL_Buerger_8 (slf);	};
		if (slf.voice == 16)	{	B_AssignAmbientInfos_REL_Buerger_16 (slf);	};
		if (slf.voice == 19)		{	B_AssignAmbientInfos_REL_Buerger_19 (slf);	};
		if (slf.voice == 21 || slf.voice == 43)	{	B_AssignAmbientInfos_REL_Buerger_21 (slf);	};
	};
};
