var int Gift_01;
var int Gift_02;
var int Gift_03;
var int Gift_04;
var int Gift_05;
var int Gift_06;

FUNC VOID Use_Bookstand_Gift_01_S1()		
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	

		if (Gift_01 == 0)
		{
			GiftCounter += 1;

			Gift_01 = GiftCounter;

			B_GivePlayerXP	(XP_Bookstand);

			Log_CreateTopic	(TOPIC_MOD_GIFT, LOG_NOTE);

			if (GiftCounter == 1)
			{
				B_LogEntry	(TOPIC_MOD_GIFT, "... reach the body and develop their harmful effects. Health suffers constant damage over a certain period of time until the poison is neutralized or eliminated by the organism.");
				B_LogEntry	(TOPIC_MOD_GIFT, "The toxins are divided into different groups. Waxes identify one of them. Whether they are poisonous mushrooms or plants, they take effect with a certain delay when consumed, as they are only gradually absorbed.");
			}
			else if (GiftCounter == 2)
			{
				B_LogEntry	(TOPIC_MOD_GIFT, "However, if they enter the bloodstream directly, their effect is immediate. They appear to be much stronger but shorter. It is reported that some people and other reasonably gifted creatures deliberately use their weapons to poison opponents in battle.");
				B_LogEntry	(TOPIC_MOD_GIFT, "However, if a person survives several poisonings, he becomes increasingly resistant. The body learns to break down the special poison more quickly, until it becomes completely immune after numerous poisonings. In addition, the harmful effect of other plant toxins is also reduced, as they are similarly composed.");
			}
			else if (GiftCounter == 3)
			{
				B_LogEntry	(TOPIC_MOD_GIFT, "Another group of poisons originates from the animal kingdom. Mostly transmitted by insects, they enter the bloodstream immediately by spikes and pincers of the animal. The effect is usually shorter, but a little more intense than with plant toxins. Animal poisons are much less common on weapon blades, as sourcing is more expensive.");
				B_LogEntry	(TOPIC_MOD_GIFT, "Here, too, growing resistance can be seen as the number of poisonings increases. Similarly, as with plant toxins, the duration of action decreases with a certain animal poison to complete immunity. At the same time, the harmful effect of all animal toxins is reduced, as they are based on similar mechanisms and the organism learns to better counteract their effects.");
			}
			else if (GiftCounter == 4)
			{
				B_LogEntry	(TOPIC_MOD_GIFT, "The last important group to be mentioned are toxic vapours. Their effect is immediate and intense, even if usually limited to a few seconds. Although the body can also become resistant over time, the vapours have an additional corrosive effect and rob the affected person of air to breathe, so that one never completely harmlessly escapes.");
				B_LogEntry	(TOPIC_MOD_GIFT, "However, no matter what form of toxins the body has been exposed to, the experience increases in order to avoid any kind of poisoning.");
			}
			else if (GiftCounter == 5)
			{
				B_LogEntry	(TOPIC_MOD_GIFT, "However, once poisoning has occurred, it is not enough with a simple medicinal plant because the poison remains in the body.");
				B_LogEntry	(TOPIC_MOD_GIFT, "A plant called a healing bud, however, is reported to suddenly cancel out the effect of any poisoning.");
			}
			else if (GiftCounter == 6)
			{
				B_LogEntry	(TOPIC_MOD_GIFT, "Even knowledgeable alchemists are able to produce antipoisons, which not only cancel existing poisonings, but also have a short time after-effect and offer protection against further poisonings.");
				B_LogEntry	(TOPIC_MOD_GIFT, "However, if these remedies are not available, at least the intake of plenty of liquid can help to flush the poison out of the body more quickly...");
			};
		};

		B_ShowGiftText (Gift_01);
	};
};

