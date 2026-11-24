const con = require("../config/db")

const cadastrar = async ({nome, email, senha}) => {
    const [resultado] = await con.query(
        "insert into usuario values (default, ?, ?, ?)",
        [nome, email, senha]
    )

    return{
        id: resultado.insertId,
        nome,
        email
    }
}

const listar = async () => {
    const [resultado] = await con.query("SELECT id, nome, email FROM usuario;")
    return resultado
}

const alterar = async (dados, id) => {
    const [resultado] = await con.query(
        "UPDATE usuario SET ? WHERE id = ?",
        [dados, id]
    )

    return resultado
}

module.exports = {
    cadastrar,
    listar,
    alterar
}