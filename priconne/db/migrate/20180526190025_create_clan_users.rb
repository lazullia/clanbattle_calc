class CreateClanUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :clan_users do |t|
      t.string :name
      t.string :position

      t.timestamps
    end
  end
end
