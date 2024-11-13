module Api
  module V1
    class EffectsUnitController < ApplicationController
      def index
        render jsonapi: EffectUnit.all, class: { EffectUnit: SerializableEffectUnit }
      end
    end
  end
end
