require 'test_helper'

class QuestionMovesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @question_move = question_moves(:one)
  end

  test "should get index" do
    get question_moves_url
    assert_response :success
  end

  test "should get new" do
    get new_question_move_url
    assert_response :success
  end

  test "should create question_move" do
    assert_difference('QuestionMove.count') do
      post question_moves_url, params: { question_move: { gender: @question_move.gender, word: @question_move.word } }
    end

    assert_redirected_to question_move_url(QuestionMove.last)
  end

  test "should show question_move" do
    get question_move_url(@question_move)
    assert_response :success
  end

  test "should get edit" do
    get edit_question_move_url(@question_move)
    assert_response :success
  end

  test "should update question_move" do
    patch question_move_url(@question_move), params: { question_move: { gender: @question_move.gender, word: @question_move.word } }
    assert_redirected_to question_move_url(@question_move)
  end

  test "should destroy question_move" do
    assert_difference('QuestionMove.count', -1) do
      delete question_move_url(@question_move)
    end

    assert_redirected_to question_moves_url
  end
end
