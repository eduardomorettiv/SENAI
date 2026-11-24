const nome = document .querySelector("#nome")
const email = document .querySelector("#email")
const matricula = document .querySelector("#matricula")
const salvar = document.querySelector("#salvar")
const tabela = document.querySelector("#tabela")

salvar.addEventListener("click", function(){
    const linha = document.createElement('tr')
    const colunaNome = document.createElement("td")
    const colunaEmail = document.createElement("td")
    const colunaMatricula = document.createElement("td")

    colunaNome.textContent = nome.value
    colunaEmail.textContent = email.value
    colunaMatricula.textContent = matricula.value

    linha.append(colunaNome)
    linha.append(colunaEmail)
    linha.append(colunaMatricula)

    tabela.append(linha)
    
    nome.value=""
    email.value=""
    matricula.value=""
})

const nome2 = document .querySelector("#nome2")
const email2 = document .querySelector("#email2")
const disciplina = document .querySelector("#disciplina")
const salvar2 = document.querySelector("#salvar2")
const tabela2 = document.querySelector("#tabela2")

salvar2.addEventListener("click", function(){
    const linha2 = document.createElement('tr')
    const colunaNome2 = document.createElement("td")
    const colunaEmail2 = document.createElement("td")
    const colunaDisciplina = document.createElement("td")

    colunaNome2.textContent = nome2.value
    colunaEmail2.textContent = email2.value
    colunaDisciplina.textContent = disciplina.value

    linha2.append(colunaNome2)
    linha2.append(colunaEmail2)
    linha2.append(colunaDisciplina)

    tabela2.append(linha2)
    nome2.value=""
    email2.value=""
    disciplina.value=""
})
