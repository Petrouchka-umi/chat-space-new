class CreateUsersGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :users_groups do |t|
      t.references :user, null: false, forenign_key: true
      t.references :group, null: false, forenign_key: true
      t.timestamps
    end
  end
end
