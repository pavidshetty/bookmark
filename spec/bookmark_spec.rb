require './lib/bookmark'

describe Bookmark do
    it 'returns all bookmarks' do
      expect(Bookmark.all).to eq ["http://www.makersacademy.com", "http://www.destroyallsoftware.com", "http://www.google.com"]
   end
end
