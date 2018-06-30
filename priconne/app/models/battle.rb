class Battle < ApplicationRecord
  belongs_to :battle_sprint, foreign_key: 'battle_sprints_id'
  belongs_to :clan_user, foreign_key: 'clan_users_id'
  belongs_to :character, foreign_key: 'characters_first_id'
  belongs_to :character, foreign_key: 'characters_second_id'
  belongs_to :character, foreign_key: 'characters_third_id'
  belongs_to :character, foreign_key: 'characters_fourth_id'
  belongs_to :character, foreign_key: 'characters_fifth_id'

  enum number: { one: 1, two: 2, three: 3 }

  def first_character_image
    character = Character.where(id: self.characters_first_id)
    character.first.image_url
  end
  def second_character_image
    character = Character.where(id: self.characters_second_id)
    character.first.image_url
  end
  def third_character_image
    character = Character.where(id: self.characters_third_id)
    character.first.image_url
  end
  def fourth_character_image
    character = Character.where(id: self.characters_fourth_id)
    character.first.image_url
  end
  def fifth_character_image
    character = Character.where(id: self.characters_fifth_id)
    character.first.image_url
  end
end
