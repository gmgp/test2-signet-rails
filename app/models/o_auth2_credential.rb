class OAuth2Credential < ActiveRecord::Base
  belongs_to :user
  attr_accessible :name, :signet
  serialize :signet, Hash
  validates_uniqueness_of :name, scope: :id
end
