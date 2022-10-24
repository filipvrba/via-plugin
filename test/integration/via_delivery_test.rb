require "test_helper"

class ViaDeliveryTest < ActionDispatch::IntegrationTest
  test "pdf request sends a pdf as file" do
    get home_path( format: :via )

    puts response.body

    # assert_match "VIA", response.body
    assert_equal "binary", headers["Content-Transfer-Encoding"]

    # assert_equal "attachment; filename=\"index.via\"",
    #   headers["Content-Disposition"]
    # assert_equal "application/pdf", headers["Content-Type"]
  end
end
