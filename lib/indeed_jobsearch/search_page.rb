module IndeedJobsearch
  class SearchPage
    attr_reader :nodes
    def initialize(query, location, page_number)
      agent = Mechanize.new
      @page = agent.get(query_url(query, location, page_number))
      @nodes = @page.search('.result').map do |node|
        SearchResultNode.new(node)
      end
    end

    private

    def query_url(query, location, page_number)
      query, location = CGI.escape(query), CGI.escape(location)
      "http://www.indeed.com/jobs?q=#{query}&l=#{location}&start=#{page_number * 10}"
    end
  end
end