FUNC VOID Use_Bookstand_Gift_02_S1()		
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	

		if (Gift_02 == 0)
		{
			GiftCounter += 1;

			Gift_02 = GiftCounter;

			B_GivePlayerXP	(XP_Bookstand);

			Log_CreateTopic	(TOPIC_MOD_GIFT, LOG_NOTE);

			if (GiftCounter == 1)
			{
				B_LogEntry	(TOPIC_MOD_GIFT, "... reach the body and develop their harmful effects. Health suffers constant damage over a certain period of time until the poison is neutralized or eliminated by the organism.");
				B_LogEntry	(TOPIC_MOD_GIFT, "The toxins are divided into different groups. Waxes identify one of them. Whether they are poisonous mushrooms or plants, they take effect with a certain delay when consumed, as they are only gradually absorbed.");
			}
			else if (GiftCounter == 2)
			{
				B_LogEntry	(TOPIC_MOD_GIFT, "However, if they enter the bloodstream directly, their effect is immediate. They appear to be much stronger but shorter. It is reported that some people and other reasonably gifted creatures deliberately use their weapons to poison opponents in battle.");
				B_LogEntry	(TOPIC_MOD_GIFT, "However, if a person survives several poisonings, he becomes increasingly resistant. The body learns to break down the special poison more quickly, until it becomes completely immune after numerous poisonings. In addition, the harmful effect of other plant toxins is also reduced, as they are similarly composed.");
			}
			else if (GiftCounter == 3)
			{
				B_LogEntry	(TOPIC_MOD_GIFT, "Another group of poisons originates from the animal kingdom. Mostly transmitted by insects, they enter the bloodstream immediately by spikes and pincers of the animal. The effect is usually shorter, but a little more intense than with plant toxins. Animal poisons are much less common on weapon blades, as sourcing is more expensive.");
				B_LogEntry	(TOPIC_MOD_GIFT, "Here, too, growing resistance can be seen as the number of poisonings increases. Similarly, as with plant toxins, the duration of action decreases with a certain animal poison to complete immunity. At the same time, the harmful effect of all animal toxins is reduced, as they are based on similar mechanisms and the organism learns to better counteract their effects.");
			}
			else if (GiftCounter == 4)
			{
				B_LogEntry	(TOPIC_MOD_GIFT, "The last important group to be mentioned are toxic vapours. Their effect is immediate and intense, even if usually limited to a few seconds. Although the body can also become resistant over time, the vapours have an additional corrosive effect and rob the affected person of air to breathe, so that one never completely harmlessly escapes.");
				B_LogEntry	(TOPIC_MOD_GIFT, "However, no matter what form of toxins the body has been exposed to, the experience increases in order to avoid any kind of poisoning.");
			}
			else if (GiftCounter == 5)
			{
				B_LogEntry	(TOPIC_MOD_GIFT, "However, once poisoning has occurred, it is not enough with a simple medicinal plant because the poison remains in the body.");
				B_LogEntry	(TOPIC_MOD_GIFT, "A plant called a healing bud, however, is reported to suddenly cancel out the effect of any poisoning.");
			}
			else if (GiftCounter == 6)
			{
				B_LogEntry	(TOPIC_MOD_GIFT, "Even knowledgeable alchemists are able to produce antipoisons, which not only cancel existing poisonings, but also have a short time after-effect and offer protection against further poisonings.");
				B_LogEntry	(TOPIC_MOD_GIFT, "However, if these remedies are not available, at least the intake of plenty of liquid can help to flush the poison out of the body more quickly...");
			};
		};

		B_ShowGiftText (Gift_02);
	};
};

