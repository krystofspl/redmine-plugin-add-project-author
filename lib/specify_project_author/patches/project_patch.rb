module SpecifyProjectAuthor
  module Patches
    module ProjectPatch
      def self.included(base)
        base.class_eval do
          unloadable
          belongs_to :project_author, :class_name => 'User', :foreign_key => 'project_author_id'
          Project.safe_attributes 'project_author_id'
        end
      end
    end
  end
end