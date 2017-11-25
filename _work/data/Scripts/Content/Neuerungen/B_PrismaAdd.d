FUNC VOID B_PrismaAdd(var int damage) {
	if (!Npc_IsInFightMode(hero, FMODE_MAGIC)) {
		return;
	};

	if (Mod_PrismaAngelegt == 0) {
		return;
	};

	damage = damage / 2;

	if (damage >= hero.attribute[ATR_HITPOINTS]) {
		Print	("Nie jestem wystarczajaco silny.");

		return;
	};

	if (Mod_Prisma_Array[2] == 0) {
		if (Mod_Prisma_Array[0] == 0) {
			Mod_Prisma_Array[0] = damage;
			View_SetTexture(Mod_View_Prisma, "PRISMA_1.TGA");
		} else if (Mod_Prisma_Array[1] == 0) {
			Mod_Prisma_Array[1] = damage;
			View_SetTexture(Mod_View_Prisma, "PRISMA_2.TGA");
		} else if (Mod_Prisma_Array[2] == 0) {
			Mod_Prisma_Array[2] = damage;
			View_SetTexture(Mod_View_Prisma, "PRISMA_3.TGA");
		};

		if (Mod_Prisma_Start == FALSE) {
			Mod_Prisma_Start = TRUE;

			Log_CreateTopic	(TOPIC_MOD_PRISMA, LOG_NOTE);
			B_LogEntry	(TOPIC_MOD_PRISMA, "Dowiedzialem sie teraz, jaka jest wada pryzmatu: kiedy naladuje go, czuje, ze czesc mojego 'ja' zostaje oderwana, a ja slabnie.");
		};

		B_MagicHurtNpc	(hero, hero, damage);

		hero.attribute[ATR_HITPOINTS_MAX] -= damage;
	};
};

FUNC VOID B_KillWithPrisma(var C_NPC slf)
{
	if (Npc_IsDead(slf))
	{
		return;
	};

	if (Npc_GetDistToNpc(slf, hero) > 500)
	{
		return;
	};

	if (Hlp_GetInstanceID(slf) == Hlp_GetInstanceID(hero))
	{
		return;
	};

	B_MagicHurtNpc (hero, slf, Mod_Prisma_Array[0] + Mod_Prisma_Array[1] + Mod_Prisma_Array[2]);
};
