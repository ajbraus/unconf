class Conference < ActiveRecord::Base
  has_many :events
  # @conference.events
end
