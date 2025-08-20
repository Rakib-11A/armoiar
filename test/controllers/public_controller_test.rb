require "test_helper"

class PublicControllerTest < ActionDispatch::IntegrationTest
  test "should get contact_us" do
    get public_contact_us_url
    assert_response :success
  end

  test "should get about_us" do
    get public_about_us_url
    assert_response :success
  end

  test "should get return_policy" do
    get public_return_policy_url
    assert_response :success
  end

  test "should get international" do
    get public_international_url
    assert_response :success
  end

  test "should get promise" do
    get public_promise_url
    assert_response :success
  end

  test "should get subscribe" do
    get public_subscribe_url
    assert_response :success
  end

  test "should get privacy_policy" do
    get public_privacy_policy_url
    assert_response :success
  end

  test "should get term_condition" do
    get public_term_condition_url
    assert_response :success
  end

  test "should get unauthorized" do
    get public_unauthorized_url
    assert_response :success
  end

  test "should get safe_shopping_guarantee" do
    get public_safe_shopping_guarantee_url
    assert_response :success
  end

  test "should get secure_shopping" do
    get public_secure_shopping_url
    assert_response :success
  end

  test "should get coupon" do
    get public_coupon_url
    assert_response :success
  end

  test "should get faq" do
    get public_faq_url
    assert_response :success
  end

  test "should get not_found" do
    get public_not_found_url
    assert_response :success
  end

  test "should get internal_error" do
    get public_internal_error_url
    assert_response :success
  end

  test "should get unacceptable" do
    get public_unacceptable_url
    assert_response :success
  end

  test "should get wishlist" do
    get public_wishlist_url
    assert_response :success
  end

  test "should get cart" do
    get public_cart_url
    assert_response :success
  end

  test "should get checkout" do
    get public_checkout_url
    assert_response :success
  end
end
