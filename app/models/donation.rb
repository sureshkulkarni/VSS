class Donation < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    othernames      :string
    donationdate    :date
    amountINR       :float
    amount          :float
    payment_details :string
    receipt_no      :string
    timestamps
  end
  
  belongs_to	:collector, :class_name => "Person"
  belongs_to	:donationtype
  belongs_to	:currency
  belongs_to	:donationcondition
  belongs_to	:paymentmode
  
  after_initialize :defaults

 def defaults
  self.currency_id = 2614
 end

  # --- Permissions --- #

  def create_permitted?
    acting_user.administrator?
  end

  def update_permitted?
    acting_user.administrator?
  end

  def destroy_permitted?
    acting_user.administrator?
  end

  def view_permitted?(field)
    true
  end

end
