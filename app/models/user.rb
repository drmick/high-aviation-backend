class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :timeoutable,, :omniauthable,
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, #:lockable,
         :jwt_authenticatable, jwt_revocation_strategy: JwtBlacklist
end
