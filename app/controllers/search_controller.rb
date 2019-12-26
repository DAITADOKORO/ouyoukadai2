class SearchController < ApplicationController

  def search
      method = params[:search_method]
      word = params[:search_word]
      if params[:model] == '1'
      @users = User.search(method,word)
      else
      @books = Book.search(method,word)
      end
  end


end
