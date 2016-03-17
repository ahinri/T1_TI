class AmigosController < ApplicationController
  before_action :set_amigo, only: [:show, :update, :destroy]

  # GET /amigos
  # GET /amigos.json
  def index
    @amigos = Amigo.all

    render json: @amigos
  end

  # GET /amigos/1
  # GET /amigos/1.json
  def show
    render json: @amigo
  end

  # POST /amigos
  # POST /amigos.json
  def create
    @amigo = Amigo.new(amigo_params)

    if @amigo.save
      render json: @amigo, status: :created, location: @amigo
    else
      render json: @amigo.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /amigos/1
  # PATCH/PUT /amigos/1.json
  def update
    @amigo = Amigo.find(params[:id])

    if @amigo.update(amigo_params)
      head :no_content
    else
      render json: @amigo.errors, status: :unprocessable_entity
    end
  end

  # DELETE /amigos/1
  # DELETE /amigos/1.json
  def destroy
    @amigo.destroy

    head :no_content
  end

  private

    def set_amigo
      @amigo = Amigo.find(params[:id])
    end

    def amigo_params
      params[:amigo]
    end
end
