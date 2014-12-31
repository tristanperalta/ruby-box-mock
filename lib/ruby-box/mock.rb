require "ruby-box"
require "ruby-box/mock/version"
require "ruby-box/mock/item"
require "ruby-box/mock/folder"

module RubyBox
  module Mock
    API_URL = 'https://api.box.com/2.0/'

    def self.folder(id)
      path = Pathname.new('fixtures')
      ::File.read(path.join('folder.json'))
    end
  end
end
