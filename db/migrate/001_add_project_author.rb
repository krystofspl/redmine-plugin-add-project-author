class AddProjectAuthor < ActiveRecord::Migration
  def change
    add_column :projects, :project_author_id, :integer, index: true
  end
end