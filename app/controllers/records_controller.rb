class RecordsController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @study = Study.find(params[:study_id])
  end

  def new
    @study = Study.find(params[:study_id])
    @record = Record.new
  end

  def create
    @study = Study.find(params[:study_id])
    @record = @study.records.create(record_params)

    if @record.save
      @study.participants.each do |participant|
        RecordMailer.response_email(@study, participant).deliver
        redirect_to study_records_path(@study)
      end
    else
      redirect_to new_study_record_path(@study)
    end
  end

  protected

  def record_params
    params.require(:record).permit(:notes)
  end
end
