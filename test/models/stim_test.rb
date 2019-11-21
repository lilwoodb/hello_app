require 'test_helper'

class StimTest < ActiveSupport::TestCase
  
  def setup
    @stim = Stim.new(name: "Example Stim", description: "Lorem ipsum dolor sit amet, mei decore splendide intellegebat ea, in scripta mentitum intellegebat quo.", source: "https://www.stimsite.com/example")
  end

  test "should be valid" do
    assert @stim.valid?
  end

  test "name should be present" do
    @stim.name = "     "
    assert_not @stim.valid?
  end

  test "description should be present" do
    @stim.description = "     "
    assert_not @stim.valid?
  end

  test "source should be present" do
    @stim.source = "     "
    assert_not @stim.valid?
  end

  test "name should not be too long" do
    @stim.name = "a" * 51
    assert_not @stim.valid?
  end

  test "description should not be too long" do
    @stim.description = "a" * 256
    assert_not @stim.valid?
  end

  test "source should not be too long" do
    @stim.source = "a" * 256
    assert_not @stim.valid?
  end

  # shouldn't need to test validity

  test "names should be unique" do
    duplicate_stim = @stim.dup
    duplicate_stim.name = @stim.name.upcase
    @stim.save
  end
end
