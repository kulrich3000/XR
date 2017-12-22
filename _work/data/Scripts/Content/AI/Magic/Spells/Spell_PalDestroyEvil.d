// ******************
// SPL_PalDestroyEvil
// ******************

const int SPL_Cost_PalDestroyEvil 			= 25;	
const int SPL_Damage_PalDestroyEvil 		= 600; 

INSTANCE Spell_PalDestroyEvil (C_Spell_Proto)
{
	time_per_mana			= 0;
	damage_per_level 		= SPL_DAMAGE_PalDestroyEvil;
	spelltype				= SPELL_NEUTRAL;
	canTurnDuringInvest     = TRUE;
	canChangeTargetDuringInvest      = TRUE;
};

func int Spell_Logic_PalDestroyEvil	(var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Scroll))
	{	
		return SPL_SENDCAST;
	}
	else if (self.attribute[ATR_MANA] >= SPL_Cost_PalDestroyEvil)
	{		
		return SPL_SENDCAST;
	}
	else //nicht genug Mana
	{
		return SPL_SENDSTOP;
	};
};

func void Spell_Cast_PalDestroyEvil()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_PalDestroyEvil;
	};

	B_PrismaAdd(SPL_Damage_PalDestroyEvil);
	
	self.aivar[AIV_SelectSpell] += 1;
};
