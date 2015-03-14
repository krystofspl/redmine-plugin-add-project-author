require 'redmine'

# Require hooks and patches
require 'specify_project_author/hooks/show_project_form'
require 'specify_project_author/patches/project_patch'

Redmine::Plugin.register :specify_project_author do
  name 'Specify Project Author plugin'
  author 'Kryštof Šplíchal'
  description 'This plugin for Redmine allows a project owner to specify the author of the project.'
  version '0.0.1'
  url ''
  author_url ''
end

# Patch Project
Rails.application.config.to_prepare do
  Project.send(:include, SpecifyProjectAuthor::Patches::ProjectPatch)
end