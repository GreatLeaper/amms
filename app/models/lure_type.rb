class LureType < ActiveRecord::Base

  # for mass assignment
  attr_accessible :name, :length, :weight, :depth, :image, :hook_id

  # Carrierwave
  mount_uploader :image, ImageUploader

  # Constants ################################################################
  # Validations ##############################################################

  # Associations #############################################################

  has_one :lure
  belongs_to :hook
  #has_one :bill
  #has_one :swivel

  # Scopes ###################################################################

  private

end
