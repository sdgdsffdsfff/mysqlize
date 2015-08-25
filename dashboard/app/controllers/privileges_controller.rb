class PrivilegesController < ApplicationController

  respond_to :html, :json
  
  # GET /privileges.json
  def index
    @privileges = Privilege.all
    
    render json: @privileges    
  end
end
