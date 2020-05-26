class HomeController < ApplicationController
  def index
    @jobshow = Job.last
  end
end
