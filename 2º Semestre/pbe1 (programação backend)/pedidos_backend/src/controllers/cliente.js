const clientes = require("../../dados/clientes.json")

const criar = (req, res) => {
    const dados = req.body
    dados.id = Number(clientes[clientes.length - 1].id) + 1 //Auto increment 
    clientes.push(dados)
    res.status(201).json(dados)
}

const listar = (req, res) => { 
    res.json(clientes) 
}

const alterar = (req, res) => {
    const id = req.params.id
    const novo = req.body
    dados.id = Number(id)

    clientes.forEach((cliente, indice)=>{
        if (cliente.id==id){
            cliente[indice]=novo
            res.send("cliente alterado")
        }
    })
}

const excluir = (req, res) => { 
    const id = req.params.id

    clientes.forEach((cliente, indice)=>{
        if (cliente.id==id){
            clientes.splice(indice, 1)
            res.send("cliente excluido")
        }
    })
}

module.exports = {
    criar, listar, alterar, excluir
}