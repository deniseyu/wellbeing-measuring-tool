class AddFieldsToResponses < ActiveRecord::Migration
  def change
    add_column :responses, :pleasure, :text
    add_column :responses, :purpose, :text
    add_column :responses, :what, :text
    add_column :responses, :who, :text
  end
end
