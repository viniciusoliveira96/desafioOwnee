class FilmesController < ApplicationController
  before_action :set_filme, only: [:show, :edit, :update, :destroy]

  def index
    if params[:search]
      @filmes = Filme.search(params[:search])
    else
      @filmes = Filme.all
    end
  end

  def show
  end

  def new
    @filme = Filme.new
  end

  def edit
  end

  def create
    @filme = Filme.new(filme_params)

    respond_to do |format|
      if @filme.save
        format.html { redirect_to @filme, notice: 'Filme was successfully created.' }
        format.json { render :show, status: :created, location: @filme }
      else
        format.html { render :new }
        format.json { render json: @filme.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @filme.update(filme_params)
        format.html { redirect_to @filme, notice: 'Filme was successfully updated.' }
        format.json { render :show, status: :ok, location: @filme }
      else
        format.html { render :edit }
        format.json { render json: @filme.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @filme.destroy
    respond_to do |format|
      format.html { redirect_to filmes_url, notice: 'Filme was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_filme
      @filme = Filme.find(params[:id])
    end

    def filme_params
      params.require(:filme).permit(:nome, :genero, :preco)
    end
end
