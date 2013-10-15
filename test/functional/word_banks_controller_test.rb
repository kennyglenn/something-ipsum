require 'test_helper'

class WordBanksControllerTest < ActionController::TestCase
  setup do
    @word_bank = word_banks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:word_banks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create word_bank" do
    assert_difference('WordBank.count') do
      post :create, word_bank: { word: @word_bank.word }
    end

    assert_redirected_to word_bank_path(assigns(:word_bank))
  end

  test "should show word_bank" do
    get :show, id: @word_bank
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @word_bank
    assert_response :success
  end

  test "should update word_bank" do
    put :update, id: @word_bank, word_bank: { word: @word_bank.word }
    assert_redirected_to word_bank_path(assigns(:word_bank))
  end

  test "should destroy word_bank" do
    assert_difference('WordBank.count', -1) do
      delete :destroy, id: @word_bank
    end

    assert_redirected_to word_banks_path
  end
end
