require 'spec_helper'

describe RubyBox::Mock::Folder do
  subject { RubyBox::Mock::Folder.new }

  def request(type, uri)
    req = case type
          when :get
            Net::HTTP::Get.new(uri.request_uri)
          when :post
            Net::HTTP::Post.new(uri.request_uri)
          end
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true
    http.request(req)
  end

  describe "#stub_folders_request" do
    it "returns mock request" do
      subject.stub_folder_requests
      uri = URI("#{RubyBox::API_URL}/folders")
      response = request(:get, uri)
      json = response.body
      json = JSON.parse(json)
      expect(json['type']).to eq 'folder'
    end

    it "returns mock request with folder_id" do
      subject.stub_folder_requests
      uri = URI("#{RubyBox::API_URL}/folders/1")
      response = request(:get, uri)
      json = response.body
      json = JSON.parse(json)
      expect(json['type']).to eq 'folder'
    end
  end

  describe "#stub_post_folder_request" do
    it "returns mock request" do
      subject.stub_post_folder_request
      uri = URI("#{RubyBox::API_URL}/folders")
      response = request(:post, uri)
      json = response.body
      json = JSON.parse(json)
      expect(json['type']).to eq 'folder'
    end
  end
end
