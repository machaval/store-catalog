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
    @brand = Brand.new
  end

  # GET /brands/1/edit
  def edit
    @brand = Brand.find(params[:id])
  end

  # POST /brands
  def create
    @brand = Brand.new(params[:brand])

    if @brand.save
      redirect_to @brand, notice: 'Brand was successfully created.'
    else
      render action: "new"
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
