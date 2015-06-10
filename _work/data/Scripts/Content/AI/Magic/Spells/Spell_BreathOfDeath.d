// *******************
// Spell_BreathOfDeath
// *******************

const int SPL_Cost_BreathOfDeath	= 100;
const int SPL_DAMAGE_BreathOfDeath = 666;


INSTANCE Spell_BreathOfDeath(C_Spell_Proto)
{
	time_per_mana			= 0;
	damage_per_level		= SPL_Damage_BreathOfDeath;	
	targetCollectRange		= 1000;
};

func int Spell_Logic_BreathOfDeath(var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Scroll))
	{	
		return SPL_SENDCAST;
	}
	else if (self.attribute[ATR_MANA] >= SPL_Cost_BreathOfDeath)
	&& (Mod_GottStatus < 5)
	{	
		return SPL_SENDCAST;
	}
	else //nicht genug Mana
	{
		return SPL_SENDSTOP;
	};
};


func void Spell_Cast_BreathOfDeath(var int spellLevel)
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_BreathOfDeath;
	};
	
	self.aivar[AIV_SelectSpell] += 1;

	B_PrismaAdd(SPL_Damage_BreathOfDeath);
};


