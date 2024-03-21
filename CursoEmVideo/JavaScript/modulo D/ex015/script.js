function verificar() {
    var data = new Date()
    var ano = data.getFullYear()
    var fano = window.document.getElementById('txtano')
    var resp = window.document.getElementById('res')
    if (fano.value.length = 0 || Number(fano.value) > ano) {
        window.alert('Verifique os dados e tente novamente')
    } else {
        var fsex = window.document.getElementsByName('radsex')
        var idade = ano - Number(fano.value)
        var genero = ''
        var img = window.document.createElement('img')
        img.setAttribute('id', 'foto')
        if (fsex[0].checked) {
            genero = 'Homem'
            if (idade < 10) {
                // Criança
                //img.setAttribute('src', 'nome do arquivo.png ou jpg')
            } else if (idade < 21) {
                // Adulto
            } else {
                // Idoso
            }
        } else {
            genero = 'Mulher'
            if (idade < 10) {
                // Criança
            } else if (idade < 21) {
                // Adulto
            } else {
                // Idoso
            }
        }
        resp.style.textAlign = 'center'
        resp.innerHTML = `Detectamos ${genero} com ${idade} anos`
    }
}