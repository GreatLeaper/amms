class Hook < ActiveRecord::Base

  # Constants ################################################################

  HOOK_TYPES = [ 'Indiana', 'Treble' ]

  # Validations ##############################################################

  # Associations #############################################################

  has_one :lure_type

  # Scopes ###################################################################

  default_scope { order(:hook_type, :size) }

  private

end
