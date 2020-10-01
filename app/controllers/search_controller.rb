class SearchController < ApplicationController
  def index
    search = SearchFacade.new
    @members = search.get_members(params[:house])
  end
end