FUNC VOID Use_Bookstand_Gift_03_S1()		
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	

		if (Gift_03 == 0)
		{
			GiftCounter += 1;

			Gift_03 = GiftCounter;

			B_GivePlayerXP	(XP_Bookstand);

			Log_CreateTopic	(TOPIC_MOD_GIFT, LOG_NOTE);

			if (GiftCounter == 1)
			{
				B_LogEntry	(TOPIC_MOD_GIFT, "... reach the body and develop their harmful effects. Health suffers constant damage over a certain period of time until the poison is neutralized or eliminated by the organism.");
				B_LogEntry	(TOPIC_MOD_GIFT, "The toxins are divided into different groups. Waxes identify one of them. Whether they are poisonous mushrooms or plants, they take effect with a certain delay when consumed, as they are only gradually absorbed.");
			}
			else if (GiftCounter == 2)
			{
				B_LogEntry	(TOPIC_MOD_GIFT, "However, if they enter the bloodstream directly, their effect is immediate. They appear to be much stronger but shorter. It is reported that some people and other reasonably gifted creatures deliberately use their weapons to poison opponents in battle.");
				B_LogEntry	(TOPIC_MOD_GIFT, "However, if a person survives several poisonings, he becomes increasingly resistant. The body learns to break down the special poison more quickly, until it becomes completely immune after numerous poisonings. In addition, the harmful effect of other plant toxins is also reduced, as they are similarly composed.");
			}
			else if (GiftCounter == 3)
			{
				B_LogEntry	(TOPIC_MOD_GIFT, "Another group of poisons originates from the animal kingdom. Mostly transmitted by insects, they enter the bloodstream immediately by spikes and pincers of the animal. The effect is usually shorter, but a little more intense than with plant toxins. Animal poisons are much less common on weapon blades, as sourcing is more expensive.");
				B_LogEntry	(TOPIC_MOD_GIFT, "Here, too, growing resistance can be seen as the number of poisonings increases. Similarly, as with plant toxins, the duration of action decreases with a certain animal poison to complete immunity. At the same time, the harmful effect of all animal toxins is reduced, as they are based on similar mechanisms and the organism learns to better counteract their effects.");
			}
			else if (GiftCounter == 4)
			{
				B_LogEntry	(TOPIC_MOD_GIFT, "The last important group to be mentioned are toxic vapours. Their effect is immediate and intense, even if usually limited to a few seconds. Although the body can also become resistant over time, the vapours have an additional corrosive effect and rob the affected person of air to breathe, so that one never completely harmlessly escapes.");
				B_LogEntry	(TOPIC_MOD_GIFT, "However, no matter what form of toxins the body has been exposed to, the experience increases in order to avoid any kind of poisoning.");
			}
			else if (GiftCounter == 5)
			{
				B_LogEntry	(TOPIC_MOD_GIFT, "However, once poisoning has occurred, it is not enough with a simple medicinal plant because the poison remains in the body.");
				B_LogEntry	(TOPIC_MOD_GIFT, "A plant called a healing bud, however, is reported to suddenly cancel out the effect of any poisoning.");
			}
			else if (GiftCounter == 6)
			{
				B_LogEntry	(TOPIC_MOD_GIFT, "Even knowledgeable alchemists are able to produce antipoisons, which not only cancel existing poisonings, but also have a short time after-effect and offer protection against further poisonings.");
				B_LogEntry	(TOPIC_MOD_GIFT, "However, if these remedies are not available, at least the intake of plenty of liquid can help to flush the poison out of the body more quickly...");
			};
		};

		B_ShowGiftText (Gift_03);
	};
};

FUNC VOID Use_Bookstand_Gift_04_S1()		
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	

		if (Gift_04 == 0)
		{
			GiftCounter += 1;

			Gift_04 = GiftCounter;

			B_GivePlayerXP	(XP_Bookstand);

			Log_CreateTopic	(TOPIC_MOD_GIFT, LOG_NOTE);

			if (GiftCounter == 1)
			{
				B_LogEntry	(TOPIC_MOD_GIFT, "... reach the body and develop their harmful effects. Health suffers constant damage over a certain period of time until the poison is neutralized or eliminated by the organism.");
				B_LogEntry	(TOPIC_MOD_GIFT, "The toxins are divided into different groups. Waxes identify one of them. Whether they are poisonous mushrooms or plants, they take effect with a certain delay when consumed, as they are only gradually absorbed.");
			}
			else if (GiftCounter == 2)
			{
				B_LogEntry	(TOPIC_MOD_GIFT, "However, if they enter the bloodstream directly, their effect is immediate. They appear to be much stronger but shorter. It is reported that some people and other reasonably gifted creatures deliberately use their weapons to poison opponents in battle.");
				B_LogEntry	(TOPIC_MOD_GIFT, "However, if a person survives several poisonings, he becomes increasingly resistant. The body learns to break down the special poison more quickly, until it becomes completely immune after numerous poisonings. In addition, the harmful effect of other plant toxins is also reduced, as they are similarly composed.");
			}
			else if (GiftCounter == 3)
			{
				B_LogEntry	(TOPIC_MOD_GIFT, "Another group of poisons originates from the animal kingdom. Mostly transmitted by insects, they enter the bloodstream immediately by spikes and pincers of the animal. The effect is usually shorter, but a little more intense than with plant toxins. Animal poisons are much less common on weapon blades, as sourcing is more expensive.");
				B_LogEntry	(TOPIC_MOD_GIFT, "Here, too, growing resistance can be seen as the number of poisonings increases. Similarly, as with plant toxins, the duration of action decreases with a certain animal poison to complete immunity. At the same time, the harmful effect of all animal toxins is reduced, as they are based on similar mechanisms and the organism learns to better counteract their effects.");
			}
			else if (GiftCounter == 4)
			{
				B_LogEntry	(TOPIC_MOD_GIFT, "The last important group to be mentioned are toxic vapours. Their effect is immediate and intense, even if usually limited to a few seconds. Although the body can also become resistant over time, the vapours have an additional corrosive effect and rob the affected person of air to breathe, so that one never completely harmlessly escapes.");
				B_LogEntry	(TOPIC_MOD_GIFT, "However, no matter what form of toxins the body has been exposed to, the experience increases in order to avoid any kind of poisoning.");
			}
			else if (GiftCounter == 5)
			{
				B_LogEntry	(TOPIC_MOD_GIFT, "However, once poisoning has occurred, it is not enough with a simple medicinal plant because the poison remains in the body.");
				B_LogEntry	(TOPIC_MOD_GIFT, "A plant called a healing bud, however, is reported to suddenly cancel out the effect of any poisoning.");
			}
			else if (GiftCounter == 6)
			{
				B_LogEntry	(TOPIC_MOD_GIFT, "Even knowledgeable alchemists are able to produce antipoisons, which not only cancel existing poisonings, but also have a short time after-effect and offer protection against further poisonings.");
				B_LogEntry	(TOPIC_MOD_GIFT, "However, if these remedies are not available, at least the intake of plenty of liquid can help to flush the poison out of the body more quickly...");
			};
		};

		B_ShowGiftText (Gift_04);
	};
};

