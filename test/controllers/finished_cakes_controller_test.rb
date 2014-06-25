require "test_helper"

class FinishedCakesControllerTest < ActionController::TestCase

  def setup
    @finished_cake = finished_cakes(:one)
  end

  def test_index
    get :index
    assert_response :success
    assert_not_nil assigns(:finished_cakes)
  end

  def test_new
    get :new
    assert_response :success
  end

  def test_create
    assert_difference('FinishedCake.count') do
      post :create, finished_cake: {  }
    end

    assert_redirected_to finished_cake_path(assigns(:finished_cake))
  end

  def test_show
    get :show, id: @finished_cake
    assert_response :success
  end

  def test_edit
    get :edit, id: @finished_cake
    assert_response :success
  end

  def test_update
    put :update, id: @finished_cake, finished_cake: {  }
    assert_redirected_to finished_cake_path(assigns(:finished_cake))
  end

  def test_destroy
    assert_difference('FinishedCake.count', -1) do
      delete :destroy, id: @finished_cake
    end

    assert_redirected_to finished_cakes_path
  end
end
