class StrokesExpectedShotsController < ApplicationController
  before_action :set_strokes_expected_shot, only: [:show, :edit, :update, :destroy]

  # GET /strokes_expected_shots
  def index
    @strokes_expected_shots = StrokesExpectedShot.all
  end

  # GET /strokes_expected_shots/1
  def show
  end

  # GET /strokes_expected_shots/new
  def new
    @strokes_expected_shot = StrokesExpectedShot.new
  end

  # GET /strokes_expected_shots/1/edit
  def edit
  end

  # POST /strokes_expected_shots
  def create
    @strokes_expected_shot = StrokesExpectedShot.new(strokes_expected_shot_params)

    if @strokes_expected_shot.save
      redirect_to @strokes_expected_shot, notice: 'Strokes expected shot was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /strokes_expected_shots/1
  def update
    if @strokes_expected_shot.update(strokes_expected_shot_params)
      redirect_to @strokes_expected_shot, notice: 'Strokes expected shot was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /strokes_expected_shots/1
  def destroy
    @strokes_expected_shot.destroy
    redirect_to strokes_expected_shots_url, notice: 'Strokes expected shot was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_strokes_expected_shot
      @strokes_expected_shot = StrokesExpectedShot.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def strokes_expected_shot_params
      params[:strokes_expected_shot]
    end
end
