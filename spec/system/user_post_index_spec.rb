require 'rails_helper'

RSpec.describe 'User post index page', type: :system do
  before do
    @user = create(:user)
    @posts = create_list(:post, 5, author: @user)
    @posts.each { |post| create_list(:comment, 3, post:, user: @user) }

    visit user_posts_path(@user)
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

  it 'shows a post\'s title' do
    @posts.each do |post|
      expect(page).to have_content(post.title)
    end
  end

  it 'shows some of the post\'s body' do
    @posts.each do |post|
      expect(page).to have_content(post.text)
    end
  end

  it 'shows the first comments on a post' do
    @posts.each do |post|
      post.comments.each do |comment|
        expect(page).to have_content(comment.text)
      end
    end
  end

  it 'shows how many comments a post has' do
    @posts.each do |post|
      expect(page).to have_content("Comments: #{post.comments_counter}")
    end
  end
end
