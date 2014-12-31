module RubyBox
  module Mock
    class Folder
      include WebMock::API

      def initialize
        @fixtures_path = Pathname.new('fixtures')
      end

      def fixture
        ::File.read(@fixtures_path.join('folder.json'))
      end

      def endpoint
        "#{RubyBox::API_URL}/folders"
      end

      def stub_folder_requests
        pattern = /#{endpoint}\/?\d*/
        stub_request(:get, pattern).
          to_return(status: 200, body: fixture)
      end

      def stub_post_folder_request
        stub_request(:post, endpoint).
          with(body: /.*/).
          to_return(status: 202, body: fixture)
      end
    end
  end
end
