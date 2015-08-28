module IndeedJobsearch
  module SearchResultsFetcher
    def self.fetch(query, location, page_number)
      page = SearchPage.new(query, location, page_number)
      results = page.nodes.map do |node|
        search_result(node)
      end
    end

    private

    def self.search_result(node)
      SearchResult.new(
        job_title: node.text('.jobtitle'),
        company: node.text('.company'),
        location: node.text('.location'),
        time_since_posting: node.text('.date'),
        time_scraped: Time.now,
        url: 'http://www.indeed.com' + node.url
      )
    end
  end
end
