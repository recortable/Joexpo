class CreateExpos < ActiveRecord::Migration
  def self.up
    create_table :expos do |t|
      t.string :name
      t.string :background_color

      t.timestamps
    end
  end

  def self.down
    drop_table :expos
  end
end
