require 'spec_helper'

describe SearchPage do
  let(:query) { 'ruby developer' }
  let(:location) { 'boston, ma' }
  let(:page_number) { 1 }
  let(:agent) { double("mechanize agent") }
  let(:page) { double("mechanize page") }
  let(:node) { double("page result node") }

  describe '#nodes' do
    it 'returns a list of result nodes for a given search' do
      query_param = CGI.escape(query)
      location_param = CGI.escape(location)
      query_url = "http://www.indeed.com/jobs?q=#{query_param}&l=#{location_param}&start=#{page_number * 10}"
      allow(Mechanize).to receive(:new) { agent }
      allow(agent).to receive(:get) { page }
      allow(page).to receive(:search) { [node] * 10 }
      expect(agent).to receive(:get).with(query_url).once
      expect(SearchResultNode).to receive(:new).with(node).exactly(10).times
      search_page = SearchPage.new(query, location, page_number)
    end
  end
end
