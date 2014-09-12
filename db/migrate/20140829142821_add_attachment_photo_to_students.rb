class AddAttachmentPhotoToStudents < ActiveRecord::Migration
  def self.up
    change_table :students do |t|
      add_column :students, :photo_file_name, :string
      add_column :students, :photo_content_type, :string
      add_column :students, :photo_file_size, :string
      add_column :students, :photo_updated_at, :datetime
    end
  end

  def self.down
    remove_column :students, :photo_file_name
    remove_column :students, :photo_content_type
    remove_column :students, :photo_file_size
    remove_column :students, :photo_updated_at
    end
end
