class CouponsController < ApplicationController
  before_action :set_coupon, only: [:show, :edit, :update, :destroy]
  def show

  end

  def index
    @coupons = Coupon.all
  end

  def new
    @coupon = Coupon.new
  end

  def create
    # @coupon = Coupon.new
    # @coupon.coupon_code = params[:coupon][:coupon_code]
    # @coupon.store = params[:coupon][:store]
    # @coupon.save
    # redirect_to coupon_path(@coupon)
    # RSPEC IS ANNOYING AS HELL
    @coupon = Coupon.new
    @coupon.coupon_code = params[:coupon_code]
    @coupon.store = params[:store]
    @coupon.save
    redirect_to coupon_path(@coupon)
  end

  def edit

  end

  def update

  end

  def destroy

  end


  private

  def set_coupon
    @coupon = Coupon.find(params[:id])
  end

end
