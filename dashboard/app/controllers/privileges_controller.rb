class PrivilegesController < ApplicationController

  respond_to :html, :json
  
  # GET /privileges
  # GET /privileges.json
  def index
    @privileges = Privilege.all
    
  end
end
