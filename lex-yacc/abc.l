%{
	#include "y.tab.h"
%}
%%
if	{return IF;}
">"	{return BUYUK;}
"<"	{return KUCUK;}
"=="	{return ESIT;}
"!="	{return ESITDEGIL;}
"("	{return LPRN;}
")"	{return RPRN;}
[a-zA-Z]+ {return HARF;}
[0-9]+ {return SAYI;}
"\n" {return 0;}
%%
