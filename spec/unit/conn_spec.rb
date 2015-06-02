require 'spec_helper'

describe GocdApiClient::Conn do
  describe '#credentials=' do
    let(:conn) { GocdApiClient::Conn.new(:url => 'http://something.com') }

    context "when valid" do
      let(:credentials) { { :username => 'user', :password => 'pwd' } }
      subject { lambda { conn.credentials = credentials } }
      it { is_expected.not_to raise_exception }
      # it { expect(subject.credentials) }
    end

    context "when not valid" do
      let(:credentials) { { :invalid => 'credentials' } }
      subject { lambda { conn.credentials = credentials } }
      it { is_expected.to raise_exception(GocdApiClient::Exceptions::InvalidCredentials) }
    end
  end
end
