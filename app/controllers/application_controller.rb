class ApplicationController < ActionController::Base
  rescue_from ArgumentError, with: :empty_search

  private

  def empty_search
    flash[:notice] = 'You must search for something'
    redirect_to root_path
  end
end
