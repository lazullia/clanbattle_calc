class CreateBattleSprints < ActiveRecord::Migration[5.2]
  def change
    create_table :battle_sprints do |t|
      t.date :month
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
