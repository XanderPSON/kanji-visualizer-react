class CreateKanjis < ActiveRecord::Migration
  def change
    create_table :kanjis do |t|
      t.string :character

      t.timestamps null: false
    end
  end
end
