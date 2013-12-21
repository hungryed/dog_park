class CreateDogOwnerships < ActiveRecord::Migration
  def change
    create_table :dog_ownerships do |t|
      t.references :owner, null: false
      t.references :dog, null: false

      t.timestamps
    end
  end
end
