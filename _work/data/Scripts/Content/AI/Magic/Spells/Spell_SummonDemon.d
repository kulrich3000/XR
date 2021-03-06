// ***************
// SPL_SummonDemon
// ***************

const int SPL_Cost_SummonDemon		= 225;


INSTANCE Spell_SummonDemon (C_Spell_Proto)	//ehem. Spell_Demon
{
	time_per_mana			= 0;
	targetCollectAlgo		= TARGET_COLLECT_NONE;
};

func int Spell_Logic_SummonDemon(var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_SummonDemon / 2))
	{	
		return SPL_SENDCAST;
	}
	else if (self.attribute[ATR_MANA] >= SPL_Cost_SummonDemon)
	&& (Mod_GottStatus < 5)
	{	
		return SPL_SENDCAST;
	}
	else //nicht genug Mana
	{
		return SPL_SENDSTOP;
	};
};

func void Spell_Cast_SummonDemon()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_SummonDemon / 2;
	}
	else
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_SummonDemon;
	};

	if (Npc_IsPlayer(self)) 
	{		
		Wld_SpawnNpcRange (self, Summoned_Demon, 1, 1000);
	}
	else
	{
		if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Mod_4019_VMG_Faice_MT))
		{
			Wld_SpawnNpcRange (self, Demon_Faice, 1, 1000);
		}
		else
		{
			Wld_SpawnNpcRange (self, Demon, 1, 1000);
		};
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};


