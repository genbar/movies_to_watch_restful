class Movie < ActiveRecord::Base
  validates :title, :uniqueness => { :scope => :year }

  # return the associated director object
  def director
    Director.find(self.director_id)
  end
end



