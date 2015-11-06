class Event < ActiveRecord::Base
  belongs_to :conference
  # @event.conference
end
