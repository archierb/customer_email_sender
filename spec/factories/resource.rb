# frozen_string_literal: true

FactoryBot.define do
  factory :resource do
    name { 'The Legend of Zelda: Breath of the Wild' }
    photo do
      'https://upload.wikimedia.org/wikipedia/pt/thumb/0/0f/Legend_of_Zelda_Breath_of_the_Wild_capa.png/270px-Legend_of_Zelda_Breath_of_the_Wild_capa.png '
    end
    note { 92 }
  end
end
