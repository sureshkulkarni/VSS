class Donationperiod < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    name      :string, :unique, :required
    startdate :date
    enddate   :date
    timestamps
  end
  
  has_many	:donationcardperiods, 	:dependent => :destroy
  has_many	:donationCards, 	:through => :donationcardperiods, :accessible => true
	 

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
