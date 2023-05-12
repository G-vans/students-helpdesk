class User < ApplicationRecord
  include Devise::JWT::RevocationStrategies::JTIMatcher

  attr_accessor :jti


  has_many :problems
  has_many :solutions
  has_many :votes

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :jwt_authenticatable, jwt_revocation_strategy: self

         def self.from_token_payload(payload)
         self.find(payload['sub'])
         end
         
         def jwt_payload
         { 'sub' => id }
         end
         end
