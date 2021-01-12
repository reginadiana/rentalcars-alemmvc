# frozen_string_literal: true

class AddCategoryToCarModels < ActiveRecord::Migration[5.2]
  def change
    add_reference :car_models, :category, foreign_key: true
  end
end
