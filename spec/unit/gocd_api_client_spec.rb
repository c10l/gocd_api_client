require 'spec_helper'

describe GocdApiClient do
  let(:subject) { GocdApiClient }

  describe '#connection' do
    it { expect(subject.connection).to be_a(GocdApiClient::Conn) }
  end

  describe '#connect!' do
    let(:credentials) { {:username => 'user', :password => 'pwd'} }
    before { subject.connect! do |api|
      api.url = 'http://api.com'
      api.credentials = credentials
    end }

    context ':url' do
      it { expect(subject.connection.url).to eq('http://api.com') }
    end

    context ':credentials' do
      it { expect(subject.connection.credentials).to eq(credentials) }
    end
  end
end
