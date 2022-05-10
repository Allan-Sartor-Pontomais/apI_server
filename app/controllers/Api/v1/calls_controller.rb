class Api::V1::CallsController < ApplicationController
  before_action :set_call, only: %i[ show update destroy ]

  # Listagem de chamados | GET /calls
  def index
    @calls = Call.all

    render json: { status: 'SUCCESS', message:'Chamados carregados', data: @calls}, status: 201
  end

  # Visualizar chamado | GET /calls/id
  def show
    render json: @call
  end

  # Criar novo chamado | POST /calls, { callObject }
  def create
    @call = Call.new(call_params)

    if @call.save
      render json: @call, status: :created, location: @call
    else
      render json: @call.errors, status: :unprocessable_entity
    end
  end

  # Atualizar o chamado | PATCH/PUT /calls/id, { callObject }
  def update
    if @call.update(call_params)
      render json: @call
    else
      render json: @call.errors, status: :unprocessable_entity
    end
  end

  # Deletar chamado | DELETE  /calls/id
  def destroy
    @call.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_call
      @call = Call.find(params[:id])
    end

    # Parametros aceitos nas requisições
    def call_params
      params.require(:call).permit(:priority_level, :anydesk_number, :description, :image_url, :call_status)
    end
end    