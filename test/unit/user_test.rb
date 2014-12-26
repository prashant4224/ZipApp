require 'test_helper'

class UserTest < ActiveSupport::TestCase
	fixtures :users
  # test "the truth" do
  #   assert true
  # end

	def test_full_name_without_middle_initial
		user = User.new(:first_name =>"John", :last_name => "Deer")
		assert_equal "John Deer" user.full_name
	end
end
