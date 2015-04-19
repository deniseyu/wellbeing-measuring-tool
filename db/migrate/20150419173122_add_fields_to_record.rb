class AddFieldsToRecord < ActiveRecord::Migration
  def change
    add_column :records, :notes, :text
  end
end
