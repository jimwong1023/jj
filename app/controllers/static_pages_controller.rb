class StaticPagesController < ApplicationController
  before_filter :authorize, only: :rsvp

  def home
  end

  def rsvp
  end
end
