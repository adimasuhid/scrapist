class Scraper

  def initialize(options={})
    $options = options
    @contents = [:base_url, :path, :css]
    raise Exception if incomplete $options
  end

  def scrape
    Wombat.crawl do
      base_url $options[:base_url]
      path $options[:path]
      some_data css: $options[:css]
    end
  end

protected

  def incomplete(options = {})
    return true if options.keys.map{|k| k.to_sym } & @contents != @contents
    false
  end

end
