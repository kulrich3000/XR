var int VictimCount;
var int VictimLevel;
var int ThiefLevel;

var int ThiefXP;
//------------------------------------------------------------------
FUNC VOID B_GiveThiefXP()
{	
	VictimCount += 1;//z�hl die Opfer	
	
	if (VictimLevel == 0)
	{
		VictimLevel = 4; //Start

		ThiefLevel = 1;
	};
	
	if (VictimCount >= VictimLevel)
	{
		//----------------Kalkulation-----------------		
		ThiefLevel += 1;
		VictimLevel = VictimCount + ThiefLevel; //Erh�he die Anzahl der n�tigen Opfer zum n�chsten Level (aktuelleOpfer + aktueller Level)

		VictimCount = 0;
	};
		
	//-------------------XP-----------------------

	ThiefXP = ThiefLevel * 10;
		
	B_GivePlayerXP (ThiefXP);  
};
//------------------------------------------------------------------ 
FUNC VOID B_ResetThiefLevel()
{	
	if (VictimCount > ThiefLevel)
	{
		VictimCount -= 1; 
	};	
};
