require 'ruby-box/mock'
require 'json'

describe RubyBox::Mock do
  describe '.stub_folder_requests' do
    it "returns a mock response" do
      pending
      json = RubyBox::Mock.stub_folder_requests
      json = JSON.parse(json)
      expect(json['type']).to eq 'folder'
    end
  end
end
