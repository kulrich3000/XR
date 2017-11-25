var int Krankheit_01;
var int Krankheit_02;
var int Krankheit_03;
var int Krankheit_04;
var int Krankheit_05;
var int Krankheit_06;

FUNC VOID Use_Bookstand_Krankheit_01_S1()		
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	

		if (Krankheit_01 == 0)
		{
			KrankheitCounter += 1;

			Krankheit_01 = KrankheitCounter;

			B_GivePlayerXP	(XP_Bookstand);

			Log_CreateTopic	(TOPIC_MOD_KRANKHEIT, LOG_NOTE);

			if (KrankheitCounter == 1)
			{
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "... they weaken the organism and consume it.");
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "There are light forms, including the common cold. It occurs when the body is exposed to cold weather with insufficient protection. Their progression is relatively smooth and even, vitality, physical strength and the other abilities decrease slightly over time. However, if the body has survived several colds at short intervals, it hardens against further colds.");
			}
			else if (KrankheitCounter == 2)
			{
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "Diseases caused by inflicting wounds in connection with dirt and rubbish are even worse. The bites of carnivorous animals and dirty, rusty weapons can poison the blood of the victim.");
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "The duration of the disease is somewhat shorter and its outbreak less noticeable. However, in the further course of time it will become increasingly stronger and the losses in skills will increase.");
			}
			else if (KrankheitCounter == 3)
			{
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "Even more mischievous are diseases that develop in decaying carcasses. The rotten bite of a monitor or contact with undead flesh can be devastating. Here, too, although the beginning is comparatively soft, the transition to a violent, protracted course is short.");
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "Even the health of a vital, strong person will suffer greatly. Needless to say, untreated, deaths often await those affected.");
			}
			else if (KrankheitCounter == 4)
			{
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "The treatment of a diseased organism should begin to strengthen it with food and drink. Strong alcoholic beverages should be avoided, while fresh fruit and vegetables are particularly beneficial. The duration, especially of the difficult phases, can thus be reduced considerably.");
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "Plenty of sleep can also help the body to overcome a disease by providing recovery for the suffering body. However, it should not be overlooked that the disease also progresses during sleep.");
			}
			else if (KrankheitCounter == 5)
			{
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "The patient may be surprised by a severe phase of sleep and die if the treatment has not been supported by external means.");
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "Among the most effective of these are plants with healing properties and the potions brewed from them, which every expert alchemist offers for sale.");
			}
			else if (KrankheitCounter == 6)
			{
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "If a human being survives several diseases transmitted by creatures, he becomes increasingly resistant. The body learns to fight the specific disease better and thus to reduce its consequences.");
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "The probability of getting the same disease again decreases. Since the body is also trained to deal with illnesses, it can react more quickly. The duration of all diseases decreases.");
			};
		};

		B_ShowKrankheitText (Krankheit_01);
	};
};

