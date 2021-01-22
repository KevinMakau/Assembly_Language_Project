%{
#include <math.h>
%}

DIGIT [0-9]
ALPHA [(a-z)]
LEFT_P [(]
RIGHT_P [)]
NOT [not]
AND [and]
OR [or]

%%
{DIGIT}+ {
            printf( "NUMBER %s (%g)\n", yytext,
                    atof( yytext ) );
         }
    
{NOT}    {
            printf( "NOT\n", yytext);
         }
{AND}    {
            printf( "AND\n", yytext);
         }
{OR}     {
            printf( "OR\n", yytext);
         }
{ALPHA}

{ALPHA}{ALPHA}+

{;}     {
            printf( "SEMICOLON\n", yytext);
        }


%%

main()
{
  yylex();
}
