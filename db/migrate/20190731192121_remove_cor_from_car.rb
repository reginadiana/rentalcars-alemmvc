# frozen_string_literal: true

class RemoveCorFromCar < ActiveRecord::Migration[5.2]
  def change
    remove_column :cars, :cor, :string
  end
end
