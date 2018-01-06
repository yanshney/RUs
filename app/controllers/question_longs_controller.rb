class QuestionLongsController < ApplicationController
  before_action :set_question_long, only: [:show, :edit, :update, :destroy]

  # GET /question_longs
  # GET /question_longs.json
  def index
    @question_longs = QuestionLong.all
  end

  # GET /question_longs/1
  # GET /question_longs/1.json
  def show
if @question_long.ansWrongOne
@arr = @question_long.ansWrongOne.split(/,/)
end
  end

  # GET /question_longs/new
  def new
    if !current_user
      redirect_to root_url
    end
    @question_long = QuestionLong.new
  end

  # GET /question_longs/1/edit
  def edit
  end

  # POST /question_longs
  # POST /question_longs.json
  def create
    @question_long = QuestionLong.new(question_long_params)
    respond_to do |format|
      if @question_long.save
        format.html { redirect_to @question_long, notice: 'Question long was successfully created.' }
        format.json { render :show, status: :created, location: @question_long }
      else
        format.html { render :new }
        format.json { render json: @question_long.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /question_longs/1
  # PATCH/PUT /question_longs/1.json
  def update
    respond_to do |format|
      if @question_long.update(question_long_params)
        format.html { redirect_to @question_long, notice: 'Question long was successfully updated.' }
        format.json { render :show, status: :ok, location: @question_long }
      else
        format.html { render :edit }
        format.json { render json: @question_long.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /question_longs/1
  # DELETE /question_longs/1.json
  def destroy
    @question_long.destroy
    respond_to do |format|
      format.html { redirect_to question_longs_url, notice: 'Question long was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question_long
      @question_long = QuestionLong.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def question_long_params
      params.require(:question_long).permit(:partOne, :ansWrongOne, :ansWrongTwo, :ansWrongThree, :ansRight, :partTwo, :ansWrongOne2, :ansWrongTwo2, :ansWrongThree2, :ansRight2, :partThree)
    end
end
