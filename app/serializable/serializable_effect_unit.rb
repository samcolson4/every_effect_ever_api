class SerializableEffectUnit < JSONAPI::Serializable::Resource
  type 'effect_units'

  attributes :name, :format, :main_image_link
end
