class ParticipantsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_study

  def index
  end

  def new
    @participant = Participant.new
  end

  def create
    @participant = @study.participants.new(participant_params)

    if @study.save
      ParticipantMailer.intro_email(@participant, @study).deliver
      redirect_to study_path(@study)
    else
      flash[:notice] = 'Sorry, something went wrong. Please make sure all required fields are filled out.'
      redirect_to new_study_participant_path
    end
  end

  def destroy
    participant = Participant.find(params[:id])
    participant.destroy
    flash[:notice] = 'Participant successfully removed.'
    redirect_to study_participants_path(@study)
  end

  protected

  def set_study
    @study = Study.find(params[:study_id])
  end

  def participant_params
    params.require(:participant).permit(:first_name, :last_name, :email, :phone, :notes)
  end
end
