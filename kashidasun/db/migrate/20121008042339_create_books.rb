class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string   :title, null: false
      t.string   :author, null: false
      t.string   :isbn, null: false
      t.boolean  :lending, null: false, default: false
      t.string   :member_id, default: nil
      t.datetime :lend_date, default: nil
      t.string   :publisher
      t.datetime :pub_date
      t.integer  :page

      t.timestamps
    end
  end
end