FUNC VOID Use_Bookstand_Krankheit_02_S1()		
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	

		if (Krankheit_02 == 0)
		{
			KrankheitCounter += 1;

			Krankheit_02 = KrankheitCounter;

			B_GivePlayerXP	(XP_Bookstand);

			Log_CreateTopic	(TOPIC_MOD_KRANKHEIT, LOG_NOTE);

			if (KrankheitCounter == 1)
			{
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "... they weaken the organism and consume it.");
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "There are light forms, including the common cold. It occurs when the body is exposed to cold weather with insufficient protection. Their progression is relatively smooth and even, vitality, physical strength and the other abilities decrease slightly over time. However, if the body has survived several colds at short intervals, it hardens against further colds.");
			}
			else if (KrankheitCounter == 2)
			{
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "Diseases caused by inflicting wounds in connection with dirt and rubbish are even worse. The bites of carnivorous animals and dirty, rusty weapons can poison the blood of the victim.");
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "The duration of the disease is somewhat shorter and its outbreak less noticeable. However, in the further course of time it will become increasingly stronger and the losses in skills will increase.");
			}
			else if (KrankheitCounter == 3)
			{
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "Even more mischievous are diseases that develop in decaying carcasses. The rotten bite of a monitor or contact with undead flesh can be devastating. Here, too, although the beginning is comparatively soft, the transition to a violent, protracted course is short.");
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "Even the health of a vital, strong person will suffer greatly. Needless to say, untreated, deaths often await those affected.");
			}
			else if (KrankheitCounter == 4)
			{
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "The treatment of a diseased organism should begin to strengthen it with food and drink. Strong alcoholic beverages should be avoided, while fresh fruit and vegetables are particularly beneficial. The duration, especially of the difficult phases, can thus be reduced considerably.");
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "Plenty of sleep can also help the body to overcome a disease by providing recovery for the suffering body. However, it should not be overlooked that the disease also progresses during sleep.");
			}
			else if (KrankheitCounter == 5)
			{
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "The patient may be surprised by a severe phase of sleep and die if the treatment has not been supported by external means.");
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "Among the most effective of these are plants with healing properties and the potions brewed from them, which every expert alchemist offers for sale.");
			}
			else if (KrankheitCounter == 6)
			{
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "If a human being survives several diseases transmitted by creatures, he becomes increasingly resistant. The body learns to fight the specific disease better and thus to reduce its consequences.");
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "The probability of getting the same disease again decreases. Since the body is also trained to deal with illnesses, it can react more quickly. The duration of all diseases decreases.");
			};
		};

		B_ShowKrankheitText (Krankheit_02);
	};
};

FUNC VOID Use_Bookstand_Krankheit_03_S1()		
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	

		if (Krankheit_03 == 0)
		{
			KrankheitCounter += 1;

			Krankheit_03 = KrankheitCounter;

			B_GivePlayerXP	(XP_Bookstand);

			Log_CreateTopic	(TOPIC_MOD_KRANKHEIT, LOG_NOTE);

			if (KrankheitCounter == 1)
			{
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "... they weaken the organism and consume it.");
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "There are light forms, including the common cold. It occurs when the body is exposed to cold weather with insufficient protection. Their progression is relatively smooth and even, vitality, physical strength and the other abilities decrease slightly over time. However, if the body has survived several colds at short intervals, it hardens against further colds.");
			}
			else if (KrankheitCounter == 2)
			{
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "Diseases caused by inflicting wounds in connection with dirt and rubbish are even worse. The bites of carnivorous animals and dirty, rusty weapons can poison the blood of the victim.");
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "The duration of the disease is somewhat shorter and its outbreak less noticeable. However, in the further course of time it will become increasingly stronger and the losses in skills will increase.");
			}
			else if (KrankheitCounter == 3)
			{
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "Even more mischievous are diseases that develop in decaying carcasses. The rotten bite of a monitor or contact with undead flesh can be devastating. Here, too, although the beginning is comparatively soft, the transition to a violent, protracted course is short.");
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "Even the health of a vital, strong person will suffer greatly. Needless to say, untreated, deaths often await those affected.");
			}
			else if (KrankheitCounter == 4)
			{
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "The treatment of a diseased organism should begin to strengthen it with food and drink. Strong alcoholic beverages should be avoided, while fresh fruit and vegetables are particularly beneficial. The duration, especially of the difficult phases, can thus be reduced considerably.");
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "Plenty of sleep can also help the body to overcome a disease by providing recovery for the suffering body. However, it should not be overlooked that the disease also progresses during sleep.");
			}
			else if (KrankheitCounter == 5)
			{
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "The patient may be surprised by a severe phase of sleep and die if the treatment has not been supported by external means.");
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "Among the most effective of these are plants with healing properties and the potions brewed from them, which every expert alchemist offers for sale.");
			}
			else if (KrankheitCounter == 6)
			{
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "If a human being survives several diseases transmitted by creatures, he becomes increasingly resistant. The body learns to fight the specific disease better and thus to reduce its consequences.");
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "The probability of getting the same disease again decreases. Since the body is also trained to deal with illnesses, it can react more quickly. The duration of all diseases decreases.");
			};
		};

		B_ShowKrankheitText (Krankheit_03);
	};
};

