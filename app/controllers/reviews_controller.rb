class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :edit, :update, :destroy]

  # GET /reviews
  # GET /reviews.json
  def index
    @reviews = Review.all
  end

  # GET /reviews/1
  # GET /reviews/1.json
  def show
    # @review = Review.find(params[:id])
  end

  # GET /reviews/new
  def new
    @review = Review.new
  end

  # GET /reviews/1/edit
  def edit
  end

  # POST /reviews
  # POST /reviews.json
  # def create
  #
  #   @product = Product.find(params[:product_id])
  #   @product.reviews.create(review_params)
  #   redirect_to product_path(@product)
  # end

  def create
    @review = Review.new(review_params)
    respond_to do |format|
      if @review.save
        format.any
        # format.html { redirect_to @rating, notice: 'Rating was successfully created.' }
        format.json { render :show, status: :created, location: @review }
        redirect_back(fallback_location: reviews_path)
      else
        format.html { render :new }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reviews/1
  # PATCH/PUT /reviews/1.json
  def update
    respond_to do |format|
      if @review.update(review_params)
        format.html { redirect_to @review, notice: 'Review was successfully updated.' }
        format.json { render :show, status: :ok, location: @review }
      else
        format.html { render :edit }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reviews/1
  # DELETE /reviews/1.json
  # def destroy
  #    @product = Product.find(params[:product_id])
  #    @review = @product.reviews.find(params[:id])
  #    @review.destroy
  #    redirect_to product_path(@product)
  # end

  def destroy
    @review.destroy
    respond_to do |format|
      format.html {redirect_to products_url, notice:'Review was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_review
      @review = Review.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def review_params
      params.require(:review).permit(:comment, :user_id, :product_id, :rating)
    end
end
