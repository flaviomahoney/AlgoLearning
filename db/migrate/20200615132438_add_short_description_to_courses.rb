class AddShortDescriptionToCourses < ActiveRecord::Migration[6.0]
  def change
    add_column :courses, :short_description, :string
  end
end
