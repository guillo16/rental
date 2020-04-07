require 'test_helper'

class ProductTest < ActiveSupport::TestCase

  test 'valid product' do
    product = Product.new(title: 'John', description: 'some description', user: User.last, category: Category.last)
    assert product.valid?
  end

  test 'invalid without title' do
    product = Product.new(description: 'some description', user: User.last, category: Category.last)
    refute product.valid?
    assert_not_nil product.errors[:title]
  end

  test 'invalid without description' do
    product = Product.new(title: 'hola', user: User.last, category: Category.last)
    refute product.valid?, 'product is valid without a title'
    assert_not_nil product.errors[:description], 'no validation error for title present'
  end
end




