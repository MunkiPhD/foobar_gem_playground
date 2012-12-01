require 'test_helper'

class FoobarTest < ActiveSupport::TestCase
  test "truth" do
    assert_kind_of Module, Foobar
  end

	test "flash[:success] contains a message" do
		
	end
end
