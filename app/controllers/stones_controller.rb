class StonesController < ApplicationController
  # GET /stones
  def index
    @stones = Stone.all
  end

  # GET /stones/1
  def show
    @stone = Stone.find(params[:id])
  end

  # GET /stones/new
  def new
    @stone = Stone.new
  end

  # GET /stones/1/edit
  def edit
    @stone = Stone.find(params[:id])
  end

  # POST /stones
  def create
    @stone = Stone.new(stone_params)

    if @stone.save
      redirect_to @stone, notice: 'Stone was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /stones/1
  def update
    @stone = Stone.find(params[:id])
    if @stone.update(stone_params)
      redirect_to @stone, notice: 'Stone was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /stones/1
  def destroy
    @stone = Stone.find(params[:id])
    @stone.destroy
    redirect_to stones_url, notice: 'Stone was successfully destroyed.'
  end

  private

  # Only allow a trusted parameter "white list" through.
  def stone_params
    params.require(:stone).permit(:kind, :rarity)
  end
end
