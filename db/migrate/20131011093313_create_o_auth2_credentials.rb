class CreateOAuth2Credentials < ActiveRecord::Migration
  def change
    create_table :o_auth2_credentials do |t|
      t.string :name
      t.references :user
      t.string :signet

      t.timestamps
    end
    add_index :o_auth2_credentials, :user_id
  end
end
