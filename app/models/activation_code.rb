class ActivationCode < ActiveRecord::Base

  # for mass assignment
  attr_accessible(:code, :lure_id, :activated)

  # Constants ################################################################

  # Validations ##############################################################

  # Associations #############################################################

  belongs_to :lure

  # Scopes ###################################################################

  def activated?
    activated == true
  end

  # Create a UserLure and show the code was activated
  def self.activate!(code, user_id)
    activation_code = ActivationCode.where(code: code).first
    raise "Unknown Code" if activation_code.blank?
    raise "Already Activated" if activation_code.activated?
    UserLure.create!(user_id: user_id, lure_id: activation_code.lure_id, activation_code: activation_code.code)
    activation_code.activated = true
    activation_code.save!
  end

  # Generate 16 digit random code for the lure_id passed in
  def self.generate_code(lure_id)
    range = [*'2'..'9', *'A'..'H', *'J'..'N', *'P'..'Z']
    code = Array.new(16){range.sample}.join
    ActivationCode.new(code: code, lure_id: lure_id)

    # do i try it again here if it fails?  maybe in the ui.

  end

  private

end
