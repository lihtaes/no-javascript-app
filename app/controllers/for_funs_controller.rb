class ForFunsController < ApplicationController
  before_action :set_for_fun, only: [:show, :edit, :update, :destroy]

  # GET /for_funs
  # GET /for_funs.json
  def index
    @for_funs = ForFun.all
  end

  # GET /for_funs/1
  # GET /for_funs/1.json
  def show
  end

  # GET /for_funs/new
  def new
    @for_fun = ForFun.new
  end

  # GET /for_funs/1/edit
  def edit
  end

  # POST /for_funs
  # POST /for_funs.json
  def create
    @for_fun = ForFun.new(for_fun_params)

    respond_to do |format|
      if @for_fun.save
        format.html { redirect_to @for_fun, notice: 'For fun was successfully created.' }
        format.json { render :show, status: :created, location: @for_fun }
      else
        format.html { render :new }
        format.json { render json: @for_fun.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /for_funs/1
  # PATCH/PUT /for_funs/1.json
  def update
    respond_to do |format|
      if @for_fun.update(for_fun_params)
        format.html { redirect_to @for_fun, notice: 'For fun was successfully updated.' }
        format.json { render :show, status: :ok, location: @for_fun }
      else
        format.html { render :edit }
        format.json { render json: @for_fun.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /for_funs/1
  # DELETE /for_funs/1.json
  def destroy
    @for_fun.destroy
    respond_to do |format|
      format.html { redirect_to for_funs_url, notice: 'For fun was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_for_fun
      @for_fun = ForFun.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def for_fun_params
      params.require(:for_fun).permit(:title, :description)
    end
end
