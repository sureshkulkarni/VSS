class Person < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    surname        		:string, :required
    first_name     		:string, :required
    middle_name    		:string
    gender         		enum_string(:Male, :Female), :default => :Male, :limit => 6
    email          		:email_address
    birth_date				:date
    phone          		:string
    mobile         		:string
    annual_income  		:float
    address1_line1 		:string
    address1_line2 		:string
    address1_pin_code :string
    pan_no         		:string
    timestamps
  end

	validates_numericality_of :phone
	validates_numericality_of :mobile
	validates_numericality_of :address1_pin_code
	
	validates_length_of :pan_no, :is => 10, :message => "Must be 10 characters in length"
	validates_length_of :address1_pin_code, :is => 6, :message => "Must be 6 digits in length"
	
	belongs_to	:salutation
	belongs_to	:country
	belongs_to	:state
	belongs_to	:district
	belongs_to	:taluka
	belongs_to	:atpost
	
	has_many	:donation_card
	
	after_initialize :defaults

 def defaults
  self.country="India"
  self.state="Maharashtra"
  self.salutation="Mr."
 end
		

	def name
		first_name + ' ' + middle_name + ' ' + surname
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
