require 'test_helper'

class CitiesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => City.first
    assert_template 'show'
  end
end
