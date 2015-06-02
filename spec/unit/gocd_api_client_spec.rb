require 'spec_helper'

describe GocdApiClient do
  describe '#connection' do
    it { expect(subject.connection).to be_a(GocdApiClient::Conn) }
  end

  describe '#connect!' do
    let(:credentials) { {:username => 'user', :password => 'pwd'} }
    let(:url) { 'http://api.com' }

    before { subject.connect! do |api|
      api.url = url
      api.credentials = credentials
    end }

    context ':url' do
      it { expect(subject.connection.url).to eq(url) }
    end

    context ':credentials' do
      it { expect(subject.connection.credentials).to eq(credentials) }
    end

    context 'MissingURL' do
      it do
        allow(GocdApiClient.connection).to receive(:url).and_return(nil)
        expect(lambda { subject.connect! }).to raise_exception(GocdApiClient::Exceptions::MissingURL)
      end
    end
  end
end
