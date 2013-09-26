class Scraper

  def initialize(options={})
    @options = options
    @contents = [:base_url, :path, :css]
    raise Exception if incomplete @options
  end

  def scrape
    options = clean

    Wombat.crawl do
      base_url options[:base_url]
      path options[:path]
      some_data css: options[:css]
    end
  end

protected

  def incomplete(options = {})
    return true if options.keys.map{|k| k.to_sym } & @contents != @contents
    false
  end

  def clean
    @options[:base_url] = "http://#{@options[:base_url]}"
    @options[:path] = @options[:path].gsub("@","/")
    @options[:path] = "/#{@options[:path]}" if @options[:path][0] != "/"
    @options[:css] = @options[:css].gsub("@", "#")
    @options
  end

end
