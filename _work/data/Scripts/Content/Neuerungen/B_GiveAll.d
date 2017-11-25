FUNC VOID B_SetSchwierigkeit()
{
	if ((self.aivar[AIV_Schwierigkeitsgrad] < Mod_Schwierigkeit)
	|| (self.aivar[AIV_Schwierigkeitsgrad] > Mod_Schwierigkeit))
	&& ((self.guild != GIL_SHEEP)
	&& (self.guild != GIL_MEATBuG))
	{
		if (self.attribute[ATR_HITPOINTS] < self.attribute[ATR_HITPOINTS_MAX])
		{
			self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS_MAX];
		};

		if (self.aivar[AIV_Schwierigkeitsgrad] == 1)
		{
			self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS] * 10 / 3;
			self.attribute[ATR_HITPOINTS_MAX] = self.attribute[ATR_HITPOINTS_MAX] * 10 / 3;

			if (self.attribute[ATR_HITPOINTS_MAX] <= 0)
			{
				self.attribute[ATR_HITPOINTS_MAX] = 10;
				self.attribute[ATR_HITPOINTS] = 10;
			};

			if (self.guild > GIL_SEPERATOR_HUM)
			&& (self.guild != GIL_ORC)
			&& (self.guild != GIL_UNDEADORC)
			&& (self.guild != GIL_FRIENDLY_ORC)
			&& (self.guild != GIL_SKELETON)
			&& (self.guild != GIL_SKELETON_MAGE)
			{
				self.attribute[ATR_STRENGTH] = self.attribute[ATR_STRENGTH] * 5 / 3;
				self.attribute[ATR_DEXTERITY] = self.attribute[ATR_DEXTERITY]  * 5 / 3;
				self.attribute[ATR_MANA] = self.attribute[ATR_MANA]  * 5 / 3;
				self.attribute[ATR_MANA_MAX] = self.attribute[ATR_MANA_MAX]  * 5 / 3;
			};
	
			self.aivar[AIV_Schwierigkeitsgrad] = 0;
		}
		else if (self.aivar[AIV_Schwierigkeitsgrad] == 2)
		|| (self.aivar[AIV_Schwierigkeitsgrad] == 4)
		{
			if (self.attribute[ATR_HITPOINTS_MAX] <= 0)
			{
				self.attribute[ATR_HITPOINTS_MAX] = 10;
				self.attribute[ATR_HITPOINTS] = 10;
			};

			self.aivar[AIV_Schwierigkeitsgrad] = 0;
		}
		else if (self.aivar[AIV_Schwierigkeitsgrad] == 3)
		{
			self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS] / 2;
			self.attribute[ATR_HITPOINTS_MAX] = self.attribute[ATR_HITPOINTS_MAX] / 2;

			if (self.attribute[ATR_HITPOINTS_MAX] <= 0)
			{
				self.attribute[ATR_HITPOINTS_MAX] = 10;
				self.attribute[ATR_HITPOINTS] = 10;
			};
	
			if (self.guild > GIL_SEPERATOR_HUM)
			&& (self.guild != GIL_ORC)
			&& (self.guild != GIL_UNDEADORC)
			&& (self.guild != GIL_FRIENDLY_ORC)
			&& (self.guild != GIL_SKELETON)
			&& (self.guild != GIL_SKELETON_MAGE)
			{
				self.attribute[ATR_STRENGTH] = self.attribute[ATR_STRENGTH] / 2;
				self.attribute[ATR_DEXTERITY] = self.attribute[ATR_DEXTERITY] / 2;
				self.attribute[ATR_MANA] = self.attribute[ATR_MANA] / 2;
				self.attribute[ATR_MANA_MAX] = self.attribute[ATR_MANA_MAX] / 2;
			};

			self.aivar[AIV_Schwierigkeitsgrad] = 0;
		};

		if (Mod_Schwierigkeit == 1)
		{
			self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS] * 3 / 10;
			self.attribute[ATR_HITPOINTS_MAX] = self.attribute[ATR_HITPOINTS_MAX] * 3 / 10;

			if (self.attribute[ATR_HITPOINTS_MAX] <= 0)
			{
				self.attribute[ATR_HITPOINTS_MAX] = 10;
				self.attribute[ATR_HITPOINTS] = 10;
			};

			if (self.guild > GIL_SEPERATOR_HUM)
			&& (self.guild != GIL_ORC)
			&& (self.guild != GIL_UNDEADORC)
			&& (self.guild != GIL_FRIENDLY_ORC)
			&& (self.guild != GIL_SKELETON)
			&& (self.guild != GIL_SKELETON_MAGE)
			{
				self.attribute[ATR_STRENGTH] = self.attribute[ATR_STRENGTH] * 3 / 5;
				self.attribute[ATR_DEXTERITY] = self.attribute[ATR_DEXTERITY] * 3 / 5;
				self.attribute[ATR_MANA] = self.attribute[ATR_MANA] * 3 / 5;
				self.attribute[ATR_MANA_MAX] = self.attribute[ATR_MANA_MAX] * 3 / 5;
			};

			self.aivar[AIV_Schwierigkeitsgrad] = 1;
		}
		else if (Mod_Schwierigkeit == 2)
		|| (Mod_Schwierigkeit == 4)
		{
			if (self.attribute[ATR_HITPOINTS_MAX] <= 0)
			{
				self.attribute[ATR_HITPOINTS_MAX] = 10;
				self.attribute[ATR_HITPOINTS] = 10;
			};

			self.aivar[AIV_Schwierigkeitsgrad] = Mod_Schwierigkeit;
		}
		else if (Mod_Schwierigkeit == 3)
		{
			self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS] * 2;
			self.attribute[ATR_HITPOINTS_MAX] = self.attribute[ATR_HITPOINTS_MAX] * 2;

			if (self.attribute[ATR_HITPOINTS_MAX] <= 0)
			{
				self.attribute[ATR_HITPOINTS_MAX] = 10;
				self.attribute[ATR_HITPOINTS] = 10;
			};

			if (self.guild > GIL_SEPERATOR_HUM)
			&& (self.guild != GIL_ORC)
			&& (self.guild != GIL_UNDEADORC)
			&& (self.guild != GIL_FRIENDLY_ORC)
			&& (self.guild != GIL_SKELETON)
			&& (self.guild != GIL_SKELETON_MAGE)
			{
				self.attribute[ATR_STRENGTH] = self.attribute[ATR_STRENGTH] * 2;
				self.attribute[ATR_DEXTERITY] = self.attribute[ATR_DEXTERITY] * 2;
				self.attribute[ATR_MANA] = self.attribute[ATR_MANA] * 2;
				self.attribute[ATR_MANA_MAX] = self.attribute[ATR_MANA_MAX] * 2;
			};

			self.aivar[AIV_Schwierigkeitsgrad] = 3;
		};

		if (self.protection[PROT_EDGE] < 1000)
		&& (self.protection[PROT_EDGE] != -1)
		{
			self.protection[PROT_EDGE] = 1000;
		};

		if (self.protection[PROT_BLUNT] < 1000)
		&& (self.protection[PROT_BLUNT] != -1)
		{
			self.protection[PROT_BLUNT] = 1000;
		};

		if (self.protection[PROT_POINT] < 1000)
		&& (self.protection[PROT_POINT] != -1)
		{
			self.protection[PROT_POINT] = 1000;
		};
	};

	self.aivar[AIV_Damage] = self.attribute[ATR_HITPOINTS];
};
