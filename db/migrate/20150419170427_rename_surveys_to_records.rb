class RenameSurveysToRecords < ActiveRecord::Migration
  def change
    rename_table :surveys, :records
  end
end
