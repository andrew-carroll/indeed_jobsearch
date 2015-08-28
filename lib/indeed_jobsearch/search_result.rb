module IndeedJobsearch
  class SearchResult
    attr_reader :job_title, :company, :location, :time_since_posting, :time_scraped, :url
    def initialize(job_title:, company:, location:, time_since_posting:, time_scraped:, url:)
      @job_title, @company, @location, @time_since_posting, @time_scraped, @url = job_title, company, location, time_since_posting, time_scraped, url
    end
  end
end
