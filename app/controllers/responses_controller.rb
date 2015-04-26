class ResponsesController < ApplicationController
  def index
    @record = Record.find(params[:record_id])
  end

  def new
    @record = Record.find(params[:record_id])
    @response = Response.new
  end

  def create
    @record = Record.find(params[:record_id])
    response = @record.responses.create(response_params)

    if response.save
      redirect_to success_path
    else
      flash[:notice] = 'There were some errors with saving your answers.'
      redirect_to :back
    end
  end

  protected

  def response_params
    params.require(:response).permit(:pleasure, :purpose, :what, :who)
  end

end
