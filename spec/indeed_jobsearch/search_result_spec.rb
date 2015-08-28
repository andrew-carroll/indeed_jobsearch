require 'spec_helper'

describe SearchResult do
  it "provides getters for all its attributes" do
    now = Time.now
    attributes = {
      job_title: "Ruby Developer",
      company: "Standard Company",
      location: "Boston, MA",
      time_since_posting: "30+ Days",
      time_scraped: now,
      url: "http://www.example.com"
    }
    result = SearchResult.new(attributes)
    attributes.each do |attribute, value|
      expect(result.send(attribute)).to eq(value)
    end
  end
end
