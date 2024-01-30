require 'rails_helper'

RSpec.describe 'User index page', type: :system do
  before do
    @users = create_list(:user, 5)
    @users.each { |user| create_list(:post, 3, author: user) }
    visit users_path
  end

  it 'shows the username of all other users' do
    @users.each do |user|
      expect(page).to have_content(user.name)
    end
  end

  it 'shows the profile picture for each user' do
    @users.each do |user|
      expect(page).to have_selector("img[src='#{user.photo}']")
    end
  end

  it 'shows the number of posts each user has written' do
    @users.each do |user|
      expect(page).to have_content("Number of posts: #{user.posts_counter}")
    end
  end

  it 'redirects to the user show page when a user is clicked' do
    user_to_test = @users.first
    click_on user_to_test.name
    expect(page).to have_current_path(user_path(user_to_test))
  end
end
