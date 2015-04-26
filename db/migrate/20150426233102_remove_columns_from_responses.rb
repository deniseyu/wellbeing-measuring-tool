class RemoveColumnsFromResponses < ActiveRecord::Migration
  def change
    remove_column :responses, :pleasure
    remove_column :responses, :purpose
  end
end
