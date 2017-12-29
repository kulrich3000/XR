// ***************
// B_Announce_Herold 
// ***************

func void B_Announce_Herold ()
{
	var int randy;

	var int rnd;

	if ( C_BodystateContains(self, BS_SIT) )
	{
		AI_StandUp		(self);
		B_TurnToNpc		(self,	hero);
	};
	
	// ------ NSC steckt ggf. Waffe weg ------
	AI_RemoveWeapon (self);
	
	CreateInvItem		(self,	Fakescroll);
	AI_UseItemToState	(self,	Fakescroll,	1);
	AI_UseItemToState	(self,	Fakescroll,	-1);

	AI_Output (self,self,"Info_Mod_Herold_Announce_04_00"); //Hear ye, hear ye!
	
	if (Npc_KnowsInfo(hero, Info_Mod_Herold_Flugblaetter))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Matteo_Flugblaetter))
	{
		AI_Output (self,self,"Info_Mod_Herold_Announce_04_01"); //You're hungry and not much gold? Then go to Matteo in the merchant quarter, where you can get all the groceries at a good price.
		AI_Output (self,self,"Info_Mod_Herold_Announce_04_02"); //For a short time there is even cheese on offer, so hurry up.
		AI_Output (self,self,"Info_Mod_Herold_Announce_04_03"); //Or take a break from his free beer stand. Sometimes the work can also wait.

		AI_GotoWp	(self, "WP_HEROLD_BIERHOLEN");

		CreateInvItems	(self, ItFo_Beer, 1);

		B_UseItem	(self, ItFo_Beer);

		AI_GotoWP	(self, self.wp);

		AI_AlignToWP	(self);
	}
	else if (Npc_KnowsInfo(hero, Info_Mod_Herold_Verbrecher))
	&& (Mod_PAL_HeroBot == 3)
	{
		AI_Output (self,self,"Info_Mod_Herold_Announce_04_04"); //Last night, four militias were murdered in their sleep by a lunatic in a colorful costume with a chess collar.
		AI_Output (self,self,"Info_Mod_Herold_Announce_04_05"); //Beware of this criminal.
	}
	else if (Npc_KnowsInfo(hero, Info_Mod_Moe_Geruechte3))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Valentino_Kidnapped))
	{
		AI_Output (self,self,"Info_Mod_Herold_Announce_04_06"); //But it was not only outside of Khorinis that terrible things happened: a high-ranking citizen of Khorini was kidnapped!
		AI_Output (self,self,"Info_Mod_Herold_Announce_04_07"); //Valentino, not always respectable but influential and wealthy, did not return home after a nightly meeting.
		AI_Output (self,self,"Info_Mod_Herold_Announce_04_08"); //After his disappearance was initially undiscovered, as the young man was well known for his escapades, the kidnappers have now written a strange letter to the city's citizens.
		AI_Output (self,self,"Info_Mod_Herold_Announce_04_09"); //Instead of a sum of money they demand one of the convicts from the Minental in exchange.
		AI_Output (self,self,"Info_Mod_Herold_Announce_04_10"); //The reason for this claim is still unknown at this point in time.
		AI_Output (self,self,"Info_Mod_Herold_Announce_04_11"); //May the affair go ahead without bloodshed from innocent people.
	}
	else if (Npc_KnowsInfo(hero, Info_Mod_Matteo_LehrlingQuest3))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Matteo_LehrlingQuest4))
	{
		AI_Output (self,self,"Info_Mod_Herold_Announce_04_12"); //The quality of traders' goods continues to decline.
		AI_Output (self,self,"Info_Mod_Herold_Announce_04_13"); //Only he himself passed the recent product test financed by Matteo with distinction.
		AI_Output (self,self,"Info_Mod_Herold_Announce_04_14"); //All other traders had above all deficits in fruit.
		AI_Output (self,self,"Info_Mod_Herold_Announce_04_15"); //Asked how he interpreted the result, Matteo said:
		AI_Output (self,self,"Info_Mod_Herold_Announce_04_16"); //"There's nothing to interpret. Whoever sells lazy apples cannot continue to be supported.""Das gibt es nichts zu interpretieren. Wer faule Äpfel verkauft, darf nicht weiter unterstützt werden.
		AI_Output (self,self,"Info_Mod_Herold_Announce_04_17"); //Ich dagegen habe jahrelang in Qualität investiert. Das konnten die Prüfer eindrucksvoll belegen."
		AI_Output (self,self,"Info_Mod_Herold_Announce_04_18"); //Matteo reports a new sales record for the last few days.
	}
	else if (Npc_KnowsInfo(hero, Info_Mod_Hagen_Hi))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Hagen_Asylanten2))
	{
		AI_Output (self,self,"Info_Mod_Herold_Announce_04_19"); //Lord Hagen is increasingly criticized for his convict policy.
		AI_Output (self,self,"Info_Mod_Herold_Announce_04_20"); //A paladin who did not want to have his name published entrusted a small circle with the fact that the city administrator sent a former dome occupant out to be informed about the developments in the valley of the river Minental.
		AI_Output (self,self,"Info_Mod_Herold_Announce_04_21"); //However, Lord Hagen has not yet been available for comment.
	}
	else if (Npc_KnowsInfo(hero, Info_Mod_AufgebrachteBuergerin_Hi))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Moe_Anschlaege))
	{
		AI_Output (self,self,"Info_Mod_Herold_Announce_04_22"); //Canthar's son Allievo has been the victim of an incomprehensible murder attempt.
		AI_Output (self,self,"Info_Mod_Herold_Announce_04_23"); //A former detainee, who quickly gained a dubious reputation in Khorinis, is said to have visited him and killed him.
		AI_Output (self,self,"Info_Mod_Herold_Announce_04_24"); //It is recommended that all citizens avoid this criminal until the case is resolved.
		AI_Output (self,self,"Info_Mod_Herold_Announce_04_25"); //To denounce the prisoner visibly to all, Canthar distributed leaflets with his portrait all over Khorini.
	}
	else if (Mod_Herold_Kompass == 0)
	&& (Kapitel == 2)
	{
		AI_Output (self,self,"Info_Mod_Herold_Announce_04_26"); //The golden compass of the Esmeralda was stolen. The thief apparently managed to escape unrecognized at night through the east gate.
		AI_Output (self,self,"Info_Mod_Herold_Announce_04_27"); //The man who places the thief and snatches the compass from him is commanded to bring the precious piece to Lord Andre immediately.

		if (Npc_GetDistToNpc(hero, self) < 1000)
		{
			Mod_Herold_Kompass = 1;

			Log_CreateTopic	(TOPIC_MOD_HEROLD_KOMPASS, LOG_MISSION);
			B_SetTopicStatus	(TOPIC_MOD_HEROLD_KOMPASS, LOG_RUNNING);
			B_LogEntry	(TOPIC_MOD_HEROLD_KOMPASS, "The golden compass of the Esmeralda was stolen and the thief escaped from the east gate. If I find him, I'll take the compass to Lord Andre.");

			Wld_InsertNpc	(Mod_7744_OUT_Dieb_NW, "TAVERNE");

			rnd = Hlp_Random(5);

			if (rnd == 0)
			{
				B_KillNpc	(Mod_7744_OUT_Dieb_NW);
			}
			else if (rnd == 1)
			{
				B_StartOtherRoutine	(Mod_7744_OUT_Dieb_NW, "BRUECKE");
			}
			else if (rnd == 2)
			{
				B_StartOtherRoutine	(Mod_7744_OUT_Dieb_NW, "ORLAN");
				B_KillNpc	(Mod_7744_OUT_Dieb_NW);

				Wld_InsertNpc	(Gobbo_Skeleton, "NW_FARM2_TAVERNCAVE1_02");
				Wld_InsertNpc	(Gobbo_Skeleton, "NW_FARM2_TAVERNCAVE1_02");
			}
			else if (rnd == 3)
			{
				B_StartOtherRoutine	(Mod_7744_OUT_Dieb_NW, "SEE");
			}
			else if (rnd == 4)
			{
				B_StartOtherRoutine	(Mod_7744_OUT_Dieb_NW, "SUMPF");
				B_KillNpc	(Mod_7744_OUT_Dieb_NW);
			};
		};
	}
	else if (Mod_Herold_Siegelring == 0)
	&& (Kapitel == 4)
	{
		AI_Output (self,self,"Info_Mod_Herold_Announce_04_28"); //A brutal attack on a high dignitary of the city has taken place in the upper quarter.
		AI_Output (self,self,"Info_Mod_Herold_Announce_04_29"); //In addition to lots of gold and silver, a precious signet ring was also stolen.
		AI_Output (self,self,"Info_Mod_Herold_Announce_04_30"); //The two perpetrators were able to escape through the city wall before the guards arrived.
		AI_Output (self,self,"Info_Mod_Herold_Announce_04_31"); //The person who places the perpetrator and brings the signet ring to Lord Hagen may count on an appropriate reward.

		if (Npc_GetDistToNpc(hero, self) < 1000)
		{
			Mod_Herold_Siegelring = 1;

			Log_CreateTopic	(TOPIC_MOD_HEROLD_SIEGELRING, LOG_MISSION);
			B_SetTopicStatus	(TOPIC_MOD_HEROLD_SIEGELRING, LOG_RUNNING);
			B_LogEntry	(TOPIC_MOD_HEROLD_SIEGELRING, "In the upper quarter there was a robbery, in which a precious signet ring was stolen along with other valuables. If I find the ring, I can get a reward from Lord Hagen.");

			Wld_InsertNpc	(Mod_7745_BDT_Landstreicher_NW, "TAVERNE");

			rnd = Hlp_Random(4);

			if (rnd == 0)
			{
				B_StartOtherRoutine	(Mod_7745_BDT_Landstreicher_NW, "BRUECKE");
			}
			else if (rnd == 1)
			{
				B_StartOtherRoutine	(Mod_7745_BDT_Landstreicher_NW, "WEIDENPLATEAU");
			}
			else if (rnd == 2)
			{
				B_StartOtherRoutine	(Mod_7745_BDT_Landstreicher_NW, "EROL");
			}
			else if (rnd == 3)
			{
				B_StartOtherRoutine	(Mod_7745_BDT_Landstreicher_NW, "BRUECKE");
			};
		};
	}
	else if (Kapitel < 2)
	{
		rnd = Hlp_Random(5);

		if (rnd == 0)
		{
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_32"); //Abuyin has suggested that the recent night sky horrible comet star (we reported) may have been a sign of Minna capsizing in front of the port.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_33"); //However, only Innos could know the true sinister meaning of this miraculous sign.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_34"); //However, there is certainly no harm in intensifying the prayers to Innos.
		}
		else if (rnd == 1)
		{
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_35"); //Farmers and some traders also report strange incidents outside the city gates.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_36"); //Lately there have been more frequent encounters with a cloaked figure there, according to which people affected felt uncomfortable and complained about shortness of breath and nausea.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_37"); //It is therefore advised not to move alone outside the city walls, or at least to avoid anyone who wanders around until the city guard has found out more.
		}
		else if (rnd == 2)
		{
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_38"); //It is reported that a few months ago a fish child was born in Myrtana, whose upper body is human and lower body has the shape of a fish tail.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_39"); //Unfortunately, Innos ate the child shortly after birth, so we can't hope to find out what it is like when he is born.
		}
		else if (rnd == 3)
		{
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_40"); //After the fall of the barrier, the first prisoners arrive in Khorinis. Lord Hagen has announced that they are not to be discriminated against for the time being.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_41"); //Whoever attacks them will be punished like any other crime.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_42"); //As the influx will certainly increase over the next few weeks, all those who are not in dire need of hostels are asked to vacate their accommodation.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_43"); //After the accommodation question has been resolved, it is of course possible to move back into accommodations there.
		}
		else
		{
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_44"); //Water magicians are getting closer and closer to a great discovery.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_45"); //Now that the underground temple has been fully opened up and a mysterious portal has been found, it is only a matter of time before they get past the secret of the complex.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_46"); //Meanwhile, Serpentes is outraged by this single-minded approach of the Water Magicians.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_47"); //The monastery would have liked to support the excavation with all conceivable means.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_48"); //He is even more dismayed that the demon summoner Xardas is back in the country.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_49"); //Formerly a member of the Fire Magicians, he had to leave the order after various quarrels.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_50"); //He is said to have a connection with the black mages, whose number is said to be higher than it has been for a long time.
		};
	}
	else if (Kapitel < 4)
	{
		rnd = Hlp_Random(2);

		if (rnd == 0)
		{
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_51"); //The news of the day: Water magicians have found their way through the portal. Has this opened the Pandora's box?
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_52"); //Since the followers of Adanos have disappeared, there is no sign of their lives.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_53"); //Instead, there are disturbing reports from the Minental that an ancient creature has been resurrected.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_54"); //But this is no reason to panic, Lord Andre said. In the event of an invasion by Beliars Brut, the city guard is well prepared.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_55"); //Serpentes was concerned about the disappearance of the water magicians. He said literally:
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_56"); //"Of course, the death of all water magicians would be a grave loss for all of us. I will include them in my prayers.""Natürlich wäre der Tod aller Wassermagier ein schwerer Verlust für uns alle. Ich werde sie in meine Gebete einschließen.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_57"); //Dieses Unglück sollte allen Rechtgläubigen nur wieder zeigen, dass ungezügelter Forscherdrang und Wissensdurst immer in einer Katastrophe enden."
		}
		else
		{
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_58"); //It is rumored that the Paladins are considering introducing a new tax to keep their equipment up-to-date. The tax will hit high-income earners hard.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_59"); //Den genauen Wortlaut kennt allerdings bisher niemand. Trotzdem hat Matteo bereits ein Protestschreiben verfasst, in dem er auf die "fatal consequences for the economic system" durch eine weitere Steuer hinweist.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_60"); //If there is any news on this subject, it will be announced without delay.
		};		
	}
	else if (Kapitel == 4)
	{
		rnd = Hlp_Random(3);

		if (rnd == 0)
		{
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_61"); //There are terrible things to report. The recent omens have been a warning.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_62"); //Outside the city, madness has taken hold of itself and turned respectable men into drooling lunatics.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_63"); //The only bright spot is that our beautiful city has so far been spared from this disease. Even in times of need, Innos holds his protective hand over us.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_64"); //The fact that his power is not boundless and he needs our support can be seen these days in the old camp of the Valley of the Mine, which has become the scene of war between humans and orcs.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_65"); //After hard fights the inhabitants of the Old Camp had to admit defeat to the attackers.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_66"); //Even though they have sinned many times in the past, this defeat against Beliar's henchmen is a terrible event.
		}
		else if (rnd == 1)
		{
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_67"); //After Tengron was the first to admit that consideration has been given to the introduction of a new tax, many citizens have breathed air with displeasure.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_68"); //Among other things, they deplore the poor communication with the paladins, who had not voluntarily given anything away and now wanted to present them with fait accompli.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_69"); //A reaction from the Paladins to these accusations is still awaited.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_70"); //Matteo has already announced that he intends to prevent the enforcement of this tax not only with words but also with deeds if necessary.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_71"); //These latest developments have not contributed to the popularity of the Paladins.
		}
		else
		{
			if (Mod_LehrlingBei == 1)
			&& (Npc_KnowsInfo(hero, Info_Mod_Constantino_LehrlingQuest9))
			{
				AI_Output (self,self,"Info_Mod_Herold_Announce_04_72"); //It has come to pass, as it had to: Constantino has now finally gone under the madmen.
				AI_Output (self,self,"Info_Mod_Herold_Announce_04_73"); //Rumor has it that he tried to make the Philosopher's Stone.
				AI_Output (self,self,"Info_Mod_Herold_Announce_04_74"); //This incident only shows that Inno's sins are not unpunished.
				AI_Output (self,self,"Info_Mod_Herold_Announce_04_75"); //It remains to be seen whether someone is willing to look after Constantino in his late condition.
			}
			else if (Mod_LehrlingBei == 2)
			&& (Npc_KnowsInfo(hero, Info_Mod_Gritta_ThorbenLehrling))
			{
				AI_Output (self,self,"Info_Mod_Herold_Announce_04_76"); //All of Khorini's entire body is severely affected by the illness of the universally esteemed Master Thorb.
				AI_Output (self,self,"Info_Mod_Herold_Announce_04_77"); //After complaining about pain all day long and trying to drown it in alcohol, he turned over wordlessly in the evening and is still not up to recollection at the moment.
				AI_Output (self,self,"Info_Mod_Herold_Announce_04_78"); //It is thanks to divine foresight that he has a diligent apprentice to help him, who could compensate for his failure if Thorben does not find his way back to his old form.
			}
			else if (Mod_LehrlingBei == 4)
			&& ((Npc_KnowsInfo(hero, Info_Mod_Bosper_LehrlingQuest12))
			|| (Npc_KnowsInfo(hero, Info_Mod_Bosper_LehrlingQuest13)))
			{
				AI_Output (self,self,"Info_Mod_Herold_Announce_04_79"); //Bosper seems to be going through a difficult period at the moment.
				AI_Output (self,self,"Info_Mod_Herold_Announce_04_80"); //Several of his customers and suppliers reported that he drove them out of his shop under desolate abuse, even though they had only welcomed him.
				AI_Output (self,self,"Info_Mod_Herold_Announce_04_81"); //It is to be hoped that he will catch himself again soon.
			}
			else if (Mod_LehrlingBei == 5)
			&& (Npc_KnowsInfo(hero, Info_Mod_Olav_HaradLehrling))
			{
				AI_Output (self,self,"Info_Mod_Herold_Announce_04_82"); //Harad, never seen before, is now behind bars for a secret cooperation with the mercenaries.
				AI_Output (self,self,"Info_Mod_Herold_Announce_04_83"); //The paladins said that they had known about it for a long time, but they wanted to dissuade him from his actions by good coaxing.
				AI_Output (self,self,"Info_Mod_Herold_Announce_04_84"); //After this has not been fruitful, he will now spend his time in prison until he realizes his guilt.
			};
		};		
	}
	else	//Kapitel 5
	{
		rnd = Hlp_Random(2);

		if (rnd == 0)
		{
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_85"); //Is Khorinis now defencelessly at the mercy of all evil?
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_86"); //The three most powerful magicians and guild leaders have left Khorinis to place our common welfare in the hands of an unidentified person.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_87"); //On a distant island they want to perform a secret ritual.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_88"); //Let's hope these bright minds know what they're doing. Otherwise, this could be our end!
		}
		else
		{
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_89"); //As if that were not enough, the dispute over wealth tax is also on the verge of escalation.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_90"); //Since the paladins reject a revision of their law, a spontaneous demonstration occurred, but was crushed by the city guard.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_91"); //Two guards were lightly injured by bottle and stone throwing during riots on the fringes of the demonstration, several demonstrators were arrested and fined.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_92"); //The hostilities against the paladins have become even more acute, and no one knows how long the deceptive peace will last?
		};
	};
};
