require 'test_helper'

class EffectUnitTest < ActiveSupport::TestCase
  test "should be valid with format 'pedal'" do
    effect_unit = create(:effect_unit, format: 'pedal')
    assert effect_unit.valid?
  end

  test "should be valid with format 'rack'" do
    effect_unit = create(:effect_unit, format: 'rack')
    assert effect_unit.valid?
  end

  test 'should be invalid with any other format' do
    # using build here because `create` writes to the db
    # which the validation will not allow
    effect_unit = build(:effect_unit, format: 'foo')
    assert_not effect_unit.valid?
  end
end
