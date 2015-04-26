class RecordsController < ApplicationController
  before_action :set_study
  before_action :authenticate_user!

  def index
  end

  def new
    if @study.participants.empty?
      flash[:notice] = 'You must add some participants first!'
      redirect_to new_study_participant_path
    end
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
    @record = Record.find(params[:id])
    @responses = @record.responses
  end

  protected

  def set_study
    @study = Study.find(params[:study_id])
  end

  def record_params
    params.require(:record).permit(:notes)
  end
end
