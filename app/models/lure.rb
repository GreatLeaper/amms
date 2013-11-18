class Lure < ActiveRecord::Base

  # for mass assignment
  attr_accessible :name, :weight, :depth, :image, :color_id, :lure_hooks

  # Carrierwave
  mount_uploader :image, ImageUploader

  # Constants ################################################################
  # Validations ##############################################################

  # Associations #############################################################

  has_many :lure_hooks, dependent: :destroy
  has_many :hooks, through: :lure_hooks
  belongs_to :color
  #has_one :bill
  #has_many :swivels

  # Scopes ###################################################################

  def hooks_list
    hooks.all.map(&:size)
  end

  private

end
