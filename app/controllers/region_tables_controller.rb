class RegionTablesController < ApplicationController
  before_action :set_region_table, only: [:show, :edit, :update, :destroy]

  # GET /region_tables
  # GET /region_tables.json
  def index
    @region_tables = RegionTable.all
  end

  # GET /region_tables/1
  # GET /region_tables/1.json
  def show
  end

  # GET /region_tables/new
  def new
    @region_table = RegionTable.new
  end

  # GET /region_tables/1/edit
  def edit
  end

  # POST /region_tables
  # POST /region_tables.json
  def create
    @region_table = RegionTable.new(region_table_params)

    respond_to do |format|
      if @region_table.save
        format.html { redirect_to @region_table, notice: 'Region table was successfully created.' }
        format.json { render :show, status: :created, location: @region_table }
      else
        format.html { render :new }
        format.json { render json: @region_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /region_tables/1
  # PATCH/PUT /region_tables/1.json
  def update
    respond_to do |format|
      if @region_table.update(region_table_params)
        format.html { redirect_to @region_table, notice: 'Region table was successfully updated.' }
        format.json { render :show, status: :ok, location: @region_table }
      else
        format.html { render :edit }
        format.json { render json: @region_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /region_tables/1
  # DELETE /region_tables/1.json
  def destroy
    @region_table.destroy
    respond_to do |format|
      format.html { redirect_to region_tables_url, notice: 'Region table was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_region_table
      @region_table = RegionTable.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def region_table_params
      params.require(:region_table).permit(:account_name, :sbx_hostname, :prod_hostname, :region, :subregion)
    end
end
