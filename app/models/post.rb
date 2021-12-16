module Post
  def self.generate
    OpenStruct.new(
      title: Faker::Lorem.sentence(supplemental: true).delete_suffix("."),
      content: 5.times.map do
        Faker::Lorem.paragraph(
          sentence_count: 10,
          random_sentences_to_add: 10,
          supplemental: true,
        )
      end.join("\n\n"),
      author: "John Doe",
      published_at: Date.current
    )
  end
end
