require 'test_helper'

class CategoryTest < ActiveSupport::TestCase

 test 'valid category' do
  category = Category.new(title: 'hola')
  assert category.valid?
end

test 'invalid without title' do
  category = Category.new
  refute category.valid?, 'category is valid without a title'
  assert_not_nil category.errors[:title], 'no validation error for title present'
end
end
