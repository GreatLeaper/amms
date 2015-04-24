class Lure < ActiveRecord::Base

  # Carrierwave
  mount_uploader :image, ImageUploader

  # Constants ################################################################
  # Validations ##############################################################

  # Associations #############################################################

  belongs_to :lure_type
  belongs_to :color

  # Scopes ###################################################################

  default_scope { order(:code) }
  scope :active, -> { where(active: true) }

  private

end
