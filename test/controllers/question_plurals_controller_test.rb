require 'test_helper'

class QuestionPluralsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @question_plural = question_plurals(:one)
  end

  test "should get index" do
    get question_plurals_url
    assert_response :success
  end

  test "should get new" do
    get new_question_plural_url
    assert_response :success
  end

  test "should create question_plural" do
    assert_difference('QuestionPlural.count') do
      post question_plurals_url, params: { question_plural: { plural: @question_plural.plural, singular: @question_plural.singular } }
    end

    assert_redirected_to question_plural_url(QuestionPlural.last)
  end

  test "should show question_plural" do
    get question_plural_url(@question_plural)
    assert_response :success
  end

  test "should get edit" do
    get edit_question_plural_url(@question_plural)
    assert_response :success
  end

  test "should update question_plural" do
    patch question_plural_url(@question_plural), params: { question_plural: { plural: @question_plural.plural, singular: @question_plural.singular } }
    assert_redirected_to question_plural_url(@question_plural)
  end

  test "should destroy question_plural" do
    assert_difference('QuestionPlural.count', -1) do
      delete question_plural_url(@question_plural)
    end

    assert_redirected_to question_plurals_url
  end
end
