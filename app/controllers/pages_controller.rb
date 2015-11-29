class PagesController < ApplicationController
  def home
  end

  def fun
  end

  def gameoflife
    render 'pages/fun/gameoflife/gameoflife'
  end
end

