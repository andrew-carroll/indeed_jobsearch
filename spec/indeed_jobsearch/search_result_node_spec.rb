require 'spec_helper'

describe SearchResultNode do
  let(:page_node) { double('page node') }
  let(:company_node) { double('company node') }
  let(:job_title_node) { double('job title node') }

  describe '#text' do
    it 'returns the text contained by a subnode with the given selector' do
      allow(page_node).to receive(:search) { company_node }
      allow(company_node).to receive(:text) { 'Standard Company' }
      node = SearchResultNode.new(page_node)
      expect(node.text('.company')).to eq('Standard Company')
    end
  end

  describe '#url' do
    it 'returns the url of the result node' do
      attribute = double('href attribute')
      example_url = 'https://www.example.com'
      allow(page_node).to receive(:search) { [job_title_node] }
      allow(job_title_node).to receive(:attribute).with('href') { attribute }
      allow(attribute).to receive(:value) { example_url }
      node = SearchResultNode.new(page_node)
      expect(node.url).to eq(example_url)
    end
  end
end
