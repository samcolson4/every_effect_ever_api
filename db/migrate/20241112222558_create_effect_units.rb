class CreateEffectUnits < ActiveRecord::Migration[8.0]
  def change
    create_table :effect_units do |t|
      t.string :name
      t.string :format
      t.string :main_image_link

      t.timestamps
    end
  end
end