FUNC VOID Use_Bookstand_Krankheit_04_S1()		
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	

		if (Krankheit_04 == 0)
		{
			KrankheitCounter += 1;

			Krankheit_04 = KrankheitCounter;

			B_GivePlayerXP	(XP_Bookstand);

			Log_CreateTopic	(TOPIC_MOD_KRANKHEIT, LOG_NOTE);

			if (KrankheitCounter == 1)
			{
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "... they weaken the organism and consume it.");
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "There are light forms, including the common cold. It occurs when the body is exposed to cold weather with insufficient protection. Their progression is relatively smooth and even, vitality, physical strength and the other abilities decrease slightly over time. However, if the body has survived several colds at short intervals, it hardens against further colds.");
			}
			else if (KrankheitCounter == 2)
			{
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "Diseases caused by inflicting wounds in connection with dirt and rubbish are even worse. The bites of carnivorous animals and dirty, rusty weapons can poison the blood of the victim.");
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "The duration of the disease is somewhat shorter and its outbreak less noticeable. However, in the further course of time it will become increasingly stronger and the losses in skills will increase.");
			}
			else if (KrankheitCounter == 3)
			{
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "Even more mischievous are diseases that develop in decaying carcasses. The rotten bite of a monitor or contact with undead flesh can be devastating. Here, too, although the beginning is comparatively soft, the transition to a violent, protracted course is short.");
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "Even the health of a vital, strong person will suffer greatly. Needless to say, untreated, deaths often await those affected.");
			}
			else if (KrankheitCounter == 4)
			{
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "The treatment of a diseased organism should begin to strengthen it with food and drink. Strong alcoholic beverages should be avoided, while fresh fruit and vegetables are particularly beneficial. The duration, especially of the difficult phases, can thus be reduced considerably.");
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "Plenty of sleep can also help the body to overcome a disease by providing recovery for the suffering body. However, it should not be overlooked that the disease also progresses during sleep.");
			}
			else if (KrankheitCounter == 5)
			{
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "The patient may be surprised by a severe phase of sleep and die if the treatment has not been supported by external means.");
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "Among the most effective of these are plants with healing properties and the potions brewed from them, which every expert alchemist offers for sale.");
			}
			else if (KrankheitCounter == 6)
			{
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "If a human being survives several diseases transmitted by creatures, he becomes increasingly resistant. The body learns to fight the specific disease better and thus to reduce its consequences.");
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "The probability of getting the same disease again decreases. Since the body is also trained to deal with illnesses, it can react more quickly. The duration of all diseases decreases.");
			};
		};

		B_ShowKrankheitText (Krankheit_04);
	};
};

