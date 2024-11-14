require 'test_helper'

class EffectsUnitControllerTest < ActionDispatch::IntegrationTest
  test '#index - gets all effects units' do
    unit_a = create(:effect_unit)
    unit_b = create(:effect_unit, name: 'Dimension C', format: 'rack', main_image_link: nil)

    get api_v1_effects_unit_index_url

    assert_response :success

    json_response = JSON.parse(response.parsed_body)

    unit_a_json = json_response['data'].first['attributes']
    assert_equal unit_a.name, unit_a_json['name']
    assert_equal unit_a.main_image_link, unit_a_json['main_image_link']
    assert_equal unit_a.format, unit_a_json['format']

    unit_b_json = json_response['data'].last['attributes']
    assert_equal unit_b.name, unit_b_json['name']
    assert_nil unit_b.main_image_link, unit_b_json['main_image_link']
    assert_equal unit_b.format, unit_b_json['format']
  end

  test '#show - gets a single effect unit' do
    unit = create(:effect_unit)

    get api_v1_effects_unit_url(id: unit.id)

    assert_response :success

    json_response = JSON.parse(response.parsed_body)

    unit_json = json_response['data']['attributes']
    assert_equal unit.name, unit_json['name']
    assert_equal unit.main_image_link, unit_json['main_image_link']
    assert_equal unit.format, unit_json['format']
  end

  test '#show - returns a 404 if no effect unit by id is found' do
    get api_v1_effects_unit_url(id: 1234)

    assert_response :not_found
  end
end
