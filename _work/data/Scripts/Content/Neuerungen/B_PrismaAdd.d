FUNC VOID B_PrismaAdd(var int damage) {
	if (!Npc_IsInFightMode(hero, FMODE_MAGIC)) {
		return;
	};

	if (Mod_PrismaAngelegt == 0) {
		return;
	};

	damage = damage / 2;

	if (damage >= hero.attribute[ATR_HITPOINTS]) {
		Print	("I'm not strong enough.");

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
			B_LogEntry	(TOPIC_MOD_PRISMA, "I have now found out what the disadvantage of the prism is: when I charge it, it feels like a part of my self is being snatched away, and I am getting weaker.");
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
