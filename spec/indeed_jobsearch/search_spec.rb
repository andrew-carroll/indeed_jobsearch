require 'spec_helper'

describe IndeedJobsearch::Search do
  let(:query) { 'ruby developer' }
  let(:location) { 'boston' }

  it 'provides getters for initialized query and location' do
    search = Search.new(query, location)
    expect(search.query).to eq(query)
    expect(search.location).to eq(location)
  end

  describe '#page', vcr: true do
    let(:search) { Search.new(query, location) }
    it 'returns parsed search results from the given page' do
      page_number = 1
      expect(SearchResultsFetcher).to receive(:fetch).with(query, location, page_number)
      results = search.page(page_number)
    end
  end
end
