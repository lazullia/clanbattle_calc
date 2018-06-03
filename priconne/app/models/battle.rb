class Battle < ApplicationRecord
  belongs_to :battle_sprint, foreign_key: 'battle_sprints_id'
  belongs_to :clan_user, foreign_key: 'clan_users_id'

end
