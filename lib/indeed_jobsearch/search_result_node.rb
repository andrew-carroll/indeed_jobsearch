module IndeedJobsearch
  class SearchResultNode
    def initialize(node)
      @node = node
    end

    def text(selector)
      @node.search(selector).text.strip
    end

    def url
      selector = '[data-tn-element=jobTitle]'
      @node.search(selector).first.attribute('href').value
    end
  end
end