FUNC VOID Use_Bookstand_Gift_05_S1()		
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	

		if (Gift_05 == 0)
		{
			GiftCounter += 1;

			Gift_05 = GiftCounter;

			B_GivePlayerXP	(XP_Bookstand);

			Log_CreateTopic	(TOPIC_MOD_GIFT, LOG_NOTE);

			if (GiftCounter == 1)
			{
				B_LogEntry	(TOPIC_MOD_GIFT, "... reach the body and develop their harmful effects. Health suffers constant damage over a certain period of time until the poison is neutralized or eliminated by the organism.");
				B_LogEntry	(TOPIC_MOD_GIFT, "The toxins are divided into different groups. Waxes identify one of them. Whether they are poisonous mushrooms or plants, they take effect with a certain delay when consumed, as they are only gradually absorbed.");
			}
			else if (GiftCounter == 2)
			{
				B_LogEntry	(TOPIC_MOD_GIFT, "However, if they enter the bloodstream directly, their effect is immediate. They appear to be much stronger but shorter. It is reported that some people and other reasonably gifted creatures deliberately use their weapons to poison opponents in battle.");
				B_LogEntry	(TOPIC_MOD_GIFT, "However, if a person survives several poisonings, he becomes increasingly resistant. The body learns to break down the special poison more quickly, until it becomes completely immune after numerous poisonings. In addition, the harmful effect of other plant toxins is also reduced, as they are similarly composed.");
			}
			else if (GiftCounter == 3)
			{
				B_LogEntry	(TOPIC_MOD_GIFT, "Another group of poisons originates from the animal kingdom. Mostly transmitted by insects, they enter the bloodstream immediately by spikes and pincers of the animal. The effect is usually shorter, but a little more intense than with plant toxins. Animal poisons are much less common on weapon blades, as sourcing is more expensive.");
				B_LogEntry	(TOPIC_MOD_GIFT, "Here, too, growing resistance can be seen as the number of poisonings increases. Similarly, as with plant toxins, the duration of action decreases with a certain animal poison to complete immunity. At the same time, the harmful effect of all animal toxins is reduced, as they are based on similar mechanisms and the organism learns to better counteract their effects.");
			}
			else if (GiftCounter == 4)
			{
				B_LogEntry	(TOPIC_MOD_GIFT, "The last important group to be mentioned are toxic vapours. Their effect is immediate and intense, even if usually limited to a few seconds. Although the body can also become resistant over time, the vapours have an additional corrosive effect and rob the affected person of air to breathe, so that one never completely harmlessly escapes.");
				B_LogEntry	(TOPIC_MOD_GIFT, "However, no matter what form of toxins the body has been exposed to, the experience increases in order to avoid any kind of poisoning.");
			}
			else if (GiftCounter == 5)
			{
				B_LogEntry	(TOPIC_MOD_GIFT, "However, once poisoning has occurred, it is not enough with a simple medicinal plant because the poison remains in the body.");
				B_LogEntry	(TOPIC_MOD_GIFT, "A plant called a healing bud, however, is reported to suddenly cancel out the effect of any poisoning.");
			}
			else if (GiftCounter == 6)
			{
				B_LogEntry	(TOPIC_MOD_GIFT, "Even knowledgeable alchemists are able to produce antipoisons, which not only cancel existing poisonings, but also have a short time after-effect and offer protection against further poisonings.");
				B_LogEntry	(TOPIC_MOD_GIFT, "However, if these remedies are not available, at least the intake of plenty of liquid can help to flush the poison out of the body more quickly...");
			};
		};

		B_ShowGiftText (Gift_05);
	};
};

