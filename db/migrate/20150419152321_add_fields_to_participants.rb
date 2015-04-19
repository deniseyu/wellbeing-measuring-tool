class AddFieldsToParticipants < ActiveRecord::Migration
  def change
    add_column :participants, :first_name, :string
    add_column :participants, :last_name, :string
    add_column :participants, :email, :string
    add_column :participants, :phone, :string
    add_column :participants, :notes, :text
  end
end
