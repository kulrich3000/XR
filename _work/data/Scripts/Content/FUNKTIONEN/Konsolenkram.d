//#################################################
//
//    Line Lexer
//
//#################################################

/* Init this Lexer with a string.
 * Every time you call "next", the lexer will write
 * the next word (space seperated) into the global
 * variable LLX_tok.
 * next() returns false iff there was no further token in the string.
 
 usage (pseudocode):
 
 LLX_Init (stringWithSpaceSeperatedTokens);
 
 while (LLX_Next()) {
    proccessToken(LLX_Tok);
 }
 
 endOfInput();
 
*/

var string LLX_str;
var int    LLX_pos;
var int    LLX_len;
var string LLX_tok;

func void LLX_Init(var string str) {
    LLX_str = str;
    LLX_pos = 0;
    LLX_tok = "";
    LLX_len = STR_Len(str);
};

func int LLX_next() {
    var int start; start = -1;
    var int loop;
    loop = MEM_StackPos.position;
    
    /* string zu Ende? */
    if (LLX_pos >= LLX_len) {
        if (start != -1) {
            LLX_tok = STR_SubStr(LLX_str, start, LLX_len - start);
            return true;
        };
        return false;
    };
    
    var int isBlank;
    isBlank = STR_GetCharAt(LLX_str, LLX_pos) == 32;
    
    if (isBlank) {
        /* am Anfang überspringen, später als Ende vom Wort werten */
        if (start != -1) {
            LLX_tok = STR_SubStr(LLX_str, start, LLX_pos - start);
            return true;
        };
    } else if (start == -1) {
        start = LLX_pos; //wurde schon inkrementiert
    };
    
    LLX_pos += 1;
    MEM_StackPos.position = loop;
};

//#################################################
//
//    Console Observer
//
//#################################################

func void ProcessCommand(var string command) {
    MEM_InitAll();
    
    var string msg;
    LLX_Init(command);
        
    if (!LLX_Next()) {
        return;
    };
    
    if (Hlp_StrCmp ("XCT", LLX_Tok)) {
        /* xct myfunction */
        if(!LLX_Next()) {
            Print("Jaka funkcje skryptu powinienem wykonac?");
            return;
        };
        
        msg = ConcatStrings("Dzwonienie: ", LLX_Tok);
        PrintDebug(msg);
        Print(msg);
        MEM_CallByString(LLX_Tok);
    } else if (Hlp_StrCmp ("PUT", LLX_Tok))
    ||        (Hlp_StrCmp ("PEEK", LLX_Tok)) {
        /* put myVar 42
         * peak myVar */
        var int putting; putting = Hlp_StrCmp ("PUT", LLX_Tok);
    
        var string variable; var string value;
        var int succ; succ = 1;
        succ = succ && LLX_Next();
        variable = LLX_Tok;
        
        if (putting) {
            succ = succ && LLX_Next();
            value = LLX_Tok;
        };
        
        if (!succ) {
            if (putting) {
                Print("Przyklad zastosowania:'podac myVar 42'.");
            } else {
                Print("Przyklad zastosowania:'zajrzyj do myVar'.");
            };
            return;
        };
        
        var zCPar_Symbol sym;
        var int ptr;
        ptr = MEM_GetParserSymbol(variable);
        
        if (!ptr) {
            Print("Zmienna nie wystepuje.");
            return;
        };
        sym = MEM_PtrToInst (ptr);
        
        var int type;
        type = sym.bitfield & zCPar_Symbol_bitfield_type;
        
        if (type != zPAR_TYPE_INT)
        && (type != zPAR_TYPE_STRING) {
            Print("Obslugiwane sa tylko zmienne lancuchowe i calkowite!");
            return;
        };
        
        if ((sym.bitfield & zCPar_Symbol_bitfield_ele) != 1) {
            Print("Matryce obecnie nie sa obslugiwane!");
            return;
        };
        
        if (type == zPAR_TYPE_INT) {
            if (putting) {
                var int IntVal;
                IntVal = STR_ToInt(value);
                
                if (!Hlp_StrCmp(IntToString(IntVal), value)) {
                    Print("Nie udalo sie przekonwertowac lancucha do Int.");
                    return;
                };
                
                sym.content = IntVal;
                Print("Gotowe.");
            } else {
                msg = ConcatStrings("wartosc int ", variable);
                msg = ConcatStrings(msg, " is: ");
                msg = ConcatStrings(msg, IntToString(sym.content));
                
                Print(msg);
                PrintDebug(msg);
            };
        } else {
            //type == zPAR_TYPE_STRING
            if (putting) {
                MEM_WriteString(sym.content, value);
                Print("Gotowe.");
            } else {
                msg = ConcatStrings("wartosc lancucha ", variable);
                msg = ConcatStrings(msg, " jest:'.");
                msg = ConcatStrings(msg, MEM_ReadString(sym.content));
                msg = ConcatStrings(msg, "'");
                
                Print(msg);
                PrintDebug(msg);
            };
        };
    } else if (Hlp_StrCmp (LLX_Tok, "TOGGLE")) {
        if (!LLX_Next()) { return; };
        
        if (Hlp_StrCmp (LLX_Tok, "TOLD")) {
            if (!LLX_Next()) {
                Print("Który dialog (C_INFO) powinienem powiedziec/wyjasnic?");
                return;
            };
            
            var int ID;
            ID = MEM_FindParserSymbol(LLX_Tok);
            
            if (ID == -1) {
                Print("Dialog nie zostal znaleziony.");
                return;
            };
            
            const int oCInfoManager__GetInformation = 7350544; //0x702910
            CALL_IntParam(ID);
            CALL__thiscall(MEM_Game.infoman, oCInfoManager__GetInformation);
            
            var oCInfo info;
            info = MEM_PtrToInst (CALL_RetValAsPtr());
            info.told = !info.told;
            
            msg = ConcatStrings(LLX_Tok, " teraz ");
            
            if (info.told) {
                ConcatStrings(msg, "powiedziane.");
            } else {
                ConcatStrings(msg, "nie powiedziane.");
            };
            PrintDebug(msg);
            Print(msg);
        };
    } else if (Hlp_StrCmp (LLX_Tok, "SLEEP")) {
        MEM_InfoBox ("Sleeping...");
    };
};

func void ObserveConsole() {
    var zCConsole zcon;
    zcon = MEM_PtrToInst (zcon_address);
    
    var int lastcommand_numInArray;
    
    if (lastcommand_numInArray != zcon.lastcommand_numInArray) {
        lastcommand_numInArray = zcon.lastcommand_numInArray;
        
        if (lastcommand_numInArray <= 0) {
            return;
        };
        
        ProcessCommand (MEM_ReadString (zcon.lastcommand_array + (lastcommand_numInArray - 1) * sizeOf_zString));
    };
};
