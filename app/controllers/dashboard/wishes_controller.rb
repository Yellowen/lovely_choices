class Dashboard::WishesController < Dashboard::ApplicationController
  in_form do |form|
    form.attributes :title, :url, :category, :comment
  end
end
