const int SPL_Cost_Berserk	=	50;

INSTANCE Spell_Berserk (C_Spell_Proto)
{
	time_per_mana	=	0;
	spelltype	=	SPELL_NEUTRAL;
	targetCollectRange	=	2000;
};

FUNC INT Spell_Logic_Berserk	(var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Scroll))
	{	
		return SPL_SENDCAST;
	}
	else if (self.attribute[ATR_MANA] >= SPL_Cost_Berserk)
	{	
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};

FUNC VOID Spell_Cast_Berserk()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA]	=	self.attribute[ATR_MANA] - SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA]	=	self.attribute[ATR_MANA] - SPL_Cost_Berserk;
	};

	

	self.aivar[AIV_SelectSpell] + 1;
};
