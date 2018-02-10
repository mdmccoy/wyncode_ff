require 'test_helper'

class PictureTest < ActiveSupport::TestCase
  def setup
    @picture = Picture.new(url: 'www.something.jpeg',
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

  test 'rating should be between 1-5' do
    @picture.rating = 6
    assert_not @picture.valid?
  end

  test 'url should be a picture' do
    @picture.url = 'asfdkljasfdlkj'
    assert_not @picture.valid?
  end

  test 'url should not be too long' do
    @picture.url = 'a' * 255 + '.jpeg'
    assert_not @picture.valid?
  end

  test 'caption should not be too long' do
    @picture.caption = 'a' * 256
    assert_not @picture.valid?
  end
end
