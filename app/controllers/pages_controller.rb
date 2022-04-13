class PagesController < ApplicationController
  def home
    @random = Camera.order('RANDOM()').limit(3)
  end
end
