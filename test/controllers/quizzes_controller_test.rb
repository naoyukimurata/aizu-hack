require 'test_helper'

class QuizzesControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get quizzes_top_url
    assert_response :success
  end

  test "should get hint" do
    get quizzes_hint_url
    assert_response :success
  end

  test "should get ans" do
    get quizzes_ans_url
    assert_response :success
  end

end
