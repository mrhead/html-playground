class TailwindController < ApplicationController
  def blog_post
    @post = OpenStruct.new(
      title: Faker::Lorem.sentence(supplemental: true),
      content: 5.times.map do
        Faker::Lorem.paragraph(
          sentence_count: 10,
          random_sentences_to_add: 10,
          supplemental: true,
        )
      end.join("\n\n"),
      author: "John Doe",
      published_at: Time.current
    )
  end

  def sign_in
    @show_error = params[:show_error]
  end
end
