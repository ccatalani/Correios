# encoding: UTF-8


Dado(/^um caso de teste "([^"]*)"$/) do |caso_teste|
  puts "CASO DE TESTE: "+caso_teste
end

Quando(/^eu consultar o cep abaixo na API dos CORREIOS$/) do |table|
  table.hashes.each do |hash|
    @requisition = API::Correios.new
    @response = @requisition.get(hash)
  end
end

Entao(/^eu devo receber o resultado "([^"]*)"$/) do |resultado|
  expect(@requisition.get_result).to eq(resultado)
end

Entao(/^devo receber o bairro "([^"]*)"$/) do |bairro|
  expect(@requisition.bairro).to eq(bairro)
end

Entao(/^devo receber o logradouro "([^"]*)"$/) do |logradouro|
  expect(@requisition.logradouro).to eq(logradouro)
end

Entao(/^devo receber o uf "([^"]*)"$/) do |uf|
  expect(@requisition.uf).to eq(uf)
end

Entao(/^devo receber a localidade "([^"]*)"$/) do |localidade|
  expect(@requisition.localidade).to eq(localidade)
end


Entao(/^devo receber o erro "([^"]*)"$/) do |erro|
  expect(@requisition.erro).to eq(erro)
end

