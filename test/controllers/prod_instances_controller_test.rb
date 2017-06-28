require 'test_helper'

class ProdInstancesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @prod_instance = prod_instances(:one)
  end

  test "should get index" do
    get prod_instances_url
    assert_response :success
  end

  test "should get new" do
    get new_prod_instance_url
    assert_response :success
  end

  test "should create prod_instance" do
    assert_difference('ProdInstance.count') do
      post prod_instances_url, params: { prod_instance: { account_name: @prod_instance.account_name, hostname: @prod_instance.hostname } }
    end

    assert_redirected_to prod_instance_url(ProdInstance.last)
  end

  test "should show prod_instance" do
    get prod_instance_url(@prod_instance)
    assert_response :success
  end

  test "should get edit" do
    get edit_prod_instance_url(@prod_instance)
    assert_response :success
  end

  test "should update prod_instance" do
    patch prod_instance_url(@prod_instance), params: { prod_instance: { account_name: @prod_instance.account_name, hostname: @prod_instance.hostname } }
    assert_redirected_to prod_instance_url(@prod_instance)
  end

  test "should destroy prod_instance" do
    assert_difference('ProdInstance.count', -1) do
      delete prod_instance_url(@prod_instance)
    end

    assert_redirected_to prod_instances_url
  end
end
