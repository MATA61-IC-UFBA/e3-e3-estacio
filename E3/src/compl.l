%option noyywrap yylineno
%{

// noyywrap    - no need to deal with multiple input files
// yylineno    - variable to track line numbers 
//               that copies otherwise unmatched input to yyout.

#include "token.h"

%}

%%
[\n \t \r]    { }
"//".*        { }
array           { return ARRAY; }
boolean         { return BOOLEAN; }
char            { return KEY_CHAR; }
else            { return ELSE; }
false           { return FALSE; }
for             { return FOR; }
function        { return FUNCTION; }
if              { return IF; }
integer         { return INTEGER; }
print           { return PRINT; }
return          { return RETURN; }
string          { return STRING; }
true            { return TRUE; }
void            { return VOID; }
while           { return WHILE; }
\'[a-zA-Z]\'    { return CHAR; }
\'\\n\'         { return CHAR; }
\'\\0\'         { return CHAR; }
"' '"           { return CHAR; }
\'\\.\'         { return CHAR; }
\"([^\"\\\r\n]|\\.)*\"   { return STR; }
"+"               { return yytext[0]; }
"-"               { return yytext[0]; }
"*"               { return yytext[0]; }
"/"               { return yytext[0]; }
"%"               { return yytext[0]; }
"!"               { return yytext[0]; }
"<"               { return yytext[0]; }
">"               { return yytext[0]; }
"="               { return yytext[0]; }
":"               { return yytext[0]; }
";"               { return yytext[0]; }
","               { return yytext[0]; }
"("               { return yytext[0]; }
")"               { return yytext[0]; }
"["               { return yytext[0]; }
"]"               { return yytext[0]; }
"{"               { return yytext[0]; }
"}"               { return yytext[0]; }
"\\"              { return yytext[0]; }
"<="              { return LEQ; }
">="              { return GEQ; }
"=="              { return EQ; }
"!="              { return NEQ; }
"&&"              { return AND; }
"||"              { return OR; }
[0-9]+            { return NUM; }
[a-zA-Z][a-zA-Z0-9_]{0,255} { 
  if(yyleng<=256){
    return ID;
    }
  else{ 
    return ERROR;  
    }
  }
. 				      { return ERROR; }

%%
