class CreateBattles < ActiveRecord::Migration[5.2]
  def change
    create_table :battles do |t|
      t.integer :battle_sprints_id
      t.integer :clan_users_id
      t.integer :characters_first_id
      t.integer :characters_second_id
      t.integer :characters_third_id
      t.integer :characters_fourth_id
      t.integer :characters_fifth_id
      t.integer :damage
      t.integer :number

      t.timestamps
    end
  end
end
