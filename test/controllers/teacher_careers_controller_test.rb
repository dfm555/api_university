require 'test_helper'

class TeacherCareersControllerTest < ActionController::TestCase
  setup do
    @teacher_career = teacher_careers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:teacher_careers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create teacher_career" do
    assert_difference('TeacherCareer.count') do
      post :create, teacher_career: { career_id: @teacher_career.career_id, teacher: @teacher_career.teacher }
    end

    assert_redirected_to teacher_career_path(assigns(:teacher_career))
  end

  test "should show teacher_career" do
    get :show, id: @teacher_career
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @teacher_career
    assert_response :success
  end

  test "should update teacher_career" do
    patch :update, id: @teacher_career, teacher_career: { career_id: @teacher_career.career_id, teacher: @teacher_career.teacher }
    assert_redirected_to teacher_career_path(assigns(:teacher_career))
  end

  test "should destroy teacher_career" do
    assert_difference('TeacherCareer.count', -1) do
      delete :destroy, id: @teacher_career
    end

    assert_redirected_to teacher_careers_path
  end
end
