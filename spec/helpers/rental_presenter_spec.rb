require 'rails_helper'

describe RentalHelper do
  describe '#rental_badge' do
    it 'should return a green badge if scheduled' do
      rental = build(:rental, status: :scheduled)

      result = RentalPresenter.new(rental).status_badge

      expect(result).to eq('<span class="badge badge-success">Agendada</span>')
    end
  end
end