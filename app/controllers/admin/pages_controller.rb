class Admin::PagesController < ApplicationController
  before_action :authenticate_user!

  def admin
  end

end