class RecordsController < ApplicationController
  before_action :set_study
  before_action :authenticate_user!

  def index
  end

  def new
    return redirect_to new_study_participants_path if @study.participants.empty?
    @record = Record.new
  end

  def create
    @record = @study.records.create(record_params)

    if @record.save
      @study.participants.each do |participant|
        RecordMailer.response_email(@study, @record, participant).deliver
      end
      redirect_to study_records_path(@study)
    else
      redirect_to new_study_record_path(@study)
    end
  end

  def show
  end

  protected

  def set_study
    @study = Study.find(params[:study_id])
  end

  def record_params
    params.require(:record).permit(:notes)
  end
end
