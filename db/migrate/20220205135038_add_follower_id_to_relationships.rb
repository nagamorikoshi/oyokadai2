class AddFollowerIdToRelationships < ActiveRecord::Migration[6.1]
  def change
    add_column :relationships, :follower, :string
  end
end
