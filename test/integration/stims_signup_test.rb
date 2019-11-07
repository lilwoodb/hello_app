require 'test_helper'

class StimsSubmitTest < ActionDispatch::IntegrationTest

  test "valid submit information" do
    get submit_path
    assert_difference 'Stim.count', 1 do
      post stims_path, params: { stim: { name:  "Example Stim",
                                         description: "Lorem ipsum dolor.",
                                         source: "https://www.source.com/" } }
    end
    follow_redirect!
    assert_template 'stims/show'
  end
end
