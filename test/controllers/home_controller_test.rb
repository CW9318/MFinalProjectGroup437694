require "test_helper"

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get home_index_url
    assert_response :success
  end

  test "should get instructor" do
    get home_instructor_url
    assert_response :success
  end

  test "should get student" do
    get home_student_url
    assert_response :success
  end
end
