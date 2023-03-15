require "application_system_test_case"

class PaymentsTest < ApplicationSystemTestCase
  setup do
    @payment = payments(:one)
  end

  test "visiting the index" do
    visit payments_url
    assert_selector "h1", text: "Payments"
  end

  test "should create payment" do
    visit payments_url
    click_on "New payment"

    fill_in "Add voucher", with: @payment.add_voucher
    fill_in "Gmail", with: @payment.gmail
    fill_in "Mobile", with: @payment.mobile
    fill_in "Name customer", with: @payment.name_customer
    fill_in "Payment method", with: @payment.payment_method
    fill_in "Payment time", with: @payment.payment_time
    fill_in "Total cost", with: @payment.total_cost
    click_on "Create Payment"

    assert_text "Payment was successfully created"
    click_on "Back"
  end

  test "should update Payment" do
    visit payment_url(@payment)
    click_on "Edit this payment", match: :first

    fill_in "Add voucher", with: @payment.add_voucher
    fill_in "Gmail", with: @payment.gmail
    fill_in "Mobile", with: @payment.mobile
    fill_in "Name customer", with: @payment.name_customer
    fill_in "Payment method", with: @payment.payment_method
    fill_in "Payment time", with: @payment.payment_time
    fill_in "Total cost", with: @payment.total_cost
    click_on "Update Payment"

    assert_text "Payment was successfully updated"
    click_on "Back"
  end

  test "should destroy Payment" do
    visit payment_url(@payment)
    click_on "Destroy this payment", match: :first

    assert_text "Payment was successfully destroyed"
  end
end
