class Doctor < ActiveRecord::Base
  has_many :interns
  # def interns
  #   # WHERE interns.doctor_id = doctors.id
  #   Intern.where(doctor_id: id)
  # end
  has_many :consultations
  has_many :patients, through: :consultations

  validates :last_name, presence: true
end
