class Lure < ActiveRecord::Base

  # for mass assignment
  attr_accessible :code, :lure_type_id, :color_id, :active, :image

  # Carrierwave
  mount_uploader :image, ImageUploader

  # Constants ################################################################
  # Validations ##############################################################

  # Associations #############################################################

  belongs_to :lure_type
  belongs_to :color

  # Scopes ###################################################################

  private

end
