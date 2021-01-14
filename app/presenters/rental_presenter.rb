class RentalPresenter < SimpleDelegator
  # attr_reader :rental 
  delegate :content_tag, :link_to, to: :helper

  def initialize(rental)
    #@rental = rental
    super(rental) # Agora tudo vem do simple delegator e podemos acessar o os metodos do rental diretamente
  end

  def next_action_link
    if __getobj__.scheduled?
      link_to('Iniciar Locação', routes.review_rental_path(__getobj__))
    else __getobj__.ongoing?
      link_to('Finalizar Locação', routes.review_rental_path(__getobj__))
    end
  end

  def status_badge()
    styleClass = { "finalized" => "primary", "scheduled" => "success", "ongoing" => "warning", "in_review" => "info" }

    # Cria uma tag html to tipo span
    content_tag(:span, class: "badge badge-#{styleClass[status()]}") do
      I18n.t(status).capitalize
    end
  end

  private
  def helper
    ApplicationController.helpers
  end

  def routes
    Rails.application.routes.url_helpers
  end
end