class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
       t.string :title
       t.belongs_to :pool,index:true
       t.belongs_to :user,index:true
       t.text :description
       t.datetime :start_date
       t.datetime :limite_date
       t.boolean :private
       t.string :category 
       t.timestamps
    end
  end
end
