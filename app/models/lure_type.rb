class LureType < ActiveRecord::Base

  # Carrierwave
  mount_uploader :image, ImageUploader

  # Constants ################################################################
  # Validations ##############################################################

  # Associations #############################################################

  has_many :lures
  belongs_to :hook
  belongs_to :bill

  # Scopes ###################################################################

  default_scope { order(:name) }

  private

end
