require 'test_helper'

class EffectsUnitControllerTest < ActionDispatch::IntegrationTest
  test '#index - gets all effects units' do
    unit_a = create(:effect_unit)
    unit_b = create(:effect_unit, name: 'Dimension C', format: 'rack_unit', main_image_link: nil)

    get api_v1_effects_unit_index_url

    assert_response :success

    json_response = JSON.parse(response.parsed_body)

    unit_a_json = json_response['data'].first['attributes']
    assert_equal unit_a.name, unit_a_json['name']
    assert_equal unit_a.main_image_link, unit_a_json['main_image_link']
    assert_equal unit_a.format, unit_a_json['format']

    unit_b_json = json_response['data'].last['attributes']
    assert_equal unit_b.name, unit_b_json['name']
    assert_equal unit_b.main_image_link, unit_b_json['main_image_link']
    assert_equal unit_b.format, unit_b_json['format']
  end
end
