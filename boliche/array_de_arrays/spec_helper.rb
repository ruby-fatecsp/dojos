require 'rubygems'
require 'boliche'

begin
  require 'spec-i18n'
rescue LoadError
  puts("Voce nao tem instalado a gem rspec-i18n")
  puts("Para Instalar rode o comando: [sudo] gem install rspec-i18n")
end


Spec::Runner.configure do |config|
  config.spec_language :pt
end