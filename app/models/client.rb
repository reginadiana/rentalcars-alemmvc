# frozen_string_literal: true

class Client < ApplicationRecord
  has_one :address, as: :addressable
  accepts_nested_attributes_for :address
end
