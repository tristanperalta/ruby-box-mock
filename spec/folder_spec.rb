require 'spec_helper'

describe RubyBox::Mock::Folder do
  subject { RubyBox::Mock::Folder.new }

  describe "#stub_folders_request" do
    it "returns mock request" do
      subject.stub_folder_requests
      uri = URI("#{RubyBox::API_URL}/folders")
      req = Net::HTTP::Get.new(uri.request_uri)
      http = Net::HTTP.new(uri.host, uri.port)
      http.use_ssl = true
      response = http.request(req)
      json = response.body
      json = JSON.parse(json)
      expect(json['type']).to eq 'folder'
    end
  end
end
