class AddFieldsToStudy < ActiveRecord::Migration
  def change
    add_column :studies, :title, :text, :default => ''
    add_column :studies, :description, :text, :default => ''
    add_column :studies, :start_date, :date
    add_column :studies, :end_date, :date
  end
end
