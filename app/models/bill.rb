class Bill < ActiveRecord::Base

  # Constants ################################################################

  BILL_MATERIALS = [ 'Stainless Steel', 'Plastic', 'Aluminum', 'Circuit Board' ]

  # Validations ##############################################################

  # Associations #############################################################

  has_one :lure_type

  # Scopes ###################################################################

  default_scope { order(:material) }

  private

end
