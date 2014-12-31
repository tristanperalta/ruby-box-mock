require "ruby-box"
require "ruby-box/mock/version"
require "ruby-box/mock/item"
require "ruby-box/mock/folder"

module RubyBox
  module Mock
    def self.stub_folders_request
      path = Pathname.new('fixtures')
      ::File.read(path.join('folder.json'))
    end
  end
end
