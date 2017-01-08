require 'test_helper'

class ForFunsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @for_fun = for_funs(:one)
  end

  test "should get index" do
    get for_funs_url
    assert_response :success
  end

  test "should get new" do
    get new_for_fun_url
    assert_response :success
  end

  test "should create for_fun" do
    assert_difference('ForFun.count') do
      post for_funs_url, params: { for_fun: { description: @for_fun.description, title: @for_fun.title } }
    end

    assert_redirected_to for_fun_url(ForFun.last)
  end

  test "should show for_fun" do
    get for_fun_url(@for_fun)
    assert_response :success
  end

  test "should get edit" do
    get edit_for_fun_url(@for_fun)
    assert_response :success
  end

  test "should update for_fun" do
    patch for_fun_url(@for_fun), params: { for_fun: { description: @for_fun.description, title: @for_fun.title } }
    assert_redirected_to for_fun_url(@for_fun)
  end

  test "should destroy for_fun" do
    assert_difference('ForFun.count', -1) do
      delete for_fun_url(@for_fun)
    end

    assert_redirected_to for_funs_url
  end
end
