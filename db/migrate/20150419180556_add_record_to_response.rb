class AddRecordToResponse < ActiveRecord::Migration
  def change
    add_reference :responses, :record, index: true
  end
end
