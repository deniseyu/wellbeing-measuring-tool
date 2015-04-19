class ParticipantsController < ApplicationController
  def index
    @study = Study.find(params[:study_id])
  end

  def new
    @study = Study.find(params[:study_id])
    @participant = Participant.new
  end

  def create
    @study = Study.find(params[:study_id])
    @participant = @study.participants.new(participant_params)

    if @study.save
      ParticipantMailer.intro_email(@participant).deliver
      redirect_to study_path(@study)
    else
      redirect_to new_study_participant_path
    end
  end

  protected

  def participant_params
    params.require(:participant).permit(:first_name, :last_name, :email, :phone, :notes)
  end
end
