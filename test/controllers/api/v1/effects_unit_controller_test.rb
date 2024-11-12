require 'test_helper'

class EffectsUnitControllerTest < ActionDispatch::IntegrationTest
  test '#index - gets all effects units' do
    get api_v1_effects_unit_index_url

    assert_response :success

    # TODO
    # set up the json_response to a) work b) use json_api
  end
end
