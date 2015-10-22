# encoding: UTF-8
# action.rb



module API
  #
  class Correios
    # consultar action
    def get(characs_hash)
      url = "#{ENV['CORREIOS_HOST']}/#{characs_hash['cep']}.json"
      @result = HttpHelper.get(url)
    end

    # consultar codigo HTTP da operacao
    def get_result
      @result.code.to_s
    end

    # consultar body da response
    def get_result_body
      @result.to_s
    end

    # consultar bairro da resposta
    def bairro
      puts "bairro: "+@result['bairro']
      @result['bairro']
    end

    # consultar logradouro da resposta
    def logradouro
      puts "logradouro: "+@result['logradouro']
      @result['logradouro']
    end

    # consultar cep da resposta
    def cep
      puts "cep: "+@result['cep']
      @result['cep']
    end

    # consultar uf da resposta
    def uf
      puts "uf: "+@result['uf']
      @result['uf']
    end

    # consultar localidade da resposta
    def localidade
      puts "localidade: "+@result['localidade']
      @result['localidade']
    end

    # consultar erro da resposta
    def erro
      erro = @result.body
      erro = erro.split(":").last
      erro = erro.split("}").first
      erro
    end

  end
end
