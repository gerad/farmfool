require 'test_helper'

class MarketsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:markets)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_market
    assert_difference('Market.count') do
      post :create, :market => { }
    end

    assert_redirected_to market_path(assigns(:market))
  end

  def test_should_show_market
    get :show, :id => markets(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => markets(:one).id
    assert_response :success
  end

  def test_should_update_market
    put :update, :id => markets(:one).id, :market => { }
    assert_redirected_to market_path(assigns(:market))
  end

  def test_should_destroy_market
    assert_difference('Market.count', -1) do
      delete :destroy, :id => markets(:one).id
    end

    assert_redirected_to markets_path
  end
end
