class Task < ActiveRecord::Base
  #############
  # Relations
  #############
  belongs_to :user
  #############
  # Validations
  #############
end
