class MatieresController < ApplicationController
  before_action :set_matiere, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @matieres = Matiere.all
    respond_with(@matieres)
  end

  def show
    respond_with(@matiere)
  end

  def new
    @matiere = Matiere.new
    respond_with(@matiere)
  end

  def edit
  end

  def create
    @matiere = Matiere.new(matiere_params)
    @matiere.save
    respond_with(@matiere)
  end

  def update
    @matiere.update(matiere_params)
    respond_with(@matiere)
  end

  def destroy
    @matiere.destroy
    respond_with(@matiere)
  end

  private
    def set_matiere
      @matiere = Matiere.find(params[:id])
    end

    def matiere_params
      params.require(:matiere).permit(:title)
    end
end
