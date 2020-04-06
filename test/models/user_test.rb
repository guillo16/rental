require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test '#product' do
    user = User.create(email: 'guillo@hotmail.com', password: 123456 )
    product1 = Product.create(title: 'John', description: 'some description', user: User.last, category: Category.last)
    product2 = Product.create(title: 'John', description: 'some description', user: User.last, category: Category.last)

    assert_equal 2, user.products.size
  end
end
