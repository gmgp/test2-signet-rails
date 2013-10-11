class OAuth2Credential < ActiveRecord::Base
  belongs_to :user
  attr_accessible :name, :signet
end
