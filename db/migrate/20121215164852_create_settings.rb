class CreateSettings < ActiveRecord::Migration
  def change
    create_table :settings do |t|
      t.text :assets

      t.timestamps
    end
  end
end
