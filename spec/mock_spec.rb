require 'ruby-box/mock'
require 'json'

describe RubyBox::Mock do
  describe '.folder' do
    it "returns a mock response" do
      json = RubyBox::Mock.folder(1)
      json = JSON.parse(json)
      expect(json['type']).to eq 'folder'
    end
  end
end
