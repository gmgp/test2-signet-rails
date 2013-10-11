class User < ActiveRecord::Base
  attr_accessible :name, :uid
  has_many :o_auth2_credentials, dependent: :destroy
end

