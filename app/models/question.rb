class Question < ApplicationRecord
  validates :question,
            presence: {message: "を空では送信できないよ"}
end
