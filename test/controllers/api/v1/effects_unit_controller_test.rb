require 'test_helper'

class EffectsUnitControllerTest < ActionDispatch::IntegrationTest
  test '#index - gets all effects units' do
    unit = create(:effect_unit)

    get api_v1_effects_unit_index_url

    assert_response :success

    json_response = JSON.parse(response.parsed_body)
    assert_equal unit.name, json_response['data'].first['attributes']['name']
    assert_equal unit.main_image_link, json_response['data'].first['attributes']['main_image_link']
    assert_equal unit.format, json_response['data'].first['attributes']['format']
  end
end
