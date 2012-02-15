class DonationCard < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    first_donation_date 		:date
    reminder_on         		:date
    remarks             		:text
    timestamps
  end

	belongs_to :donor, :class_name => "Person"
	belongs_to :thru,  :class_name => "Person"
	
	has_many	:donationcardperiods, 	:dependent => :destroy
	has_many	:donationperiods, 	:through => :donationcardperiods, :accessible => true
	
	validates_presence_of :donor	
	validates_uniqueness_of :donor_id

	children		:donationcardperiods
	
	index [:donor_id], :unique => true
	
	#def name
	#	Person.find(donor_id)
	#end
	

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
