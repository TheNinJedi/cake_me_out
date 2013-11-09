class Gallery < ActiveRecord::Base
  attr_accessible :cake_name, :completed_at, :description, :servings, :type
end
