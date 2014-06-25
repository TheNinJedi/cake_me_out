class FinishedCake < ActiveRecord::Base
  attr_accessible :cake_name, :cake_type, :description, :completed_at, :servings
end
