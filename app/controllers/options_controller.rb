class OptionsController < ApplicationController
  before_action :set_option, only: [:show, :edit, :update, :destroy]

  # GET /options
  # GET /options.json
  def index
    @options = Option.joins('LEFT JOIN categories ON categories.id = options.category_id').order(:name)

  end

  # GET /options/1
  # GET /options/1.json
  def show
  end

  # GET /options/new
  def new
    @option = Option.new
    @tools = Tool.all
    @categories = Category.all
  end

  # GET /options/1/edit
  def edit
    #@tools = Tool.all
    @categories = Category.all
  end

  # POST /options
  # POST /options.json
  def create
    @option = Option.new(option_params)
    @tools = Tool.all
    @categories = Category.all
    respond_to do |format|
      if @option.save
        format.html { redirect_to @option, notice: 'Option was successfully created.' }
        format.json { render action: 'show', status: :created, location: @option }
      else
        format.html { render action: 'new' }
        format.json { render json: @option.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /options/1
  # PATCH/PUT /options/1.json
  def update
    respond_to do |format|
      if @option.update(option_params)
        format.html { redirect_to @option, notice: 'Option was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @option.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /options/1
  # DELETE /options/1.json
  def destroy
    @option.destroy
    respond_to do |format|
      format.html { redirect_to options_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_option
      @option = Option.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def option_params
      params.require(:option).permit(:tool_id, :name, :long_option, :short_option, :option_file, :short_option_can_be_strung, :introduced_version, :removed_version, :description, :extended_description, :status, :default_value, :category_id)
    end
end
