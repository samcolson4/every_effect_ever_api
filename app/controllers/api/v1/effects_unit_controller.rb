module Api
  module V1
    class EffectsUnitController < ApplicationController
      def index
        render json: EffectUnit.all
      end
    end
  end
end
