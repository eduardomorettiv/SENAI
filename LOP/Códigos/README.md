```cpp

//comando pra colocar caracteres especiais
#include<windows.h>
SetConsoleOutputCP(65001);

//pegar o tempo do computador e randomizar
srand(time(NULL));
rand()%20+1; <----cria um numero aleatório entre 1 e 20

```

```cpp
#include <stdio.h>
#include <windows.h>

#define MAX_LETRAS 100
#define MAX_LINHAS 50

struct Cliente{
	char nome[50];
	int idade;
	char sexo[1];
};

void main(){
	SetConsoleOutputCP(CP_UTF8);
	int qtdLinhas = 0;
	struct Cliente clientes[MAX_LINHAS];
	FILE *arquivo = fopen("clientes.csv","r");
	if(arquivo == NULL){
		printf("Arquivo não encontrado.\n");
		getch();
		return 0;
	}
	char linha[MAX_LETRAS];
	while(fgets(linha,sizeof(linha),arquivo) != NULL && qtdLinhas < MAX_LINHAS){
		linha[strcspn(linha,"\n")] = '\0';//Remove o \n nas linhas
		qtdLinhas++;
		//Ignorar a primeira linha, por isso maior que 1
		if(qtdLinhas > 1){
			sscanf(linha,"%49[^,],%d,%99[^\n]",
			clientes[qtdLinhas - 2].nome,
			&clientes[qtdLinhas - 2].idade,
			clientes[qtdLinhas - 2].sexo
			);
		}
	}
	fclose(arquivo);
	
	double media = 0;
	int m=0;
	int f=0;
	printf("Nome\tIdade\tSexo\n");
	for(int i = 0; i < qtdLinhas - 1; i++){
		printf("%s\t%d\t%s\n",clientes[i].nome, clientes[i].idade, clientes[i].sexo);
		media += clientes[i].idade;
		if(clientes[i].sexo == 'M'){
			m++;
		} else{
			f++;
		}
	}
	media = media / (float)(qtdLinhas - 1);
	printf("\nForam analizados %d clientes\n", qtdLinhas - 1);
	printf("A média de idade dos clientes é %.1f anos\n", media);
	getch();
}
```
