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
end
