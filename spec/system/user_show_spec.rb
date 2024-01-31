require 'rails_helper'

RSpec.describe 'User show page', type: :system do
  before do
    @user = create(:user)
    @posts = create_list(:post, 5, author: @user)
    visit user_path(@user)
  end

  it 'shows the user\'s profile picture' do
    expect(page).to have_selector("img[src='#{@user.photo}']")
  end

  it 'shows the user\'s username' do
    expect(page).to have_content(@user.name)
  end

  it 'shows the number of posts the user has written' do
    expect(page).to have_content("Number of posts: #{@user.posts_counter}")
  end

  it 'shows the user\'s bio' do
    expect(page).to have_content(@user.bio)
  end

  it 'shows the user\'s first 3 posts' do
    @posts[0..2].each do |post|
      expect(page).to have_content(post.title)
      expect(page).to have_content(post.text)
    end
  end

  it 'shows a button that lets me view all of a user\'s posts' do
    expect(page).to have_link('See all posts', href: user_posts_path(@user))
  end

  it 'redirects to a post\'s show page when I click a user\'s post' do
    @posts.first
    first('a').click
    expect(page).to have_current_path(%r{/users/\d+/posts/\d+}, url: true)
  end

  it 'redirects to the user\'s posts index page when I click to see all posts' do
    click_on 'See all posts'
    expect(page).to have_current_path(user_posts_path(@user))
  end
end
