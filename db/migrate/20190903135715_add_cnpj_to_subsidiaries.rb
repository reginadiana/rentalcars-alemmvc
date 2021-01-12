# frozen_string_literal: true

class AddCnpjToSubsidiaries < ActiveRecord::Migration[5.2]
  def change
    add_column :subsidiaries, :cnpj, :string
  end
end
