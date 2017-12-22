/*
 * Definition of all console commands
 *
 * Gothic Free Aim (GFA) v1.0.0-beta.22 - Free aiming for the video games Gothic 1 and Gothic 2 by Piranha Bytes
 * Copyright (C) 2016-2017  mud-freak (@szapp)
 *
 * This file is part of Gothic Free Aim.
 * <http://github.com/szapp/GothicFreeAim>
 *
 * Gothic Free Aim is free software: you can redistribute it and/or
 * modify it under the terms of the MIT License.
 * On redistribution this notice must remain intact and all copies must
 * identify the original author.
 *
 * Gothic Free Aim is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * MIT License for more details.
 *
 * You should have received a copy of the MIT License along with
 * Gothic Free Aim.  If not, see <http://opensource.org/licenses/MIT>.
 */


/*
 * Console function to enable/disable debug output to zSpy. This function is registered as console command.
 */
func string GFA_DebugPrint(var string _) {
    GFA_DEBUG_PRINT = !GFA_DEBUG_PRINT;
    if (GFA_DEBUG_PRINT) {
        return "Wl.";
    } else {
        return "Wyjscia debugowe wylaczone.";
    };
};


/*
 * Console function to enable/disable trace ray debug output. This function is registered as console command.
 * When enabled, the trace ray is continuously drawn, as well as the nearest intersection with it.
 */
func string GFA_DebugTraceRay(var string _) {
    if (!Hlp_IsValidHandle(GFA_DebugTRTrj)) {
        GFA_DebugTRTrj = DrawLineAddr(0, zCOLOR_GREEN);
        HideLine(GFA_DebugTRTrj);
    };

    if (!Hlp_IsValidHandle(GFA_DebugTRBBox)) {
        GFA_DebugTRBBox = DrawBBoxAddr(0, zCOLOR_GREEN);
        HideBBox(GFA_DebugTRBBox);
    };

    if (!Hlp_IsValidHandle(GFA_DebugTRBBoxVob)) {
        GFA_DebugTRBBoxVob = DrawBBoxAddr(0, zCOLOR_GREEN);
        HideBBox(GFA_DebugTRBBoxVob);
    };

    if (!LineVisible(GFA_DebugTRTrj)) && (!BBoxVisible(GFA_DebugTRBBox)) && (!BBoxVisible(GFA_DebugTRBBoxVob)) {
        ShowBBox(GFA_DebugTRTrj);
        ShowBBox(GFA_DebugTRBBox);
        ShowBBox(GFA_DebugTRBBoxVob);
        return "Usun promienie sladowe.";
    } else {
        HideBBox(GFA_DebugTRTrj);
        HideBBox(GFA_DebugTRBBox);
        HideBBox(GFA_DebugTRBBoxVob);
        return "Odsysac promienie sladowe.";
    };
};


/*
 * Console function to enable/disable trace ray debug output. This function is registered as console command.
 * When enabled, the trajectory of the projectile is continuously drawn.
 */
func string GFA_DebugTrajectory(var string _) {
    if (!Hlp_IsValidHandle(GFA_DebugCollTrj)) {
        GFA_DebugCollTrj = DrawLineAddr(_@(GFA_CollTrj), zCOLOR_RED);
    } else {
        ToggleLine(GFA_DebugCollTrj);
    };

    if (LineVisible(GFA_DebugCollTrj)) {
        return "Trajektoria obalania pocisk�w.";
    } else {
        return "Wylaczyc trajektorie lotu.";
    };
};


/*
 * Console function to enable/disable bone debug visualization. This function is registered as console command.
 * When enabled, the hit model node of the last shot NPC is visualized by a bounding box or oriented bounding box.
 */
func string GFA_DebugBone(var string _) {
    if (!Hlp_IsValidHandle(GFA_DebugBoneBBox)) {
        GFA_DebugBoneBBox = DrawBBoxAddr(0, zCOLOR_RED);
        HideBBox(GFA_DebugBoneBBox);
    };

    if (!Hlp_IsValidHandle(GFA_DebugBoneOBBox)) {
        GFA_DebugBoneOBBox = DrawOBBoxAddr(0, zCOLOR_RED);
        HideOBBox(GFA_DebugBoneOBBox);
    };

    if (!BBoxVisible(GFA_DebugBoneBBox) && (!OBBoxVisible(GFA_DebugBoneOBBox))) {
        ShowBBox(GFA_DebugBoneBBox);
        ShowOBBox(GFA_DebugBoneOBBox);
        if (!LineVisible(GFA_DebugCollTrj)) {
            var string s; s = GFA_DebugTrajectory("");
        };
        return "Wizualizacja kosci.";
    } else {
        HideBBox(GFA_DebugBoneBBox);
        HideOBBox(GFA_DebugBoneOBBox);
        return "Wizualizacja kosci.";
    };
};


