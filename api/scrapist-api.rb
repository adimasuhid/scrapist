get '/' do
  @title = 'Scrapist'
  haml :index
end

get "/:name" do
  pass if params[:name] == "scrape"
  @title = "#{params[:name]}"
  haml :index
end

get "/scrape" do
  scrap = Scraper.new params
  @title = scrap.scrape
  haml :index
end

get "/scrape/:base_url/:path/:css" do
  scrap = Scraper.new params
  @title = scrap.scrape["some_data"]
  haml :index
end

