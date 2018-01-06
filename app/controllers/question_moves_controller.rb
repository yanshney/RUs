class QuestionMovesController < ApplicationController
  before_action :set_question_move, only: [:show, :edit, :update, :destroy]

  # GET /question_moves
  # GET /question_moves.json
  def index
    @question_moves = QuestionMove.all
  end

  # GET /question_moves/1
  # GET /question_moves/1.json
  def show
  end

  # GET /question_moves/new
  def new
    if !current_user
      redirect_to root_url
    else
    @question_move = QuestionMove.new
  end
  end

  # GET /question_moves/1/edit
  def edit
  end

  # POST /question_moves
  # POST /question_moves.json
  def create
    @question_move = QuestionMove.new(question_move_params)

    respond_to do |format|
      if @question_move.save
        format.html { redirect_to @question_move, notice: 'Question move was successfully created.' }
        format.json { render :show, status: :created, location: @question_move }
      else
        format.html { render :new }
        format.json { render json: @question_move.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /question_moves/1
  # PATCH/PUT /question_moves/1.json
  def update
    respond_to do |format|
      if @question_move.update(question_move_params)
        format.html { redirect_to @question_move, notice: 'Question move was successfully updated.' }
        format.json { render :show, status: :ok, location: @question_move }
      else
        format.html { render :edit }
        format.json { render json: @question_move.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /question_moves/1
  # DELETE /question_moves/1.json
  def destroy
    @question_move.destroy
    respond_to do |format|
      format.html { redirect_to question_moves_url, notice: 'Question move was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question_move
      @question_move = QuestionMove.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def question_move_params
      params.require(:question_move).permit(:word, :gender)
    end
end
