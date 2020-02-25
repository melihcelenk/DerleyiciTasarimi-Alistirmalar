
#!/bin/bash
# Calismazsa "chmod a+rx lexyaccolustur.sh" komutunu girin
flex abc.l
yacc -d abc.y
cc y.tab.c lex.yy.c -ll
for i in {1..10}
do
	echo $'\n'"-------> $i. calistirilma:"
	./a.out
done
