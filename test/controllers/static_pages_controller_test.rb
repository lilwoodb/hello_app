require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "Home | Stim Center"
  end

  test "should get help" do
    get help_path
    assert_response :success
    assert_select "title", "What is Stimming? | Stim Center"
  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "About | Stim Center"
  end

  test "should get sources" do
    get sources_path
    assert_response :success
    assert_select "title", "Sources | Stim Center"
  end
  
end
