class HomeController < ApplicationController
  def index
    unless params[:search_term].blank?
      @search_term = params[:search_term]
      @page = params[:page].present? && params['page'].to_i < 1 || params['page'].blank? ? 1 : params['page'].to_i
      github = Github::Client.new
      response = github.search(search_term: params[:search_term], page: @page, per_page: params[:per_page] ||= 10)
      @repositories = response['items']
      pages = (response['total_count'].to_f / 10).ceil
      @limit = (@page + 9) > pages ? pages : @page + 9
    end
  end
end
