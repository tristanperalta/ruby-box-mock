require 'spec_helper'

describe RubyBox::Mock::Folder do
  subject { RubyBox::Mock::Folder.new(id: 1) }

  describe '#reload_meta' do
    it 'reloads meta data' do
      folder = subject.reload_meta
      expect(folder.id).to eq "11446498"
    end
  end
end
