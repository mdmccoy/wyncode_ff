require 'test_helper'

class ReviewTest < ActiveSupport::TestCase
  def setup
    @review = Review.new(description: 'asdasdasdasd',
                         rating: 5,
                         author: 'adasdasd',
                         picture_id: Picture.first.id)
  end

  test 'should be valid' do
    assert @review.valid?
  end

  test 'rating should be between 1-5' do
    @review.rating = 6
    assert_not @review.valid?
  end

  test 'author should not be too long' do
    @review.author = 'a' * 256
    assert_not @review.valid?
  end
end
