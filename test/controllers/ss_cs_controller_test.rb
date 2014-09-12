require 'test_helper'

class SsCsControllerTest < ActionController::TestCase
  setup do
    @ssc = sscs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sscs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ssc" do
    assert_difference('Ssc.count') do
      post :create, ssc: { board: @ssc.board, marks: @ssc.marks, perc: @ssc.perc, school_name: @ssc.school_name, student_id: @ssc.student_id, year: @ssc.year }
    end

    assert_redirected_to ssc_path(assigns(:ssc))
  end

  test "should show ssc" do
    get :show, id: @ssc
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ssc
    assert_response :success
  end

  test "should update ssc" do
    patch :update, id: @ssc, ssc: { board: @ssc.board, marks: @ssc.marks, perc: @ssc.perc, school_name: @ssc.school_name, student_id: @ssc.student_id, year: @ssc.year }
    assert_redirected_to ssc_path(assigns(:ssc))
  end

  test "should destroy ssc" do
    assert_difference('Ssc.count', -1) do
      delete :destroy, id: @ssc
    end

    assert_redirected_to sscs_path
  end
end
