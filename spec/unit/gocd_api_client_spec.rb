require 'spec_helper'

describe GocdApiClient do
  let(:connection) { subject.connection }

  describe '.connection' do
    it { expect(connection).to be_a(GocdApiClient::Conn) }
  end

  describe '.connect!' do
    let(:credentials) { {:username => 'user', :password => 'pwd'} }
    let(:url) { 'http://api.com' }

    before { subject.connect! do |api|
      api.url = url
      api.credentials = credentials
    end }

    context ':url' do
      it { expect(connection.url).to eq(url) }
    end

    context ':credentials' do
      it { expect(connection.credentials).to eq(credentials) }
    end

    context 'when missing URL' do
      let(:connect!) { lambda { subject.connect! } }
      it do
        allow(GocdApiClient.connection).to receive(:url).and_return(nil)
        expect(connect!).to raise_exception(GocdApiClient::Exceptions::MissingURL)
      end
    end
  end
end
