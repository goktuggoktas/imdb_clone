class ActorMovie < ActiveRecord::Base
  belongs_to :person
  belongs_to :movie
end
