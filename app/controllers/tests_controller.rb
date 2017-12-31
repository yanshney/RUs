class TestsController < ApplicationController
  before_action :set_test, only: [:show, :edit, :update, :destroy]
  before_action :set_questions, only:[:show]
  # GET /tests
  # GET /tests.json
  def index
    @tests = Test.all
  end

  # GET /tests/1
  # GET /tests/1.json
  def show
    if params["commit"]=="Next"

      @test.update_attributes(:active_tab=>@test.active_tab+1)
    end
  end

  # GET /tests/new
  def new
    @test = Test.new
  end

  # GET /tests/1/edit
  def edit
  end

  # POST /tests
  # POST /tests.json
  def create
    @test = Test.new(test_params)
    questions_choice = QuestionChoice.all.sample(2);
    questions_move = QuestionMove.all.sample(2);
    questions_choice.each do |q|
      @test.questions_choice << q.id
    end

    questions_move.each do |q|
      @test.questions_move << q.id
    end
    @test.curr_score=0
    @test.active_tab=1
    respond_to do |format|
      if @test.save
        format.html { redirect_to @test, notice: 'Test was successfully created.' }
        format.json { render :show, status: :created, location: @test }
      else
        format.html { render :new }
        format.json { render json: @test.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tests/1
  # PATCH/PUT /tests/1.json
  def update
    respond_to do |format|
      if @test.update(test_params)
        format.html { redirect_to @test, notice: 'Test was successfully updated.' }
        format.json { render :show, status: :ok, location: @test }
      else
        format.html { render :edit }
        format.json { render json: @test.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tests/1
  # DELETE /tests/1.json
  def destroy
    @test.destroy
    respond_to do |format|
      format.html { redirect_to tests_url, notice: 'Test was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_test
      @test = Test.find(params[:id])
    end
    def set_questions
      @question=QuestionLong.all[(params[:id].to_i*7)%QuestionLong.count]
      @questions=QuestionLong.all
      @arr1=@questions[0].ansWrongOne.split(/,/)
      @arr2=@questions[1].ansWrongOne.split(/,/)
      @arr3=@questions[2].ansWrongOne.split(/,/)
      @moves=QuestionMove.all
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def test_params
      params.require(:test).permit(:name)
    end
end
