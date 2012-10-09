class BrandsController < ApplicationController

  # GET /brands
  def index
    @brands = Brand.all
  end

  # GET /brands/1
  def show
    @brand = Brand.find(params[:id])
  end

  # GET /brands/new
  def new
    callback_url = "#{domain}/brands/facebook_callback"
    oauth = Koala::Facebook::OAuth.new(facebook_app_id, facebook_app_secret, callback_url)

    redirect_to oauth.url_for_oauth_code(permissions: 'user_photos')
  end

  # GET /brands/1/edit
  def edit
    @brand = Brand.find(params[:id])
  end

  # POST /brands
  def facebook_callback
    callback_url = "#{domain}/brands/facebook_callback"
    oauth = Koala::Facebook::OAuth.new(facebook_app_id, facebook_app_secret, callback_url)

    oauth_token = oauth.get_access_token(params[:code])

    @brand = Brand.new.load_koala_graph(Koala::Facebook::API.new(oauth_token))

    if @brand.save
      redirect_to @brand, notice: 'Brand was successfully created.'
    else
      redirect_to action: :index, notice: "Something went bad."
    end
  end

  # PUT /brands/1
  def update
    @brand = Brand.find(params[:id])

    if @brand.update_attributes(params[:brand])
      redirect_to @brand, notice: 'Brand was successfully updated.'
    else
      render action: "edit"
    end
  end

  # DELETE /brands/1
  def destroy
    @brand = Brand.find(params[:id])
    @brand.destroy

    redirect_to brands_url
  end
end
