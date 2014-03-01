class UserLure < ActiveRecord::Base

  # for mass assignment
  attr_accessible :user_id, :lure_id, :activation_code

  # Constants ################################################################
  # Validations ##############################################################

  # Associations #############################################################

  belongs_to :user
  belongs_to :lure

  # Scopes ###################################################################

  private

end
