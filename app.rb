require 'sinatra/base'
require './lib/bookmark'
class BookmarkManager < Sinatra::Base
  get '/' do
    p ENV
   erb :index
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
      erb :bookmarks
  end

  get '/bookmarks/new' do
    erb :new
  end

  post '/bookmarks' do
  p "Form data submitted to the /bookmarks route!"
  p params
end

 run! if app_file == $0
end
