class ListsController < ApplicationController
  def index
    @movies = Movies.all
    @lists = lists.all
  end

  def show
    @movies = Movies.all(params(:id))
    @movies = Movies.show
  end
end
