class CreateBattles < ActiveRecord::Migration[5.2]
  def change
    create_table :battles do |t|
      t.integer :battle_sprints_id
      t.integer :clan_users_id
      t.integer :characters_id
      t.integer :damage
      t.integer :number

      t.timestamps
    end
  end
end
