module IndeedJobsearch
  class Search
    attr_reader :query, :location
    def initialize(query, location)
      @query, @location = query, location
    end

    def page(page_number)
      SearchResultsFetcher.fetch(@query, @location, page_number)
    end
  end
end
