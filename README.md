Rails app generated with [lewagon/rails-templates](https://github.com/lewagon/rails-templates), created by the [Le Wagon coding bootcamp](https://www.lewagon.com) team.



<div class="col-12 col-sm-6">
      <h3>Commentaires reçus</h3>
      <% if current_user.received_reviews.empty? %>
        <small><em class="text-muted">Be the first one to review this list</em></small>
      <% end %>
      <% current_user.received_reviews.each do |review| %>
        <div>
          <% review.rating.times do %>
            <i class="fas fa-star star-yellow"></i>
          <% end %>
          <small><em class="text-muted"><%= distance_of_time_in_words_to_now(review.created_at) %> ago</em></small>
          <p class="mb-0"><%= review.comment %></p>
        </div>
        <hr>
      <% end %>
    </div>
<!-- Ajout de commentaires -->
<div class="col-12 col-sm-6">
      <div class="bg-white rounded p-3">
        <h5>Add your review</h5>
        <%= simple_form_for current_user do |f| %>
          <%= f.input :posted_reviews, placeholder: "Add your review here..." %>
          <%= f.input :received_reviews, as: :select, collection: (1..5), required: true, label: false, input_html: { data: { controller: "star-rating" } } %>
          <%= f.submit class: "btn btn-flat mt-2" %>
        <% end %>
      </div>
    </div>
