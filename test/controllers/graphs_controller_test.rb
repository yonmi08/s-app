require 'test_helper'

class GraphsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get graphs_index_url
    assert_response :success
  end

  test "should get create" do
    get graphs_create_url
    assert_response :success
  end

  test "should get edit" do
    get graphs_edit_url
    assert_response :success
  end

end
