class HomesController < ApplicationController
  def top
    @lists = List.where(user: current_user).order("created_at ASC")
  end
end
