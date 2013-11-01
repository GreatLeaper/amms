class Color < ActiveRecord::Base

  # for mass assignment
  attr_accessible(:name)

  # Constants ################################################################
  # Validations ##############################################################

  # Associations #############################################################

  has_one :lure

  # Scopes ###################################################################

  default_scope order(:name)

  private

end
