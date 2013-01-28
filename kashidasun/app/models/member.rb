class Member < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :member_id, :pw, :name, :lending, :admin
  validates :member_id, uniqueness: true
  validates :member_id, :pw, :name, presence: true

  class << self
    def hantei(id,pw)
      member_data = Member.find_by_member_id(id)
      if member_data.pw == pw
        result = true
      else
        result = false
      end
      result
    end

    def admin_hantei(id)
      member_data = Member.find_by_member_id(id)
      member_data.admin
    end

    
    def member_lend(id)
      rel = Member.find_by_member_id(id)
      rel.assign_attributes(lending: true)
      rel.save
    end

    def lending(id)
      rel = Member.find_by_member_id(id)
      rel.lending
    end

    def delete(member_id)
        member= Member.find_by_member_id(member_id)
        member.lending = false
        member.save
    end
  end

end
