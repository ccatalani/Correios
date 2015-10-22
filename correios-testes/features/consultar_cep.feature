# encoding: UTF-8
# language: pt

Funcionalidade: Consultar CEP na API dos CORREIOS
  Como usuario da API dos CORREIOS, necessito validar seu correto funcionamento

  Esquema do Cenário: Consultar CEP válido
    Dado um caso de teste "<ct_id>"

    Quando eu consultar o cep abaixo na API dos CORREIOS
      | cep   |  
      | <cep> |  

    Entao eu devo receber o resultado "<result>"
    E devo receber o bairro "<bairro>"
    E devo receber o logradouro "<logradouro>"
    E devo receber o uf "<uf>"
    E devo receber a localidade "<localidade>"

  Exemplos:
    | ct_id  | result | cep      | bairro             | logradouro                            | uf | localidade |  
    | CT_001 | 200    | 13040089 | Jardim Nova Europa | Rua Manoel Sylvestre de Freitas Filho | SP | Campinas   |  


  Esquema do Cenário: Esquema do Cenário: Consultar CEP inválido
    Dado um caso de teste "<ct_id>"

    Quando eu consultar o cep abaixo na API dos CORREIOS
      | cep   |  
      | <cep> |  

    Entao eu devo receber o resultado "<result>"
    E devo receber o erro "<erro>"

  Exemplos:
    | ct_id  | result | cep      | erro |
    | CT_002 | 200    | 9999A999 | true |
