require 'test_helper'

class StatusTest < ActiveSupport::TestCase
   test "that status requires content" do
    status = Status.new
    assert !status.save
    assert !status.errors[:content].empty?
   end
   test "that status's are at least 2 letters long" do
   	status = Status.new
   	status.content = "H"
   	assert !status.save
   	assert !status.error[:content].empty?
   end

   test "taht statu's have a user id" do
   	status = Status.new
   	status.content = "Hello"
   	assert !status.save
   	assert !status.error[:user_id].empty?
   end
end
