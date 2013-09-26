get '/' do
  @title = 'Scrapist'
  haml :index
end

get "/:name" do
  @title = "#{params[:name]}"
  haml :index
end


