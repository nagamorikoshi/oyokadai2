class CreateRelationships < ActiveRecord::Migration[6.1]
  def change
    create_table :relationships do |t|
      
      t.string :follower_id
      t.string :folloewd_id

      t.timestamps
    end
  end
end
