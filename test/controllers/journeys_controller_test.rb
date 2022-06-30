require "test_helper"

class JourneysControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  # do the tests for journeys_controller
  test "should get index" do
    get journeys_index_url
    assert_response :success
  end

end
