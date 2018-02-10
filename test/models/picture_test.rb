require 'test_helper'

class PictureTest < ActiveSupport::TestCase
  def setup
    @picture = Picture.new(url: 'www.something.com',
                           caption: 'present',
                           location: 'something',
                           rating: 5)
  end

  test 'should be valid' do
    assert @picture.valid?
  end

  test 'url should be present' do
    @picture.url = '    '
    assert_not @picture.valid?
  end

  test 'caption should be present' do
    @picture.caption = '   '
    assert_not @picture.valid?
  end

  # test 'rating should be between 1-5' do
  #   @picture.rating = 6
  #   assert_not @picture.valid?
  # end
end
