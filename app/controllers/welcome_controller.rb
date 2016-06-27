class WelcomeController < ApplicationController
  after_action :authenticate_user!
  def index
    if current_user != nil
      redirect_to courses_path
    end
  end
end