FUNC VOID Use_Bookstand_Gift_06_S1()		
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	

		if (Gift_06 == 0)
		{
			GiftCounter += 1;

			Gift_06 = GiftCounter;

			B_GivePlayerXP	(XP_Bookstand);

			Log_CreateTopic	(TOPIC_MOD_GIFT, LOG_NOTE);

			if (GiftCounter == 1)
			{
				B_LogEntry	(TOPIC_MOD_GIFT, "... reach the body and develop their harmful effects. Health suffers constant damage over a certain period of time until the poison is neutralized or eliminated by the organism.");
				B_LogEntry	(TOPIC_MOD_GIFT, "The toxins are divided into different groups. Waxes identify one of them. Whether they are poisonous mushrooms or plants, they take effect with a certain delay when consumed, as they are only gradually absorbed.");
			}
			else if (GiftCounter == 2)
			{
				B_LogEntry	(TOPIC_MOD_GIFT, "However, if they enter the bloodstream directly, their effect is immediate. They appear to be much stronger but shorter. It is reported that some people and other reasonably gifted creatures deliberately use their weapons to poison opponents in battle.");
				B_LogEntry	(TOPIC_MOD_GIFT, "However, if a person survives several poisonings, he becomes increasingly resistant. The body learns to break down the special poison more quickly, until it becomes completely immune after numerous poisonings. In addition, the harmful effect of other plant toxins is also reduced, as they are similarly composed.");
			}
			else if (GiftCounter == 3)
			{
				B_LogEntry	(TOPIC_MOD_GIFT, "Another group of poisons originates from the animal kingdom. Mostly transmitted by insects, they enter the bloodstream immediately by spikes and pincers of the animal. The effect is usually shorter, but a little more intense than with plant toxins. Animal poisons are much less common on weapon blades, as sourcing is more expensive.");
				B_LogEntry	(TOPIC_MOD_GIFT, "Here, too, growing resistance can be seen as the number of poisonings increases. Similarly, as with plant toxins, the duration of action decreases with a certain animal poison to complete immunity. At the same time, the harmful effect of all animal toxins is reduced, as they are based on similar mechanisms and the organism learns to better counteract their effects.");
			}
			else if (GiftCounter == 4)
			{
				B_LogEntry	(TOPIC_MOD_GIFT, "The last important group to be mentioned are toxic vapours. Their effect is immediate and intense, even if usually limited to a few seconds. Although the body can also become resistant over time, the vapours have an additional corrosive effect and rob the affected person of air to breathe, so that one never completely harmlessly escapes.");
				B_LogEntry	(TOPIC_MOD_GIFT, "However, no matter what form of toxins the body has been exposed to, the experience increases in order to avoid any kind of poisoning.");
			}
			else if (GiftCounter == 5)
			{
				B_LogEntry	(TOPIC_MOD_GIFT, "However, once poisoning has occurred, it is not enough with a simple medicinal plant because the poison remains in the body.");
				B_LogEntry	(TOPIC_MOD_GIFT, "A plant called a healing bud, however, is reported to suddenly cancel out the effect of any poisoning.");
			}
			else if (GiftCounter == 6)
			{
				B_LogEntry	(TOPIC_MOD_GIFT, "Even knowledgeable alchemists are able to produce antipoisons, which not only cancel existing poisonings, but also have a short time after-effect and offer protection against further poisonings.");
				B_LogEntry	(TOPIC_MOD_GIFT, "However, if these remedies are not available, at least the intake of plenty of liquid can help to flush the poison out of the body more quickly...");
			};
		};

		B_ShowGiftText (Gift_06);
	};
};
