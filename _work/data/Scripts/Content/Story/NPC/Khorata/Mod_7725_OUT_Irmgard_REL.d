instance Mod_7725_OUT_Irmgard_REL (Npc_Default)
{
	// ------ NSC ------
	name 		= "Irmgard";	//Halvors Frau
	guild 		= GIL_OUT;
	id 			= 7725;
	voice 		= 17;
	flags       = 0;																
	npctype		= NPCTYPE_MAIN;
	
	//-----------AIVARS----------------
	aivar[AIV_ToughGuy] = TRUE; 
	
	// ------ Attribute ------
	B_SetAttributesToChapter (self, 1);																
	
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_NORMAL;
	
	// ------ Equippte Waffen ------																	
	
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
	EquipItem (self, ItMw_1h_Bau_Mace);
	
	// ------ visuals ------																			
	B_SetNpcVisual 		(self, FEMALE, "Hum_Head_Babe1", FaceBabe_N_GreyCloth, BodyTex_N, ITAR_VlkBabe_M_6);	
	Mdl_ApplyOverlayMds	(self, "Humans_Babe.mds"); 
	
	// ------ NSC-relevante Talente vergeben ------
	B_GiveNpcTalents (self);
	
	// ------ Kampf-Talente ------																	
	B_SetFightSkills (self, 15); 
	
	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_7725;
};

FUNC VOID Rtn_Start_7725 ()
{	
	TA_Sit_Chair		(04,55,20,05,"ALTEFESTUNG_09");
	TA_Sit_Chair		(20,05,04,55,"ALTEFESTUNG_09");
};

FUNC VOID Rtn_Heim_7725 ()
{	
	TA_Cook_Stove		(04,55,20,05,"REL_CITY_100");
	TA_Sleep		(20,05,04,55,"REL_CITY_101");
};