/*
 * Console function to show free aiming shooting statistics. This function is registered as console command.
 * When entered in the console, the current shooting statistics are displayed as the console output.
 */
func string GFA_GetShootingStats(var string args) {
    if (!GFA_ACTIVE) || (!(GFA_Flags & GFA_RANGED)) {
        return "Statystyki dotyczace wykonywania zdjec niedostepne. (Wymaga swobodnego celowania dla broni zakresowej)";
    };

    // Prevent execution if 'reset' command is called
    if (!Hlp_StrCmp(args, "")) && (!Hlp_StrCmp(args, " ")) {
        return "";
    };

    var int s; s = SB_New();
    SB("Calkowite wykonane zdjecia: ");
    SBi(GFA_StatsShots);
    SBc(13); SBc(10);

    SB("Strzaly na cel: ");
    SBi(GFA_StatsHits);
    SBc(13); SBc(10);

    SB("Osobista dokladnosc: ");
    var int pAccuracy;
    if (!GFA_StatsShots) {
        // Division by zero
        pAccuracy = FLOATNULL;
    } else {
        pAccuracy = mulf(fracf(GFA_StatsHits, GFA_StatsShots), FLOAT1C);
    };
    SB(STR_Prefix(toStringf(pAccuracy), 4));
    SB("%");

    var string ret; ret = SB_ToString();
    SB_Destroy();

    return ret;
};


/*
 * Console function to reset free aiming shooting statistics. This function is registered as console command.
 * When entered in the console, the current shooting statistics are reset to zero.
 */
func string GFA_ResetShootingStats(var string _) {
    GFA_StatsShots = 0;
    GFA_StatsHits = 0;
    return "Resetowanie statystyk strzelan.";
};


/*
 * Console function to show GFA version. This function is registered as console command.
 * When entered in the console, the current GFA version is displayed as the console output.
 */
func string GFA_GetVersion(var string _) {
    return GFA_VERSION;
};


/*
 * Console function to show GFA license. This function is registered as console command.
 * When entered in the console, the GFA license information is displayed as the console output.
 */
func string GFA_GetLicense(var string _) {
    var int s; s = SB_New();
    SB(GFA_VERSION);
    SB("prawo autorskie ");
    SBc(169 /* (C) */);
    SB(" 2016-2017 @szapp)");
    SBc(13); SBc(10);

    SB("<http://github. com/szapp/GothFreeAim>>");
    SBc(13); SBc(10);

    SB("Wydane na podstawie Licencji MIT.");
    SBc(13); SBc(10);

    SB("Wiecej informacji na stronie <http://opensource. org/licenses/MIT>.");

    var string ret; ret = SB_ToString();
    SB_Destroy();

    return ret;
};


/*
 * Console function to show GFA info. This function is registered as console command.
 * When entered in the console, the GFA config is displayed as the console output.
 */
func string GFA_GetInfo(var string _) {
    const string onOff[2] = {"OFF", "ON"};

    var int s; s = SB_New();
    SB(GFA_VERSION);
    SBc(13); SBc(10);

    SB("Swobodne celowanie: ");
    SB(MEM_ReadStatStringArr(onOff, GFA_ACTIVE > 0));
    if (GFA_ACTIVE) {
        SB(" przez");
        if (GFA_Flags & GFA_RANGED) {
            SB(" (zasieg)");
        };
        if (GFA_Flags & GFA_SPELLS) {
            SB(" zaklecia");
        };

        SB(". Kraweznik: ");
        SB(MEM_ReadStatStringArr(onOff, GFA_STRAFING > 0));

        SB(". Coroczna aktualizacja ostrosci ");
        SBi(GFA_AimRayInterval);
        SB(" m");
    };
    SBc(13); SBc(10);

    SB("pociski wielokrotnego uzytku: ");
    SB(MEM_ReadStatStringArr(onOff, (GFA_Flags & GFA_REUSE_PROJECTILES) > 0));
    SBc(13); SBc(10);

    SB("Indywidualne zachowania podczas kolizji: ");
    SB(MEM_ReadStatStringArr(onOff, (GFA_Flags & GFA_CUSTOM_COLLISIONS) > 0));
    SBc(13); SBc(10);

    SB("Wykrywanie trafien krytycznych: ");
    SB(MEM_ReadStatStringArr(onOff, (GFA_Flags & GFA_CRITICALHITS) > 0));

    var string ret; ret = SB_ToString();
    SB_Destroy();

    return ret;
};
