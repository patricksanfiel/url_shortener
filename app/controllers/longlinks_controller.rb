class LonglinksController < ApplicationController
  before_action :set_longlink, only: [:show, :edit, :update, :destroy]

  def index
    @longlinks=Longlink.all
  end

  def show
    redirect_to "#{@longlink.url}"
  end

  def new
    @longlink=Longlink.new
  end

  def edit
  end

  def create
    @longlink=Longlink.new(longlink_params)
    @longlink.shortlink=@longlink.url

    respond_to do |format|
      if @longlink.save
        format.html { redirect_to root_path, notice: 'Link has been added.' }
        format.json { render :show, status: :created, location: @longlink }
      else
        format.html { render :new }
        format.json { render json: @longlink.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @longlink.update(longlink_params)
        format.html { redirect_to @longlinks, notice: 'Link has been added.' }
        format.json { render :show, status: :ok, location: @longlink }
      else
        format.html { render :edit }
        format.json { render json: @longlink.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @longlink.destroy
    respond_to do |format|
      format.html { redirect_to longlinks_url, notice: 'Link deleted.' }
      format.json { head :no_content }
    end
  end

private

  def set_longlink
    @longlink = Longlink.find(params[:id])
  end

  def longlink_params
    params.require(:longlink).permit(:url)
  end

end
