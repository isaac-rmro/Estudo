function verificar() {
    var data = new Date()
    var ano = data.getFullYear()
    var fano = window.document.getElementById('txtano')

    var resp = window.document.getElementById('res')
    var resptxt = window.document.getElementById('resptxt')

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
                img.setAttribute('src', 'crianca-h-250.jpg')
            } else if (idade < 21) {
                img.setAttribute('src', 'adulto-h-250.jpg')
            } else {
                img.setAttribute('src', 'idoso-h-250.jpg')
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
        resptxt.style.textAlign = 'center'
        resptxt.innerHTML = `Detectamos ${genero} com ${idade} anos`
        resp.appendChild(img)
    }
}