class WizardOptionsController < ApplicationController
  # GET /wizard_options
  # GET /wizard_options.json
  def index
    @wizard_options = WizardOption.order(:id)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @wizard_options }
    end
  end

  # GET /wizard_options/1
  # GET /wizard_options/1.json
  def show
    @wizard_option = WizardOption.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @wizard_option }
    end
  end

  # GET /wizard_options/new
  # GET /wizard_options/new.json
  def new
    @wizard_option = WizardOption.new
    @wizard_option.wizard_id = params[:wizard_id]


    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @wizard_option }
    end
  end

  # GET /wizard_options/1/edit
  def edit
    @wizard_option = WizardOption.find(params[:id])
  end

  # POST /wizard_options
  # POST /wizard_options.json
  def create
    @wizard_option = WizardOption.new(params[:wizard_option])

    respond_to do |format|
      if @wizard_option.save
        format.html { redirect_to @wizard_option, notice: 'Wizard option was successfully created.' }
        format.json { render json: @wizard_option, status: :created, location: @wizard_option }
      else
        format.html { render action: "new" }
        format.json { render json: @wizard_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /wizard_options/1
  # PUT /wizard_options/1.json
  def update
    @wizard_option = WizardOption.find(params[:id])

    respond_to do |format|
      if @wizard_option.update_attributes(params[:wizard_option])
        format.html { redirect_to @wizard_option, notice: 'Wizard option was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @wizard_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wizard_options/1
  # DELETE /wizard_options/1.json
  def destroy
    @wizard_option = WizardOption.find(params[:id])
    @wizard_option.destroy

    respond_to do |format|
      format.html { redirect_to wizard_options_url }
      format.json { head :no_content }
    end
  end
end
