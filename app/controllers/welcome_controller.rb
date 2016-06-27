class WelcomeController < ApplicationController
  def index
    @todays_attendances = current_user.attendances.current_date_attendances
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end
end
