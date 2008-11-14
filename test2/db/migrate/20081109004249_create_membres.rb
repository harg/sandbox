class CreateMembres < ActiveRecord::Migration
  def self.up
    create_table :membres do |t|
	t.string :name
	t.string :prenom
      t.timestamps
    end
  end

  def self.down
    drop_table :membres
  end
end
