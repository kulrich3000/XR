INSTANCE Mod_10057_Orc_Warrior_MT(Mst_Default_OrcWarrior)			
{
	//----- Monster -----
	name							=	"Ork Krieger";
	guild							=	GIL_ORC;
	id			= 	10057;
	voice							=	18;
	level							=	30;
	Npctype 	=		NPCTYPE_MAIN;

	fight_tactic	=	FAI_ORC;
	
	Mdl_SetVisual			(self,	"Orc.mds");
	//								Body-Mesh			Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"Orc_BodyWarrior",	DEFAULT,	DEFAULT,	"Orc_HeadWarrior",	DEFAULT,  	DEFAULT,	-1);
	
	attribute[ATR_STRENGTH] = 150;	

	EquipItem	(self, ItMw_2H_OrcAxe_03);

	aivar[AIV_FightDistCancel] = FIGHT_DIST_CANCEL;

	daily_routine	=	Rtn_Start_10057;
};

FUNC VOID Rtn_Start_10057()
{
	TA_Stand_WP_Orc	(04,00,22,00,"OW_PATH_06_14_HEILIGTUM3");
	TA_Stand_WP_Orc	(22,00,04,00,"OW_PATH_06_14_HEILIGTUM3");
};