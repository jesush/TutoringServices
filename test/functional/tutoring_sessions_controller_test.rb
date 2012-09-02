require 'test_helper'

class TutoringSessionsControllerTest < ActionController::TestCase
  setup do
    @tutoring_session = tutoring_sessions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tutoring_sessions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tutoring_session" do
    assert_difference('TutoringSession.count') do
      post :create, tutoring_session: { date: @tutoring_session.date, description: @tutoring_session.description, end_time: @tutoring_session.end_time, start_time: @tutoring_session.start_time }
    end

    assert_redirected_to tutoring_session_path(assigns(:tutoring_session))
  end

  test "should show tutoring_session" do
    get :show, id: @tutoring_session
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tutoring_session
    assert_response :success
  end

  test "should update tutoring_session" do
    put :update, id: @tutoring_session, tutoring_session: { date: @tutoring_session.date, description: @tutoring_session.description, end_time: @tutoring_session.end_time, start_time: @tutoring_session.start_time }
    assert_redirected_to tutoring_session_path(assigns(:tutoring_session))
  end

  test "should destroy tutoring_session" do
    assert_difference('TutoringSession.count', -1) do
      delete :destroy, id: @tutoring_session
    end

    assert_redirected_to tutoring_sessions_path
  end
end
