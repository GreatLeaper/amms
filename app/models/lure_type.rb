class LureType < ActiveRecord::Base

  # for mass assignment
  attr_accessible :name, :length, :weight, :depth, :description, :image, :hook_id, :bill_id, :video_url

  # Carrierwave
  mount_uploader :image, ImageUploader

  # Constants ################################################################
  # Validations ##############################################################

  # Associations #############################################################

  has_many :lures
  belongs_to :hook
  belongs_to :bill

  # Scopes ###################################################################

  private

end
