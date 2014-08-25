class PagesController < ApplicationController
  def home
      User.new
  end

  def services
  end

  def promos
      @usuario = User.first
  end

  def about
      User.create(:fullname => 'Hey')
  end
end
