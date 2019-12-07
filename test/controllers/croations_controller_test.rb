require 'test_helper'

class CroationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @croation = croations(:one)
  end

  test "should get index" do
    get croations_url
    assert_response :success
  end

  test "should get new" do
    get new_croation_url
    assert_response :success
  end

  test "should create croation" do
    assert_difference('Croation.count') do
      post croations_url, params: { croation: { lang1: @croation.lang1, lang2: @croation.lang2, title: @croation.title, totrans: @croation.totrans, translated: @croation.translated } }
    end

    assert_redirected_to croation_url(Croation.last)
  end

  test "should show croation" do
    get croation_url(@croation)
    assert_response :success
  end

  test "should get edit" do
    get edit_croation_url(@croation)
    assert_response :success
  end

  test "should update croation" do
    patch croation_url(@croation), params: { croation: { lang1: @croation.lang1, lang2: @croation.lang2, title: @croation.title, totrans: @croation.totrans, translated: @croation.translated } }
    assert_redirected_to croation_url(@croation)
  end

  test "should destroy croation" do
    assert_difference('Croation.count', -1) do
      delete croation_url(@croation)
    end

    assert_redirected_to croations_url
  end
end
