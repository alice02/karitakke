class Book < ActiveRecord::Base
  has_one :rental
  has_one :book_rental_info

  # バリデーション 以下の項目は空欄ではいけない
  validates :title, :author, :manufacturer, :publication_date, :isbn, :code, presence: true

  # codeはユニークな値でなければならない
  validates :code, uniqueness: true

end
