#include<stdio.h>

int main (){
	float horas, ganha, bruto, IR, INSS, sindicato, liquido;
	printf ("quantas horas voce trabalha por mes?\n");
	scanf ("%f", &horas);
	printf ("quanto voce ganha por hora?\n");
	scanf ("%f", &ganha);
	bruto=ganha*horas;
	IR=bruto-bruto*0.11;
	INSS=bruto-bruto*0.08;
	sindicato=bruto-bruto*0.05;
	liquido=bruto-bruto*0.11-bruto*0.08-bruto*0.05;
	printf ("\nsalario bruto: %.2f\nimposto de renda(-11%%): %.2f\nINSS(-8%%): %.2f\nsindicato(-5%%): %.2f\nliquido: %.2f\n", bruto, IR, INSS, sindicato, liquido);
}
getch();