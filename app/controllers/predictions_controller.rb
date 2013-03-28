class PredictionsController < ApplicationController
  # GET /predictions/1
  # GET /predictions/1.json
  def show
    @prediction = Prediction.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @prediction }
    end
  end

  # GET /predictions/new
  # GET /predictions/new.json
  def new
    @prediction = Prediction.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @prediction }
    end
  end

  def create
    @email = Email.find_or_create_by_email(params[:email].downcase)
    @prediction = @email.predictions.build(params[:prediction])
    respond_to do |format|
      if @email.save
        format.html { redirect_to @prediction, notice: 'Prediction was successfully created.' }
        format.json { render json: @prediction, status: :created, location: @prediction }
      else
        format.html { render action: "new" }
        format.json { render json: @prediction.errors, status: :unprocessable_entity }
      end
    end
  end
end
