require 'test_helper'

class CareerSubjectsControllerTest < ActionController::TestCase
  setup do
    @career_subject = career_subjects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:career_subjects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create career_subject" do
    assert_difference('CareerSubject.count') do
      post :create, career_subject: {  }
    end

    assert_redirected_to career_subject_path(assigns(:career_subject))
  end

  test "should show career_subject" do
    get :show, id: @career_subject
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @career_subject
    assert_response :success
  end

  test "should update career_subject" do
    patch :update, id: @career_subject, career_subject: {  }
    assert_redirected_to career_subject_path(assigns(:career_subject))
  end

  test "should destroy career_subject" do
    assert_difference('CareerSubject.count', -1) do
      delete :destroy, id: @career_subject
    end

    assert_redirected_to career_subjects_path
  end
end
