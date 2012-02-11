require 'test_helper'

class MicropostNewsControllerTest < ActionController::TestCase
  setup do
    @micropost_news = micropost_news(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:micropost_news)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create micropost_news" do
    assert_difference('MicropostNew.count') do
      post :create, micropost_news: @micropost_news.attributes
    end

    assert_redirected_to micropost_news_path(assigns(:micropost_news))
  end

  test "should show micropost_news" do
    get :show, id: @micropost_news
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @micropost_news
    assert_response :success
  end

  test "should update micropost_news" do
    put :update, id: @micropost_news, micropost_news: @micropost_news.attributes
    assert_redirected_to micropost_news_path(assigns(:micropost_news))
  end

  test "should destroy micropost_news" do
    assert_difference('MicropostNew.count', -1) do
      delete :destroy, id: @micropost_news
    end

    assert_redirected_to micropost_news_path
  end
end
