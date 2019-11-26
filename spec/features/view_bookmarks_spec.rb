feature 'Bookmarks' do
  scenario 'returns the list of bookmarks' do
  visit ('/')
  click_on 'Show all Bookmarks'
  expect(page).to have_content "http://www.google.com"
  expect(page).to have_content "http://www.makersacademy.com"
  expect(page).to have_content "http://www.destroyallsoftware.com"
  end
end
