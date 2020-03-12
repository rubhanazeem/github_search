class HomeController < ApplicationController
  def index
    if params[:search_term]
      @search_term = params[:search_term]
      @page = params[:page].present? && params['page'].to_i < 1 || params['page'].blank? ? 1 : params['page'].to_i
      github = Github::Client.new
      response = github.search(search_term: params[:search_term], page: @page, per_page: params[:per_page] ||= 10)
      @repositories = response['items']
      @total_count = response['total_count']
      pages = (response['total_count'].to_f / 10).ceil
      @limit = if (@page + 9) > 100
                 100
               elsif pages < 100 && (@page + 9) > pages
                 pages
               else
                 @page + 9
               end
    end
  end
end
