require 'spec_helper'

describe GocdApiClient::RestClient do
  let(:subject) { lambda { GocdApiClient::RestClient.new } }

  context 'with no URL' do
    describe '#initialize' do
      it do
        allow(GocdApiClient.connection).to receive(:url).and_return(nil)
        expect(subject).to raise_exception(GocdApiClient::Exceptions::MissingURL)
      end
    end
  end

  context 'default' do
    it do
      allow(GocdApiClient.connection).to receive(:url).and_return('http://example.com')
      expect(subject).not_to raise_exception
    end
  end
end
