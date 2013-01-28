class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      
      t.string  :member_id, null: false
      t.string  :pw, null: false
      t.string  :name, null: false
      t.boolean :lending, null: false, default: false
      t.boolean :admin, null: false, default: false
      

      t.timestamps
    end
  end
end
