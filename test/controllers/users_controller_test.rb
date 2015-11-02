require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
    sign_in @user
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should create user" do # To test whether address/zip from IP is saved, need to test registrations controller. But can't do on localhost.
    assert_difference('User.count', 1) do
      post :create, user: { name: 'samiam', email: 'fakeunique@fake.com', password: 'secret12', password_confirmation: 'secret12', permalink: 'samlink'  }
    end

    assert_redirected_to user_profile_path(assigns(:user).permalink)
  end

  test "should show user" do
    get :show, permalink: "user1"
    assert_response :success
  end

#  test "should get edit" do  # my edit page is more complicated
#    get :edit, id: @user.to_param
#    @book = current_user.books.build
#    @booklist = Book.where(:user_id => @user.id)
#    assert_response :success
#  end

  test "should createstripeacnt" do

  end  

  test "should update user" do
#    user = User.find(users(:one))
 #   sign_in user
    puts @user.name
    patch :update, :id => @user.id, user: { name: "New Name", youtube1: "randomchar" }
    user = User.find(@user)
      puts user.name
    assert_equal(user.name, "New Name") 
    assert_redirected_to user_profile_path(user.permalink)
  end

#  test "should destroy user" do  # I don't want to allow - put in a Disable bool instead

end


