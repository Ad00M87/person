class AthletesController < ApplicationController
  def index
    @athlete = Athlete.all
  end

  def show
    @athlete = Athlete.find(params[:id])
  end

  def edit
    @athlete = Athlete.find(params[:id])
  end

  def new
    @athlete = Athlete.new
  end

  def create
    athlete = Athlete.new(athlete_params)
    if athlete.save
      redirect_to athlete_path(athlete)
    else
      render :new
    end
  end

  def update
    @athlete = Athlete.find(params[:id])
    if @athlete.update(athlete_params)
      #success
      redirect_to athlete_path(@athlete)
    else
      #fail
      render :edit
    end
  end

  def destroy
    athlete = Athlete.find(params[:id])
    athlete.destroy
    redirect_to athletes_path
  end

  private
    def athlete_params
      params.require(:athlete).permit(:name, :age, :sport, :years_participated, :gender, :alive)
    end

end
