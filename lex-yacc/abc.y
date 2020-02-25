%{
	#include <stdio.h>
%}
%token HARF
%token SAYI
%token IF LPRN RPRN
%token ESIT ESITDEGIL BUYUK KUCUK
%%
a: IF LPRN ds karsilastir ds RPRN
degisken: HARF e
ds: degisken | SAYI
e: HARF e |SAYI e |
karsilastir: ESIT | ESITDEGIL | BUYUK | KUCUK
%%

int main(int argc, char** argv)
{
	printf("If degisken karsilastirilmasini taniyan program(Ornek: if(x==y)\n");
	if(!yyparse())	printf("Tanindi.\n");
}
int yyerror(char * s){
	printf("Taninmadi: Program tarafindan taninan bir katar gitmediniz.\n");
}
