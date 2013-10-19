class Color < ActiveRecord::Base

  # for mass assignment
  attr_accessible(:name)

  # Constants ################################################################
  # Validations ##############################################################

  # Associations #############################################################

  belongs_to :lures

  # Scopes ###################################################################

  default_scope order(:name)

  private

end
