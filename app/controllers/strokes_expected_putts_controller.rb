class StrokesExpectedPuttsController < ApplicationController
  before_action :set_strokes_expected_putt, only: [:show, :edit, :update, :destroy]

  # GET /strokes_expected_putts
  def index
    @strokes_expected_putts = StrokesExpectedPutt.all
  end

  # GET /strokes_expected_putts/1
  def show
  end

  # GET /strokes_expected_putts/new
  def new
    @strokes_expected_putt = StrokesExpectedPutt.new
  end

  # GET /strokes_expected_putts/1/edit
  def edit
  end

  # POST /strokes_expected_putts
  def create
    @strokes_expected_putt = StrokesExpectedPutt.new(strokes_expected_putt_params)

    if @strokes_expected_putt.save
      redirect_to @strokes_expected_putt, notice: 'Strokes expected putt was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /strokes_expected_putts/1
  def update
    if @strokes_expected_putt.update(strokes_expected_putt_params)
      redirect_to @strokes_expected_putt, notice: 'Strokes expected putt was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /strokes_expected_putts/1
  def destroy
    @strokes_expected_putt.destroy
    redirect_to strokes_expected_putts_url, notice: 'Strokes expected putt was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_strokes_expected_putt
      @strokes_expected_putt = StrokesExpectedPutt.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def strokes_expected_putt_params
      params[:strokes_expected_putt]
    end
end
