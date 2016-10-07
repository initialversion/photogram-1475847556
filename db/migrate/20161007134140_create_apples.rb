class CreateApples < ActiveRecord::Migration
  def change
    create_table :apples do |t|
      t.integer :user_id

      t.timestamps

    end
  end
end
