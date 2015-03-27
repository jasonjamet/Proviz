%{
  #include "Proviz.tab.hpp"
  #include <stdlib.h>
%}

separateurs     [ \t]+
chiffre         [0-9]
entier          {chiffre}+

%%

{separateurs} { };
{entier} {  yylval = atoi(yytext); return (NOMBRE);}
"fin"       return (END);
"+"         return (PLUS);
"*"         return (FOIS);
"("         return (PARENTHESE_GAUCHE);
")"         return (PARENTHESE_DROITE);
"\n"        return (FIN);

%%
