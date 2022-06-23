let faturamentoAnual = [53, 93, 475, 611, 666, 596, 0, 971, 3, 974, 156, 312, 260, 0, 989, 98, 882, 353, 72, 0, 986, 562, 27] // são 20 dias usados de exemplo
const faturamentoCorrigido = faturamentoAnual.filter((numero)=> numero > 0) // excluindo os dias que o faturamento sejam igual a zero
const mediaAnual = faturamentoCorrigido.reduce((soma, valor) => (soma + valor))/ faturamentoCorrigido.length   //media Anual
const maiorValorAnual = Math.max(...faturamentoCorrigido)
const menorValorAnual = Math.min(...faturamentoCorrigido)
function calculaDiasSuperiorMedia(arrayDeDias = faturamentoCorrigido, media = mediaAnual){
    let contador = 0;
    for(let i =0; i <= arrayDeDias.length; i++){
        if(arrayDeDias[i] > media) contador++
     }
    return contador
    
} // faturamento diario Superior ao Anual
console.log(faturamentoCorrigido)
console.log(mediaAnual)
console.log(maiorValorAnual)
console.log(menorValorAnual)
console.log(calculaDiasSuperiorMedia())
