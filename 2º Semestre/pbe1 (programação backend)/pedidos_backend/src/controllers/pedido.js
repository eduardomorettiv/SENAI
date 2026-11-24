const pedidos = require("../../dados/pedidos.json")

const criar = (req, res) => {
    const dados = req.body
    dados.id = Number(pedidos[pedidos.length - 1].id) + 1 //Auto increment 
    pedidos.push(dados)
    res.status(201).json(dados)
}
const listar = (req, res) => { 
    res.json(pedidos) 
}
const alterar = (req, res) => {
    const id = req.params.id
    const dados = req.body
    dados.id = Number(id)

    pedidos.forEach((pedido, indice)=>{
        if (pedido.id==id){
            pedido[indice]=dados
            res.send("pedido alterado")
        }
    })
}
const excluir = (req, res) => {
    const id = req.params.id

    pedidos.forEach((pedido, indice)=>{
        if (pedido.id==id){
            pedido.splice(indice, 1)
            res.send("pedido excluido")
        }
    })
}

module.exports = {
    criar, listar, alterar, excluir
}