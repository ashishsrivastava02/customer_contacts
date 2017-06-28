class CustomerContactsController < ApplicationController
  before_action :set_customer_contact, only: [:show, :edit, :update, :destroy]

  # GET /customer_contacts
  # GET /customer_contacts.json
  def index
    @customer_contacts = CustomerContact.all
      if params[:search]
        @customer_contacts = CustomerContact.search(params[:search]).order("created_at DESC")
      else
        @customer_contacts = CustomerContact.all.order("created_at DESC")
      end
    end


  # GET /customer_contacts/1
  # GET /customer_contacts/1.json
  def show
  end

  # GET /customer_contacts/new
  def new
    @customer_contact = CustomerContact.new
  end

  # GET /customer_contacts/1/edit
  def edit
  end

  # POST /customer_contacts
  # POST /customer_contacts.json
  def create
    @customer_contact = CustomerContact.new(customer_contact_params)

    respond_to do |format|
      if @customer_contact.save
        format.html { redirect_to @customer_contact, notice: 'Customer contact was successfully created.' }
        format.json { render :show, status: :created, location: @customer_contact }
      else
        format.html { render :new }
        format.json { render json: @customer_contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customer_contacts/1
  # PATCH/PUT /customer_contacts/1.json
  def update
    respond_to do |format|
      if @customer_contact.update(customer_contact_params)
        format.html { redirect_to @customer_contact, notice: 'Customer contact was successfully updated.' }
        format.json { render :show, status: :ok, location: @customer_contact }
      else
        format.html { render :edit }
        format.json { render json: @customer_contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customer_contacts/1
  # DELETE /customer_contacts/1.json
  def destroy
    @customer_contact.destroy
    respond_to do |format|
      format.html { redirect_to customer_contacts_url, notice: 'Customer contact was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer_contact
      @customer_contact = CustomerContact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def customer_contact_params
      params.require(:customer_contact).permit(:Last_Name, :First_Name, :Company_Name, :Email_Address, :Prod_Instance)
    end
end
