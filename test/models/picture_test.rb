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
end
