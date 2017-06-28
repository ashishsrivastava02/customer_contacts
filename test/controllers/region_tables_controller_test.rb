require 'test_helper'

class RegionTablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @region_table = region_tables(:one)
  end

  test "should get index" do
    get region_tables_url
    assert_response :success
  end

  test "should get new" do
    get new_region_table_url
    assert_response :success
  end

  test "should create region_table" do
    assert_difference('RegionTable.count') do
      post region_tables_url, params: { region_table: { account_name: @region_table.account_name, prod_hostname: @region_table.prod_hostname, region: @region_table.region, sbx_hostname: @region_table.sbx_hostname, subregion: @region_table.subregion } }
    end

    assert_redirected_to region_table_url(RegionTable.last)
  end

  test "should show region_table" do
    get region_table_url(@region_table)
    assert_response :success
  end

  test "should get edit" do
    get edit_region_table_url(@region_table)
    assert_response :success
  end

  test "should update region_table" do
    patch region_table_url(@region_table), params: { region_table: { account_name: @region_table.account_name, prod_hostname: @region_table.prod_hostname, region: @region_table.region, sbx_hostname: @region_table.sbx_hostname, subregion: @region_table.subregion } }
    assert_redirected_to region_table_url(@region_table)
  end

  test "should destroy region_table" do
    assert_difference('RegionTable.count', -1) do
      delete region_table_url(@region_table)
    end

    assert_redirected_to region_tables_url
  end
end
