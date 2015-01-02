require "ruby-box"
require "webmock"
require "ruby-box/mock/version"
require "ruby-box/mock/folder"

module RubyBox
  module Mock
    def self.mock
      folder = Folder.new
      folder.stub_folder_requests
      folder.stub_post_folder_request
    end
  end
end

WebMock.allow_net_connect! if defined?(Rails) && !Rails.env.test?
