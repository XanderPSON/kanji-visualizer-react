json.array!(@kanjis) do |kanji|
  json.extract! kanji, :id, :character
  json.url kanji_url(kanji, format: :json)
end
