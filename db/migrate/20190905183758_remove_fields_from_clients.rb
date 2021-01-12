# frozen_string_literal: true

class RemoveFieldsFromClients < ActiveRecord::Migration[5.2]
  def change
    remove_column :clients, :cnpj, :string
    remove_column :clients, :cpf, :string
  end
end
