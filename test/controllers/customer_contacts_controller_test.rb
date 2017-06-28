require 'test_helper'

class CustomerContactsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @customer_contact = customer_contacts(:one)
  end

  test "should get index" do
    get customer_contacts_url
    assert_response :success
  end

  test "should get new" do
    get new_customer_contact_url
    assert_response :success
  end

  test "should create customer_contact" do
    assert_difference('CustomerContact.count') do
      post customer_contacts_url, params: { customer_contact: { Company_Name: @customer_contact.Company_Name, Email_Address: @customer_contact.Email_Address, First_Name: @customer_contact.First_Name, Last_Name: @customer_contact.Last_Name, Prod_Instance: @customer_contact.Prod_Instance } }
    end

    assert_redirected_to customer_contact_url(CustomerContact.last)
  end

  test "should show customer_contact" do
    get customer_contact_url(@customer_contact)
    assert_response :success
  end

  test "should get edit" do
    get edit_customer_contact_url(@customer_contact)
    assert_response :success
  end

  test "should update customer_contact" do
    patch customer_contact_url(@customer_contact), params: { customer_contact: { Company_Name: @customer_contact.Company_Name, Email_Address: @customer_contact.Email_Address, First_Name: @customer_contact.First_Name, Last_Name: @customer_contact.Last_Name, Prod_Instance: @customer_contact.Prod_Instance } }
    assert_redirected_to customer_contact_url(@customer_contact)
  end

  test "should destroy customer_contact" do
    assert_difference('CustomerContact.count', -1) do
      delete customer_contact_url(@customer_contact)
    end

    assert_redirected_to customer_contacts_url
  end
end
