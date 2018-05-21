require 'test_helper'

class PredictionControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get prediction_new_url
    assert_response :success
  end

  test "should get predict" do
    get prediction_predict_url
    assert_response :success
  end

end
