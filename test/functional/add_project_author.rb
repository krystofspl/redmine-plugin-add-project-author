require File.dirname(__FILE__) + '/../test_helper'
class AddProjectAuthor < ActionController::TestCase
  tests ProjectsController
  fixtures :users, :projects

  def setup
    # Set current user
    @user = User.find_by_login('admin')
    @request.session[:user_id] = @user.id
  end

  test "should allow adding project author" do
    project_author = User.order("RAND()").first()
    post :create, project: {
                    name: 'Project',
                    identifier: 'project',
                    project_author_id: project_author.id
                }
    created_project = Project.find_by_identifier('project')
    assert_equal project_author.id, created_project.project_author_id
  end
end