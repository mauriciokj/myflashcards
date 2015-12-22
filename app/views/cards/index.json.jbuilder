json.array!(@cards) do |card|
  json.extract! card, :id, :question, :answer, :multiple_choice, :share, :user_id
  json.url card_url(card, format: :json)
end
