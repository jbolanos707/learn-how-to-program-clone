class AddSectionNumberToSections < ActiveRecord::Migration
  def change
    add_column :sections, :section_number, :integer
  end
end
