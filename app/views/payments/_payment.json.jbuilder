json.extract! payment, :id, :mastercard, :visa, :visa_debit, :job_offer_id, :customer_name, :card_number, :expiry_date, :three_digit_pin_number, :amount, :created_at, :updated_at
json.url payment_url(payment, format: :json)