class AddLevelToKanji < ActiveRecord::Migration
  def change
  	 add_column :kanjis, :level, :integer
  end
end