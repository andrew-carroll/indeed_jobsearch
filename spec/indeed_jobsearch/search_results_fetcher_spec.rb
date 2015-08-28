require 'spec_helper'

describe SearchResultsFetcher do
  let(:search_page) { double("SearchPage") }
  let(:node) { double("SearchResultNode") }
  let(:query) { 'ruby developer' }
  let(:location) { 'boston, ma' }
  let(:page_number) { 1 }
  let(:dummy_url) { 'http://www.example.com' }

  describe '.fetch' do
    before do
      allow(SearchPage).to receive(:new) { search_page }
      allow(search_page).to receive(:nodes) { [node] }
      allow(node).to receive(:text) { 'Example' }
      allow(node).to receive(:url) { dummy_url }
    end

    it 'returns parsed search results for a given query and page number' do
      query_params = [query, location, page_number]
      results = SearchResultsFetcher.fetch(*query_params)
      sample_result = results.first
      expect(sample_result.job_title).to eq('Example')
    end
  end
end
