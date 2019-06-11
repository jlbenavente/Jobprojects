class AgreementsController < ApplicationController
  before_action :authenticate_user!

  def index
    @agreements = current_user.agreements
  end
  def create
  	@joboffer = Joboffer.find(params[:joboffer_id])
  	@agreement = Agreement.new(joboffer: @joboffer, user: current_user)
  	if @agreement.save
  		redirect_to joboffers_path, notice: 'Has cerrado el trato'
  	else
  		redirect_to joboffers_path, alert: 'El trato no ha podido ser cerrado'
  	end
  end
end
