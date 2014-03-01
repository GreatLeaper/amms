class ActivationCode < ActiveRecord::Base

  # for mass assignment
  attr_accessible(:code, :lure_id)

  # Constants ################################################################

  # Validations ##############################################################

  # Associations #############################################################

  belongs_to :lure

  # Scopes ###################################################################


  # Create a UserLure and show the code was activated
  def activate!(code, user_id)
    activation_code = ActivationCode.where(code: code).first
    raise "Unknown Code" if activation_code.blank?
    UserLure.create!(user_id: user_id, lure_id: activation_code.lure_id, activation_code_id: activation_code.id)
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
