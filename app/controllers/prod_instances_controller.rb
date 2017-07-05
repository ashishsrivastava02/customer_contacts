class ProdInstancesController < ApplicationController
  before_action :set_prod_instance, only: [:show, :edit, :update, :destroy]

  # GET /prod_instances
  # GET /prod_instances.json
  def index
    @prod_instances = ProdInstance.paginate :page => params[:page], :per_page => 10
  end

  # GET /prod_instances/1
  # GET /prod_instances/1.json
  def show
  end

  # GET /prod_instances/new
  def new
    @prod_instance = ProdInstance.new
  end

  # GET /prod_instances/1/edit
  def edit
  end

  # POST /prod_instances
  # POST /prod_instances.json
  def create
    @prod_instance = ProdInstance.new(prod_instance_params)

    respond_to do |format|
      if @prod_instance.save
        format.html { redirect_to @prod_instance, notice: 'Prod instance was successfully created.' }
        format.json { render :show, status: :created, location: @prod_instance }
      else
        format.html { render :new }
        format.json { render json: @prod_instance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prod_instances/1
  # PATCH/PUT /prod_instances/1.json
  def update
    respond_to do |format|
      if @prod_instance.update(prod_instance_params)
        format.html { redirect_to @prod_instance, notice: 'Prod instance was successfully updated.' }
        format.json { render :show, status: :ok, location: @prod_instance }
      else
        format.html { render :edit }
        format.json { render json: @prod_instance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prod_instances/1
  # DELETE /prod_instances/1.json
  def destroy
    @prod_instance.destroy
    respond_to do |format|
      format.html { redirect_to prod_instances_url, notice: 'Prod instance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prod_instance
      @prod_instance = ProdInstance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prod_instance_params
      params.require(:prod_instance).permit(:account_name, :hostname)
    end
end
