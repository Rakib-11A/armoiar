class HomeController < ApplicationController
  def index
    # @featured_products = Product
    #   .featured_products
    #   .includes(:reviews)
    #   .order(id: :desc)

    # @new_arrivals = Product
    #   .where(discountable: true)
    #   .includes(:reviews)

    # @feedbacks = Feedback
    #   .order(id: :desc)
    #   .limit(5)

    # @blogs = Blog
    #   .order(created_at: :desc)
    #   .limit(3)

    # @brands = Admin::Brand
    #   .where(is_active: true)
    #   .where.not(image: nil)
    #   .limit(12)

    # @gallery_images = Admin::GalleryImage
    #   .order(:position)
    #   .limit(20)

    # @sliders = HomeSlider.all
  end

  def sitemap
    # @products = Product.all
    # @domain = request.base_url
  end
end
