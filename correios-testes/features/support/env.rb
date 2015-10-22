# encoding: UTF-8
require 'httparty'
require 'active_support'
require 'active_support/builder'
require 'active_support/core_ext'


# CARREGA TODOS OS ARQUIVOS DA PASTA COMMON
Dir[File.dirname(__FILE__) + '/../../common/*.rb'].each { |file| require file }

# CARREGA TODOS OS ARQUIVOS DA PASTA BUSINESS
Dir[File.dirname(__FILE__) + '/../../business/*.rb'].each { |file| require file }

########################################
#####       HOST CORREIOS         ######
########################################
ENV['CORREIOS_HOST'] = 'http://cep.correiocontrol.com.br'
