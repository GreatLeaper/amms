class Hook < ActiveRecord::Base

  # for mass assignment
  attr_accessible(:hook_type, :size)

  # Constants ################################################################

  HOOK_TYPES = [ 'Indiana', 'Treble' ]

  # Validations ##############################################################

  # Associations #############################################################

  has_one :lure_type

  # Scopes ###################################################################

  default_scope order(:hook_type, :size)

  private

end
