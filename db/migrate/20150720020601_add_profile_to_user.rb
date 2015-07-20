class AddProfileToUser < ActiveRecord::Migration
  def change
  	create_table :profile do |t|
      t.string :username
      t.attachment :avatar
      #t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
