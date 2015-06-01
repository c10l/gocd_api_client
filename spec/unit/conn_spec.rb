require 'spec_helper'

describe GocdApiClient::Conn do
  describe '#credentials=' do
    let(:conn) { GocdApiClient::Conn.new(:url => 'http://something.com') }

    describe "{ :username => 'user', :password => 'pwd' }" do
      let(:credentials) { { :username => 'user', :password => 'pwd' } }
      subject { lambda { conn.credentials = credentials } }
      it { should_not raise_exception }
    end

    describe "InvalidCredentials" do
      let(:credentials) { { :invalid => 'credentials' } }
      subject { lambda { conn.credentials = credentials } }
      it { should raise_exception(GocdApiClient::Exceptions::InvalidCredentials) }
    end
  end
end
