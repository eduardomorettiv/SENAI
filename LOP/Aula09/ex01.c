#include<stdio.h>

int main (){
	float peso, altura, IMC;
	char nome [20], classe [20];
	printf ("digite seu nome:\n");
	scanf ("%s", &nome);
	printf ("digite seu peso:\n");
	scanf ("%f", &peso);
	printf ("digite sua altura:\n");
	scanf ("%f", &altura);
	
	IMC=peso/(altura*altura);
	
	if (IMC<=18.5){	
	    printf ("%s tem IMC=%.2f e classificacao de Peso abaixo do normal", nome, IMC);
	}
	else if(IMC>=18.6 && IMC<=24.9){
		printf ("%s tem IMC=%.2f e classificacao de Peso normal", nome, IMC);
	}
	else if(IMC>=25 && IMC<=29.9){
    	printf ("%s tem IMC=%.2f e classificacao de Sobrepeso", nome, IMC);
	} 
	else if(IMC>=30 && IMC<=34.9){
		printf ("%s tem IMC=%.2f e classificacao de Obesidade I", nome, IMC);
	}
	else if(IMC>=35 && IMC<=39.9){
		printf ("%s tem IMC=%.2f e classificacao de Obesidade II", nome, IMC);
	}
		else if(IMC>=40){
		printf ("%s tem IMC=%.2f e classificacao de Obesidade III", nome, IMC);
    }
}