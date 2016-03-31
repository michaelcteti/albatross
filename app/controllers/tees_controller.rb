class TeesController < ApplicationController
  before_action :set_tee, only: [:show, :edit, :update, :destroy]

  # GET /tees
  def index
    @tees = Tee.all
  end

  # GET /tees/1
  def show
  end

  # GET /tees/new
  def new
    @tee = Tee.new
  end

  # GET /tees/1/edit
  def edit
  end

  # POST /tees
  def create
    @tee = Tee.new(tee_params)

    if @tee.save
      redirect_to @tee, notice: 'Tee was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /tees/1
  def update
    if @tee.update(tee_params)
      redirect_to @tee, notice: 'Tee was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /tees/1
  def destroy
    @tee.destroy
    redirect_to tees_url, notice: 'Tee was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tee
      @tee = Tee.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tee_params
      params[:tee]
    end
end
