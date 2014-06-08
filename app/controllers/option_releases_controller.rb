class OptionReleasesController < ApplicationController
  before_action :set_option_release, only: [:show, :edit, :update, :destroy]

  # GET /option_releases
  # GET /option_releases.json
  def index
    @option_releases = OptionRelease.all
  end

  # GET /option_releases/1
  # GET /option_releases/1.json
  def show
  end

  # GET /option_releases/new
  def new
    @option_release = OptionRelease.new
  end

  # GET /option_releases/1/edit
  def edit
  end

  # POST /option_releases
  # POST /option_releases.json
  def create
    @option_release = OptionRelease.new(option_release_params)

    respond_to do |format|
      if @option_release.save
        format.html { redirect_to @option_release, notice: 'Option release was successfully created.' }
        format.json { render action: 'show', status: :created, location: @option_release }
      else
        format.html { render action: 'new' }
        format.json { render json: @option_release.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /option_releases/1
  # PATCH/PUT /option_releases/1.json
  def update
    respond_to do |format|
      if @option_release.update(option_release_params)
        format.html { redirect_to @option_release, notice: 'Option release was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @option_release.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /option_releases/1
  # DELETE /option_releases/1.json
  def destroy
    @option_release.destroy
    respond_to do |format|
      format.html { redirect_to option_releases_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_option_release
      @option_release = OptionRelease.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def option_release_params
      params.require(:option_release).permit(:option_id, :release_id, :deprecated, :introduced)
    end
end
