//char nome[100];
//['f', 'u', 'l', 'a', 'n', 'o']
let nome="Fulano da silva";

console.log(nome);
console.log(nome.length);

let senha = "senha123";

if(senha.length<8){
    console.log("senha muito pequena");
} else if(senha.length>7){
    console.log("senha muito grande");
}else {
    console.log("Cadastrado com sucesso!");
}

let endereco="Rua sem saída, nº 35";

console.log(endereco);

console.log(endereco.toLowerCase());

console.log(nome);

console.log(nome.includes("F"));

let busca = "F";

if(nome.toLowerCase().includes(busca.toLowerCase())){
    console.log("Encontrado");
}else{
    console.log("Não encontrado");
}

let usuarios=[
    "ViCtOr SaNtAnA",
    "Sara de Paula",
    "aura dias",
    "Mikael",
    "PEDRO GUARIZO",
    "Pedro vitor",
    "Pedro Pedro",
    "Pedro Santana",
];

//for(let i=0; i<usuarios.length; i++){
//    console.log(usuarios[i]);
//}

busca="PeDrO s";

usuarios.forEach((usuario, indice) => {
    if(usuario.toLowerCase().includes(busca.toLowerCase())){
        console.log(indice,usuario);
    }
});

endereco="Rua das Avenidas, nº 15, Jd. Das Ruas";

console.log(endereco.replace("nº", ""));

endereco=endereco.replace("nº", "");

console.log(endereco.split(","));

endereco=endereco.split(",");

console.log(endereco[0]);

let numeros=[1, 2, 3, 4, 5];

console.log(numeros);

numeros.push(2);//adiciona o valor da posição 2 em ultimo

console.log(numeros);

numeros.pop();
numeros.pop();//Remove ultimo valor do vetor

console.log(numeros);

numeros.splice(1, 2);//remove uma posição especifica

console.log(numeros);

numeros.push(7);
numeros.push(8);
numeros.push(9);

console.log(numeros);

numeros.forEach( (numero, indice) => {
    if(numero == 4){
        numeros.splice(indice, 1);
    }
});

console.log(numeros);

let produtos=[
    {
        "marca":"Xiaomi",
        "modelo":"Poco X8",
        "quantidade":30,
        "preco":2300
    },
    {
        "marca":"Xiaomi",
        "modelo":"Redmi 9",
        "quantidade":50,
        "preco":1800
    },
    {
        "marca":"Nokia",
        "modelo":"Tijolão",
        "quantidade":5,
        "preco":900
    },
    {
        "marca":"Motorola",
        "modelo":"v3",
        "quantidade":10,
        "preco":2800
    }
];

console.log(produtos);

produtos.forEach((produto, indice)=>{
    if(produto.modelo.toLowerCase().includes("redmi")){
        console.log(produto.quantidade);
    }
});