class AddPleasurePurposeColumnsToResponses < ActiveRecord::Migration
  def change
    add_column :responses, :pleasure, :integer
    add_column :responses, :purpose, :integer
  end
end
