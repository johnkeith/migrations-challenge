class SplitFullNameInReaders < ActiveRecord::Migration
  def up
    add_column :readers, :first_name, :string
    add_column :readers, :last_name, :string

    readers = Reader.all

    readers.each do |reader|
      full_name = reader.full_name.split(" ")
      reader.update(first_name: full_name[0], last_name: full_name[1])
    end

    remove_column :readers, :full_name
  end

  def down
    add_column :readers, :full_name, :string

    readers = Reader.all

    readers.each do |reader|
      full_name = reader.first_name + " " + reader.last_name
      reader.update(full_name: full_name)
    end

    remove_column :readers, :first_name
    remove_column :readers, :last_name
  end
end
