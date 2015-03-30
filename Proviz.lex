%{
  #include "Proviz.tab.hpp"
  #include <stdlib.h>
%}

separateurs     [ \t]+
chiffre
entier          {chiffre}+
const           [a-z]([a-z|A-Z|0-9])* %Maybe this didnt work
variable        [A-Z]([a-z|A-Z|0-9])*
constInt        [0-9]+
string          \"([^"]|\\\")*\"
conjunction     ,
separator       :\-
end             .
operator        [\+\-\*\/]
compare         (\<|\<\=|\=\=|\>\=|\>|\!\=)
comment         %.*|\/\*([^\*]|\*[^\/])*\*+\/   %Maybe this didnt work

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
