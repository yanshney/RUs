require 'test_helper'

class QuestionLongsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @question_long = question_longs(:one)
  end

  test "should get index" do
    get question_longs_url
    assert_response :success
  end

  test "should get new" do
    get new_question_long_url
    assert_response :success
  end

  test "should create question_long" do
    assert_difference('QuestionLong.count') do
      post question_longs_url, params: { question_long: { AnsRight2: @question_long.AnsRight2, AnsRight: @question_long.AnsRight, AnsWrongOne2: @question_long.AnsWrongOne2, AnsWrongOne: @question_long.AnsWrongOne, AnsWrongThree2: @question_long.AnsWrongThree2, AnsWrongThree: @question_long.AnsWrongThree, AnsWrongTwo2: @question_long.AnsWrongTwo2, AnsWrongTwo: @question_long.AnsWrongTwo, PartOne: @question_long.PartOne, PartThree: @question_long.PartThree, PartTwo: @question_long.PartTwo } }
    end

    assert_redirected_to question_long_url(QuestionLong.last)
  end

  test "should show question_long" do
    get question_long_url(@question_long)
    assert_response :success
  end

  test "should get edit" do
    get edit_question_long_url(@question_long)
    assert_response :success
  end

  test "should update question_long" do
    patch question_long_url(@question_long), params: { question_long: { AnsRight2: @question_long.AnsRight2, AnsRight: @question_long.AnsRight, AnsWrongOne2: @question_long.AnsWrongOne2, AnsWrongOne: @question_long.AnsWrongOne, AnsWrongThree2: @question_long.AnsWrongThree2, AnsWrongThree: @question_long.AnsWrongThree, AnsWrongTwo2: @question_long.AnsWrongTwo2, AnsWrongTwo: @question_long.AnsWrongTwo, PartOne: @question_long.PartOne, PartThree: @question_long.PartThree, PartTwo: @question_long.PartTwo } }
    assert_redirected_to question_long_url(@question_long)
  end

  test "should destroy question_long" do
    assert_difference('QuestionLong.count', -1) do
      delete question_long_url(@question_long)
    end

    assert_redirected_to question_longs_url
  end
end
