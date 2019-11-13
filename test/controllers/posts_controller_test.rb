require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
    @post = posts(:one) # from fixture
    @sample_post_data = { title: 'Sample post title', content: 'Sample post content', user_id: 2 }
  end

  test 'should index all the posts' do
    get posts_path
    assert_select 'h1', text: 'All posts'
    assert_select 'h3.post', count: 1
    assert_select 'span.author', count: 0
  end

  test 'should index all the posts with authors for logged in users' do
    log_in_as(@user)
    get posts_path
    assert_select 'h1', text: 'All posts'
    assert_select 'h3.post', count: 1
    assert_select 'span.author', count: 1
  end

end
