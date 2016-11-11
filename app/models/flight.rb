class Flight < ApplicationRecord
  belongs_to :from, class_name: "Airport"
  belongs_to :to, class_name: "Airport"

  def Flight.search_for(from, to)
    
  end

end
