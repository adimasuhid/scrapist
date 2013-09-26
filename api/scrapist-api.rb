get '/' do
  @title = 'Scrapist'
  haml :index
end

get "/:name" do
  @title = "#{params[:name]}"
  haml :index
end

post "/scrape" do
  raise params.to_yaml
end

get "/scrape/:base_url/:path/:css" do
  scrap = Scraper.new params
  @title = scrap.scrape
  haml :index
end



