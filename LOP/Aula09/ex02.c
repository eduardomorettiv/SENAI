#include<stdio.h>

int main (){
	float peso, excesso, multa;
	printf ("digite o peso em KG do peixe\n");
	scanf ("%f", &peso);
	if (peso>50){
		excesso=peso-50;
		multa=excesso*4;
		printf ("seu peixe excedeu o limite de peso:\n excesso:%.2f KG\n multa:R$%.2f", excesso, multa);
	}
	else{
		printf ("seu peixe nao excedeu o limite de peso, parebens\n");
	}
}
getch();