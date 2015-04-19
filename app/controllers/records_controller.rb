class RecordsController < ApplicationController
  def index
    @study = Study.find(params[:study_id])
  end

  protected

  def record_params
    params.require(:study).permit(:title, :description, :start_date, :end_date)
  end
end
