class YummiesController < ApplicationController
  before_action :set_yummy, only: [:show, :edit, :update, :destroy]

  # GET /yummies
  # GET /yummies.json
  def index
    #@yummies = Yummy.all

    @yummies = if params[:term]
    Yummy.where('details LIKE ?', "%#{params[:term]}%")
    else
      Yummy.all
    end

  end

  # GET /yummies/1
  # GET /yummies/1.json
  def show
  end

  # GET /yummies/new
  def new
    @yummy = Yummy.new
  end

  # GET /yummies/1/edit
  def edit
  end

  # POST /yummies
  # POST /yummies.json
  def create
    @yummy = Yummy.new(yummy_params)

    respond_to do |format|
      if @yummy.save
        format.html { redirect_to @yummy, notice: 'Yummy was successfully created.' }
        format.json { render :show, status: :created, location: @yummy }
      else
        format.html { render :new }
        format.json { render json: @yummy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /yummies/1
  # PATCH/PUT /yummies/1.json
  def update
    respond_to do |format|
      if @yummy.update(yummy_params)
        format.html { redirect_to @yummy, notice: 'Yummy was successfully updated.' }
        format.json { render :show, status: :ok, location: @yummy }
      else
        format.html { render :edit }
        format.json { render json: @yummy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /yummies/1
  # DELETE /yummies/1.json
  def destroy
    @yummy.destroy
    respond_to do |format|
      format.html { redirect_to yummies_url, notice: 'Yummy was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_yummy
      @yummy = Yummy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def yummy_params
      params.require(:yummy).permit(:user_id, :category_id, :order_cut_off, :details, :min_order, :max_order, :current_order, :ave_price, :edf_low, :edf_high, :comments,:title,:term)
    end
end
