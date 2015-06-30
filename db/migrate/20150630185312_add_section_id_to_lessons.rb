class AddSectionIdToLessons < ActiveRecord::Migration
  def change
    add_column :lessons, :section_id, :string
    add_column :lessons, :integer, :string
  end
end
