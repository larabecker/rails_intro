require 'test_helper'

class AnswersControllerTest < ActionController::TestCase
  setup do
    @answer = answers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:answers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create answer" do
    assert_difference('Answer.count') do
      post :create, answer: { question_id: @answer.question_id, sequence: 99, text: @answer.text, value: 99 }
    end

    assert_redirected_to answer_path(assigns(:answer))
  end

  test "should show answer" do
    get :show, id: @answer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @answer
    assert_response :success
  end

  test "should update answer" do
    put :update, id: @answer, answer: { question_id: @answer.question_id, sequence: @answer.sequence, text: @answer.text, value: @answer.value }
    assert_redirected_to answer_path(assigns(:answer))
  end

  test "should destroy answer" do
    assert_difference('Answer.count', -1) do
      delete :destroy, id: @answer
    end

    assert_redirected_to answers_path
  end
end
