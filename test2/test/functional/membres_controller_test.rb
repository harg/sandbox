require 'test_helper'

class MembresControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:membres)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_membre
    assert_difference('Membre.count') do
      post :create, :membre => { }
    end

    assert_redirected_to membre_path(assigns(:membre))
  end

  def test_should_show_membre
    get :show, :id => membres(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => membres(:one).id
    assert_response :success
  end

  def test_should_update_membre
    put :update, :id => membres(:one).id, :membre => { }
    assert_redirected_to membre_path(assigns(:membre))
  end

  def test_should_destroy_membre
    assert_difference('Membre.count', -1) do
      delete :destroy, :id => membres(:one).id
    end

    assert_redirected_to membres_path
  end
end
