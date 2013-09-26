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
  content_type :json
  begin
    scrap = Scraper.new params
    scrap.scrape.to_json
  rescue Exception
    { status: 404, status_message: "Not Found"}.to_json
  end
end

get "/scrape/:base_url/:path/:css" do
  content_type :json
  begin
    scrap = Scraper.new params
    scrap.scrape.to_json
  rescue Exception
    { status: 404, status_message: "Not Found"}.to_json
  end
end
