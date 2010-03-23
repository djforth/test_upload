class CreatePhotoAdmins < ActiveRecord::Migration
  def self.up
    create_table :photo_admins do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :photo_admins
  end
end
