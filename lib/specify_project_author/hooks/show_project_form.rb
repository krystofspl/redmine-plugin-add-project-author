module SpecifyProjectAuthor
  module Hooks
    class ShowProjectForm < Redmine::Hook::ViewListener
      render_on :view_projects_form, :partial => 'hooks/project_settings_form'
    end
  end
end