function verificar() {

    const palavrasCruzadas = ['cpu', 'ula', 'registradores', 'ram', 'rom', 'eprom', 'flash', 'memoriademassa', 'dma', 'cs', 'adressbus', 'databus', 'i5', 'i7', 'dualcore', 'quadcore']

    const cpu = [inp_45, inp_48, inp_56]
    const ula = [inp_21, inp_25, inp_33]
    const registradores = [inp_1, inp_2, inp_3, inp_4, inp_9, inp_12, inp_17, inp_20, inp_22, inp_31, inp_34, inp_35, inp_40]
    const ram = [inp_17, inp_18, inp_19]
    const rom = [inp_30, inp_31, inp_32]
    const eprom = [inp_35, inp_36, inp_37, inp_38, inp_39]
    const flash = [inp_6, inp_7, inp_8, inp_9, inp_76]
    const memoriademassa = [inp_39, inp_41, inp_42, inp_43, inp_44, inp_46, inp_49, inp_61, inp_67, inp_69, inp_71, inp_73, inp_74, inp_75]
    const dma = [inp_68, inp_69, inp_70]
    const cs = [inp_72, inp_73]
    const adressbus = [inp_49, inp_50, inp_51, inp_52, inp_53, inp_54, inp_55, inp_56, inp_57]
    const databus = [inp_10, inp_11, inp_12, inp_13, inp_14, inp_15, inp_16]
    const i5 = [inp_4, inp_5]
    const i7 = [inp_46, inp_47]
    const dualcore = [inp_22, inp_23, inp_24, inp_25, inp_26, inp_27, inp_28, inp_29]
    const quadcore = [inp_58, inp_59, inp_60, inp_61, inp_62, inp_63, inp_64, inp_65]

    //Reúne todos os vetores em um único, para fazer a comparação de palavra á palavra
    const palavrasInput = [cpu, ula, registradores, ram, rom, eprom, flash, memoriademassa, dma, cs, adressbus, databus, i5, i7, dualcore, quadcore]
    //armazena o valor da comparação
    const validacaoPalavrasInput = [false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false]

    var todasPalavrasCorretas = true

    //Fazer a verificação se a palavra do input corresponde ao esperado
    for (let i = 0; i < palavrasCruzadas.length; i++) {

        var palavra = ""
        var vetorPalavra = palavrasInput[i]

        // armazena a primeira letra de cada input
        for (let j = 0; j < vetorPalavra.length; j++) {

            var valorInput = vetorPalavra[j].value

            if (valorInput.length == 1) {

                palavra += valorInput[0];
            } else if (valorInput.length > 1) {
                palavra += '**'
            }

        }

        //vai guardar o valor da comparação entre a palavra inserida na tela e a que é esperada
        validacaoPalavrasInput[i] = palavrasCruzadas[i] == palavra

        //Se durante o processo, alguma palavra estiver errada, ele considera o jogo perdido
        if (palavrasCruzadas[i] != palavra) {
            todasPalavrasCorretas = false
        };


    }

    //Tem por função alterar as cores das palavras certas e erradas
    for (let index = 0; index < validacaoPalavrasInput.length; index++) {

        var vetorPalavra = palavrasInput[index]
        var color = 'Lightgreen'

        //Verifica se a validacao está true or false, caso seja false ele munda a cor para vermelho
        if (!validacaoPalavrasInput[index]) {
            color = 'Lightcoral'
        }

        //Muda a cor de cada input da palavra
        for (let j = 0; j < vetorPalavra.length; j++) {

            vetorPalavra[j].style.backgroundColor = color;

        }

    }

    if (todasPalavrasCorretas) {
        alert("Tudo certo!")
    } else {
        alert("ta errado!")
    }
}



