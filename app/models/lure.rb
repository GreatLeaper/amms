class Lure < ActiveRecord::Base

  # Constants ################################################################
  # Validations ##############################################################

  # Associations #############################################################

  has_many :lure_hooks, dependant: destroy
  has_many :hooks, through: :lure_hooks
  has_one :color
  #has_one :bill
  #has_many :swivels

  # Scopes ###################################################################

  private

end
