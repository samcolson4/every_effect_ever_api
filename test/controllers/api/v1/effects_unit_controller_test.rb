require 'test_helper'

class EffectsUnitControllerTest < ActionDispatch::IntegrationTest
  test '#index - gets all effects units' do
    get api_v1_effects_unit_index_url

    assert_response :success
    response_body = JSON.parse(response.parsed_body)

    # TODO
    # Add a factory to create an effect unit in the DB
  end
end
