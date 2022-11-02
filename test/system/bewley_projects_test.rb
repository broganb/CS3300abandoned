require "application_system_test_case"

class BewleyProjectsTest < ApplicationSystemTestCase
  setup do
    @bewley_project = bewley_projects(:one)
  end

  test "visiting the index" do
    visit bewley_projects_url
    assert_selector "h1", text: "Bewley projects"
  end

  test "should create bewley project" do
    visit bewley_projects_url
    click_on "New bewley project"

    fill_in "Description", with: @bewley_project.description
    fill_in "Title", with: @bewley_project.title
    click_on "Create Bewley project"

    assert_text "Bewley project was successfully created"
    click_on "Back"
  end

  test "should update Bewley project" do
    visit bewley_project_url(@bewley_project)
    click_on "Edit this bewley project", match: :first

    fill_in "Description", with: @bewley_project.description
    fill_in "Title", with: @bewley_project.title
    click_on "Update Bewley project"

    assert_text "Bewley project was successfully updated"
    click_on "Back"
  end

  test "should destroy Bewley project" do
    visit bewley_project_url(@bewley_project)
    click_on "Destroy this bewley project", match: :first

    assert_text "Bewley project was successfully destroyed"
  end
end
