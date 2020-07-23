class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.text :content
      t.string :image
      t.references :user, forenign_key: true
      t.references :group, forenign_key: true
      t.timestamps
    end
  end
end
