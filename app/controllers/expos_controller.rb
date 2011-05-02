# encoding: utf-8

class ExposController < ApplicationController
  respond_to :html
  expose(:expos) { Expo.all }
  expose(:expo) { params[:id].present? ? Expo.find(params[:id]) : Expo.last }

  def index
    render :action => 'show'
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    flash[:notice] = 'Tenemos nueva colección.' if expo.save
    respond_with expo, :location => expo
  end

  def update
    flash[:notice] = 'Colección modificada.' if expo.update_attributes(params[:expo])
    respond_with expo, :location => expo
  end

  def destroy
    flash[:notice] = 'Colección borrada.' if expo.destroy
    respond_with expo, :location => expos_path
  end
end
