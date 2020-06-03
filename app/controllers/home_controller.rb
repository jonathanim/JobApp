class HomeController < ApplicationController
  def index
      @jobshow = Job.last
      @jobshow1 = Job.last(2).first
      @jobshow2= Job.last(3).first

  end
end
