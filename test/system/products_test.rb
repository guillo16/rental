require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit '/'
    # save_and_open_screenshot
    assert_selector ".product", count: Product.count
  end

  test "lets a signed in user create a new product" do
    login_as users(:george)

    visit "/products/new"


    fill_in "product_title", with: "Le Wagon"

    fill_in "product_description", with: "Change your life: Learn to code"
    select 'mochila' , from: 'product_category_id'

    click_on 'Create Product'

    # Should be redirected to Home with new product
    assert_equal product_path(Product.last), page.current_path
    assert_text "Change your life: Learn to code"
  end
end
