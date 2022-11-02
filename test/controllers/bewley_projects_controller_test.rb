require "test_helper"

class BewleyProjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bewley_project = bewley_projects(:one)
  end

  test "should get index" do
    get bewley_projects_url
    assert_response :success
  end

  test "should get new" do
    get new_bewley_project_url
    assert_response :success
  end

  test "should create bewley_project" do
    assert_difference("BewleyProject.count") do
      post bewley_projects_url, params: { bewley_project: { description: @bewley_project.description, title: @bewley_project.title } }
    end

    assert_redirected_to bewley_project_url(BewleyProject.last)
  end

  test "should show bewley_project" do
    get bewley_project_url(@bewley_project)
    assert_response :success
  end

  test "should get edit" do
    get edit_bewley_project_url(@bewley_project)
    assert_response :success
  end

  test "should update bewley_project" do
    patch bewley_project_url(@bewley_project), params: { bewley_project: { description: @bewley_project.description, title: @bewley_project.title } }
    assert_redirected_to bewley_project_url(@bewley_project)
  end

  test "should destroy bewley_project" do
    assert_difference("BewleyProject.count", -1) do
      delete bewley_project_url(@bewley_project)
    end

    assert_redirected_to bewley_projects_url
  end
end
