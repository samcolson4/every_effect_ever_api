module Api
  module V1
    class EffectsUnitController < ApplicationController
      def index
        render jsonapi: EffectUnit.all, class: { EffectUnit: SerializableEffectUnit }
      end

      def show
        effect_unit = EffectUnit.find(params['id'])

        return unless effect_unit.present?

        render jsonapi: effect_unit, class: { EffectUnit: SerializableEffectUnit }
      end

      def create
        effect_unit = EffectUnit.create(
          name: params['name'],
          format: params['format'],
        )

        render jsonapi: effect_unit, class: { EffectUnit: SerializableEffectUnit }
      end
    end
  end
end
