class WelcomeController < ApplicationController


  def home
    render 'welcome/home'
  end

  def about

    render 'welcome/about'
  end
  
end
