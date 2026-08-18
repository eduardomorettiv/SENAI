#include<stdio.h>

int main (){
	float preco, qtd, total, desconto;
	char resp='s';
	total=0;
	
	while (resp=='s'){
    	fflush(stdin);
		printf ("digite o preco do produto\n");
	    scanf ("%f", &preco);
	    printf ("digite quantidade\n");
	    scanf ("%f", &qtd);
	    total=total+preco*qtd;
    	fflush(stdin);
	    printf("mais algum produto s/n?\n");
    	scanf ("%c", &resp);
	}
	printf("o total do seu orcamento e %f", total);
	printf ("digite o desconto da sua compra");
	scanf ("%f", desconto);
	printf ("o total com o desconto e de %f", total+total*desconto/100);	getch();
}