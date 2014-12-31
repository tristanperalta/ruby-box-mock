module RubyBox
  module Mock
    class Item < RubyBox::Item
      def initialize(raw_item)
        @raw_item = raw_item
        @session = RubyBox::Session.new
        super(@session, @raw_item)
      end

      def reload_meta
        path = Pathname.new('fixtures')
        @raw_item = JSON.parse(::File.read(path.join('folder.json')))
        self
      end
    end
  end
end
