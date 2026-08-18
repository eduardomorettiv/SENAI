#include<stdio.h>
#include<windows.h>

int main (){
	SetConsoleOutputCP(65001);
	float nota, n;
	printf ("quantas notas o aluno possui?\n");
	scanf ("%f", &n);
	float media=0;
	int i=1;
	do {
		printf ("digite a nota %d\n", i);
		scanf ("%f", &nota);
		media=media+nota/n;
		i++;
	}while (i<=n);
	printf("a média do aluno é %.2f\n", media);
	if (media>=7){
		printf("aprovado");
	} else if(media>=5 && media<7){
		printf("recuperação");
	} else{
		printf("repovado");
	}
}
getch();