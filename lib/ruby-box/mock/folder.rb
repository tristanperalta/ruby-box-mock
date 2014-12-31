module RubyBox
  module Mock
    class Folder < Item
      def stub_folder_requests
        path = Pathname.new('fixtures')
        raw_response = ::File.read(path.join('folder.json'))
        stub_request(:get, "#{RubyBox::API_URL}/folders").
          to_return(status: 200, body: raw_response)
      end
    end
  end
end
