class AddFieldsToSurvey < ActiveRecord::Migration
  def change
    add_reference :surveys, :study, index: true
  end
end
