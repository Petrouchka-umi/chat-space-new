class CreateUsersGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :users_groups do |t|
      t.references :user, forenign_key: true
      t.references :group, forenign_key: true
      t.timestamps
    end
  end
end
