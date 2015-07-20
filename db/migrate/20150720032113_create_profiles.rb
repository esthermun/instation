class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :username
      t.attachment :avatar
      t.references :user_id, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
