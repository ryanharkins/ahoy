require 'spec_helper'

describe Ahoy::Deckhands::TrafficSourceDeckhand do
  let(:referer){ 'http://www.google.com/search?q=gateway+oracle+cards+denise+linn' }
  let!(:deckhand){ Ahoy::Deckhands::TrafficSourceDeckhand.new(referer) }

  it '::referrer_parser returns a Referer parser object' do
    expect(Ahoy::Deckhands::TrafficSourceDeckhand.referrer_parser).to be_a RefererParser::Parser
  end

  it '#referring_domain' do
    expect(deckhand.referring_domain).to eq 'google.com'
  end

  it '#search_keyword' do
    expect(deckhand.search_keyword).to eq 'gateway oracle cards denise linn'
  end
end