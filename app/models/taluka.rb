class Taluka < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    name :string, :required, :unique
    timestamps
  end
  
  belongs_to :district
  
  has_many :persons

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
