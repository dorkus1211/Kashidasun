# coding: utf-8
class Book < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :title, :author, :isbn, :lending, :member_id, :lend_date, :publisher, :pub_date, :page
  validates :title, :author, :isbn, :publisher, :pub_date, :page,  presence: true
  validates :page, numericality: {only_integer: true, greater_than_or_equal_to: 1}

  class << self
    def ksearch(query)
      rel = order("id")
      if query.present?
        rel = rel.where("title LIKE ? OR author LIKE ?", "%#{query}%", "%#{query}%")
        rel
      end
    end
  end

  class << self
    def lend(q_book_id, q_member_id, days)
      if q_book_id.present? && q_member_id.present?
        rel = Book.find(q_book_id)
        rel.assign_attributes(lending: true)
        rel.assign_attributes(member_id: q_member_id)
        rel.assign_attributes(lend_date: Time.now.beginning_of_day.advance(days: days))
        rel.save
      end
    end
  end

  class << self 
    def delete(q_id)
      rel = Book.find(q_id)
      rel.lending = false 
      rel.member_id = nil
      rel.lend_date = nil
      rel.save
    end
  end

  class << self
    def count(member_id)
      flag = 0
      rel=Book.order("id")
      rel.each do |book|
        if book.member_id == member_id
          flag = flag + 1
        end
      end
      flag
    end
  end

  class << self
    def newbookcount(books,today)
      flag = 0
      books.each do |book| 
   	 if (today-book.created_at) / 86400 <= 3 
	   flag += 1
         end
      end
      flag 
    end
  end
end
