class EffectUnit < ApplicationRecord
  validates :format, inclusion: { in: %w[pedal rack] }
end
