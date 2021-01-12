require 'rails_helper'

# Se sequirmos a estrutura de pastas não precisamos no type :helper
describe RentalHelper do
  describe '#rental_status' do
    it 'should return a gray badge if scheduled' do
      # Instancia um objeto sem registrar no banco
      # Precisamos de legibilidade no teste
      rental = build(:rental, status: :scheduled)

      result = helper.rental_status(rental)

      expect(result).to include('<span class="badge badge-success">Agendada</span>')
    end

    it 'should return blue badge if finalized' do
      rental = build(:rental, status: :finalized)

      result = helper.rental_status(rental)

      expect(result).to include('<span class="badge badge-primary">Finalizada</span>')
    end


    it 'should return blue badge if ongoing' do
      rental = build(:rental, status: :ongoing)

      result = helper.rental_status(rental)

      expect(result).to include('<span class="badge badge-warning">Em andamento</span>')
    end


    it 'should return blue badge if in_review' do
      rental = build(:rental, status: :in_review)

      result = helper.rental_status(rental)

      expect(result).to include('<span class="badge badge-info">Em revisão</span>')
    end
  end
end