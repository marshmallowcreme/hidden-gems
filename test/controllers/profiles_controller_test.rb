require 'test_helper'

class ProfilesControllerTest < ActionController::TestCase
  setup do
    @profile = profiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:profiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create profile" do
    assert_difference('Profile.count') do
      post :create, profile: { address_one: @profile.address_one, address_two: @profile.address_two, bio: @profile.bio, city: @profile.city, email: @profile.email, headline: @profile.headline, name: @profile.name, phone: @profile.phone, postal: @profile.postal, state: @profile.state, user_id: @profile.user_id }
    end

    assert_redirected_to profile_path(assigns(:profile))
  end

  test "should show profile" do
    get :show, id: @profile
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @profile
    assert_response :success
  end

  test "should update profile" do
    patch :update, id: @profile, profile: { address_one: @profile.address_one, address_two: @profile.address_two, bio: @profile.bio, city: @profile.city, email: @profile.email, headline: @profile.headline, name: @profile.name, phone: @profile.phone, postal: @profile.postal, state: @profile.state, user_id: @profile.user_id }
    assert_redirected_to profile_path(assigns(:profile))
  end

  test "should destroy profile" do
    assert_difference('Profile.count', -1) do
      delete :destroy, id: @profile
    end

    assert_redirected_to profiles_path
  end
end
