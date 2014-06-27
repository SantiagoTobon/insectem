class Usuario < ActiveRecord::Base
  authenticates_with_sorcery!
  has_many :especimen
  validates_presence_of :nameuser, :email
  validates_confirmation_of :password, message: "Ambos campos deven coincidir", if: :password
end
