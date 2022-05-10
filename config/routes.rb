# VERSIONAMENTO DINAMICO DA API
#   Para acessar a API será necessário colocar http://localhost:3001/api/calls,
#   sem ter a necessidade de colocar a versão após a rota da API:
#   Exemplo: /api/v1/calls
#   Com o versionamento dinâmico:
#   Exemplo: /api/calls

require 'api_constraints'

Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    scope module: :v1,
          constraints: ApiConstraints.new(version: 1, default: true) do
      resources :calls
    end
    # scope module: :v2,
    #       constraints: ApiConstraints.new(version: 2, default: false) do
    #   resources :calls
    # end
  end
end
