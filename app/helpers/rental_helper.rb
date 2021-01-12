module RentalHelper 
  def rental_status(rental)
    status = { "finalized" => "primary", "scheduled" => "success", "ongoing" => "warning", "in_review" => "info" }

    # Cria uma tag html to tipo span
    content_tag(:span, class: "badge badge-#{status[rental.status]}") do
      t(rental.status).capitalize
    end
  end
end