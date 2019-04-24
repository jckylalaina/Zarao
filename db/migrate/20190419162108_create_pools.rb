class CreatePools < ActiveRecord::Migration[5.2]
  def change
    create_table :pools do |t|
      t.belongs_to :space,index:true
      t.belongs_to :user,index:true
      t.string :title
      t.boolean :private
      t.timestamps
    end
  end
end
