module Api
  module V1
    class EffectsUnitController < ApplicationController
      def index
        render jsonapi: EffectUnit.all, class: { EffectUnit: SerializableEffectUnit }
      end

      def show
        effect_unit = EffectUnit.find(params['id'])

        if effect_unit.present?
          render jsonapi: effect_unit, class: { EffectUnit: SerializableEffectUnit }
        end
      end
    end
  end
end