FUNC VOID Use_Bookstand_Krankheit_05_S1()		
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	

		if (Krankheit_05 == 0)
		{
			KrankheitCounter += 1;

			Krankheit_05 = KrankheitCounter;

			B_GivePlayerXP	(XP_Bookstand);

			Log_CreateTopic	(TOPIC_MOD_KRANKHEIT, LOG_NOTE);

			if (KrankheitCounter == 1)
			{
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "... they weaken the organism and consume it.");
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "There are light forms, including the common cold. It occurs when the body is exposed to cold weather with insufficient protection. Their progression is relatively smooth and even, vitality, physical strength and the other abilities decrease slightly over time. However, if the body has survived several colds at short intervals, it hardens against further colds.");
			}
			else if (KrankheitCounter == 2)
			{
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "Diseases caused by inflicting wounds in connection with dirt and rubbish are even worse. The bites of carnivorous animals and dirty, rusty weapons can poison the blood of the victim.");
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "The duration of the disease is somewhat shorter and its outbreak less noticeable. However, in the further course of time it will become increasingly stronger and the losses in skills will increase.");
			}
			else if (KrankheitCounter == 3)
			{
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "Even more mischievous are diseases that develop in decaying carcasses. The rotten bite of a monitor or contact with undead flesh can be devastating. Here, too, although the beginning is comparatively soft, the transition to a violent, protracted course is short.");
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "Even the health of a vital, strong person will suffer greatly. Needless to say, untreated, deaths often await those affected.");
			}
			else if (KrankheitCounter == 4)
			{
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "The treatment of a diseased organism should begin to strengthen it with food and drink. Strong alcoholic beverages should be avoided, while fresh fruit and vegetables are particularly beneficial. The duration, especially of the difficult phases, can thus be reduced considerably.");
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "Plenty of sleep can also help the body to overcome a disease by providing recovery for the suffering body. However, it should not be overlooked that the disease also progresses during sleep.");
			}
			else if (KrankheitCounter == 5)
			{
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "The patient may be surprised by a severe phase of sleep and die if the treatment has not been supported by external means.");
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "Among the most effective of these are plants with healing properties and the potions brewed from them, which every expert alchemist offers for sale.");
			}
			else if (KrankheitCounter == 6)
			{
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "If a human being survives several diseases transmitted by creatures, he becomes increasingly resistant. The body learns to fight the specific disease better and thus to reduce its consequences.");
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "The probability of getting the same disease again decreases. Since the body is also trained to deal with illnesses, it can react more quickly. The duration of all diseases decreases.");
			};
		};

		B_ShowKrankheitText (Krankheit_05);
	};
};

FUNC VOID Use_Bookstand_Krankheit_06_S1()		
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	

		if (Krankheit_06 == 0)
		{
			KrankheitCounter += 1;

			Krankheit_06 = KrankheitCounter;

			B_GivePlayerXP	(XP_Bookstand);

			Log_CreateTopic	(TOPIC_MOD_KRANKHEIT, LOG_NOTE);

			if (KrankheitCounter == 1)
			{
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "... they weaken the organism and consume it.");
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "There are light forms, including the common cold. It occurs when the body is exposed to cold weather with insufficient protection. Their progression is relatively smooth and even, vitality, physical strength and the other abilities decrease slightly over time. However, if the body has survived several colds at short intervals, it hardens against further colds.");
			}
			else if (KrankheitCounter == 2)
			{
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "Diseases caused by inflicting wounds in connection with dirt and rubbish are even worse. The bites of carnivorous animals and dirty, rusty weapons can poison the blood of the victim.");
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "The duration of the disease is somewhat shorter and its outbreak less noticeable. However, in the further course of time it will become increasingly stronger and the losses in skills will increase.");
			}
			else if (KrankheitCounter == 3)
			{
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "Even more mischievous are diseases that develop in decaying carcasses. The rotten bite of a monitor or contact with undead flesh can be devastating. Here, too, although the beginning is comparatively soft, the transition to a violent, protracted course is short.");
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "Even the health of a vital, strong person will suffer greatly. Needless to say, untreated, deaths often await those affected.");
			}
			else if (KrankheitCounter == 4)
			{
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "The treatment of a diseased organism should begin to strengthen it with food and drink. Strong alcoholic beverages should be avoided, while fresh fruit and vegetables are particularly beneficial. The duration, especially of the difficult phases, can thus be reduced considerably.");
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "Plenty of sleep can also help the body to overcome a disease by providing recovery for the suffering body. However, it should not be overlooked that the disease also progresses during sleep.");
			}
			else if (KrankheitCounter == 5)
			{
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "The patient may be surprised by a severe phase of sleep and die if the treatment has not been supported by external means.");
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "Among the most effective of these are plants with healing properties and the potions brewed from them, which every expert alchemist offers for sale.");
			}
			else if (KrankheitCounter == 6)
			{
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "If a human being survives several diseases transmitted by creatures, he becomes increasingly resistant. The body learns to fight the specific disease better and thus to reduce its consequences.");
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "The probability of getting the same disease again decreases. Since the body is also trained to deal with illnesses, it can react more quickly. The duration of all diseases decreases.");
			};
		};

		B_ShowKrankheitText (Krankheit_06);
	};
};
