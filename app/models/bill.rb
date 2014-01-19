class Bill < ActiveRecord::Base

  # for mass assignment
  attr_accessible(:material)

  # Constants ################################################################

  BILL_MATERIALS = [ 'Stainless Steel', 'Plastic', 'Aluminum', 'Circuit Board' ]

  # Validations ##############################################################

  # Associations #############################################################

  has_one :lure_type

  # Scopes ###################################################################

  default_scope order(:material)

  private

end
