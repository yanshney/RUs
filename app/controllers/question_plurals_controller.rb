class QuestionPluralsController < ApplicationController
  before_action :set_question_plural, only: [:show, :edit, :update, :destroy]

  # GET /question_plurals
  # GET /question_plurals.json
  def index
    @question_plurals = QuestionPlural.all
  end

  # GET /question_plurals/1
  # GET /question_plurals/1.json
  def show
  end

  # GET /question_plurals/new
  def new
    if !current_user
      redirect_to root_url

    else
    @question_plural = QuestionPlural.new
  end
  end

  # GET /question_plurals/1/edit
  def edit
  end

  # POST /question_plurals
  # POST /question_plurals.json
  def create
    @question_plural = QuestionPlural.new(question_plural_params)

    respond_to do |format|
      if @question_plural.save
        format.html { redirect_to @question_plural, notice: 'Question plural was successfully created.' }
        format.json { render :show, status: :created, location: @question_plural }
      else
        format.html { render :new }
        format.json { render json: @question_plural.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /question_plurals/1
  # PATCH/PUT /question_plurals/1.json
  def update
    respond_to do |format|
      if @question_plural.update(question_plural_params)
        format.html { redirect_to @question_plural, notice: 'Question plural was successfully updated.' }
        format.json { render :show, status: :ok, location: @question_plural }
      else
        format.html { render :edit }
        format.json { render json: @question_plural.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /question_plurals/1
  # DELETE /question_plurals/1.json
  def destroy
    @question_plural.destroy
    respond_to do |format|
      format.html { redirect_to question_plurals_url, notice: 'Question plural was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question_plural
      @question_plural = QuestionPlural.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def question_plural_params
      params.require(:question_plural).permit(:question, :answer)
    end
end
