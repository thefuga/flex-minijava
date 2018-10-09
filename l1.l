DIGIT	           [0-9]
DIGITS           (DIGIT)+
LETTER           [a-zA-Z]
ID               {LETTER}({LETTER}|{DIGIT})* 
TYPE             "int"|"boolean"|"int[]"
RESERVED_KEYWORD "public"|"class"|"static"|"void"|"main"|"extends"
COMMAND          "if"|"else"|"while"|"System.out.println"
EXPRESSION       "new"|"this"
ATTRIBUTION      "="
OPERATOR         "+"|"-"|"*"|"/"|"&&"|"||"|"<"|">"|"=="
UNARY_OPERATOR   "!"|"length()"
BOOL             "true"|"false"
OPEN_PAR         ("(")
CLOSE_PAR        (")")
OPEN_CURLY       "{"
CLOSE_CURLY      "}"
SEMICOLON        (";")
%%
{OPEN_PAR} 		      {printf("Open parenthesis: %s\n",yytext);}
{OPEN_CURLY}	      {printf("Open curly brackets: %s\n",yytext);}
{CLOSE_PAR}		      {printf("Close parenthesis: %s\n",yytext);}
{CLOSE_CURLY}       {printf("Close curly brackets: %s\n",yytext);}
{EXPRESSION}        {printf("Expression: %s\n", yytext);}
{BOOL}              {printf("Boolean: %s\n", yytext);}
{TYPE}              {printf("Type: %s\n", yytext);}
{RESERVED_KEYWORD}  {printf("Reserved keyword: %s\n", yytext);}
{DIGIT}+		        {printf("Integer: %s\n",yytext);}
{DIGIT}+"."{DIGIT}+	{printf("Float: %s\n",yytext);} 
{ID}                {printf("Identifier: %s\n",yytext);}
{COMMAND}           {printf("Command: %s\n", yytext);}
{OPERATOR}          {printf("Operator: %s\n", yytext);}
{UNARY_OPERATOR}    {printf("Unary operator: %s\n", yytext);}
{SEMICOLON}         {printf("Semicolon: %s\n", yytext);}
{ATTRIBUTION}       {printf("Attribution: %s\n", yytext);}
%%
int yywrap();

main(){
  yylex();
}

int yywrap(){
 return 1;
}
