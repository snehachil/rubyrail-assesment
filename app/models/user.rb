class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Add roles with enum
  enum role: { receptionist: 0, doctor: 1 }
end
