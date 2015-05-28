require 'test_helper'


class CommentTest < ActiveSupport::TestCase

  #test that humanize_rating method converts ratings into the proper format
  test "humanize_rating conversion" do
  	

  	comment = FactoryGirl.create(:comment)

  	expected = 'one star'
  	actual = comment.humanized_rating
  	assert_equal expected, actual
  end
end
