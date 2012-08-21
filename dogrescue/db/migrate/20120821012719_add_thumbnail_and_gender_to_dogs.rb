class AddThumbnailAndGenderToDogs < ActiveRecord::Migration
  def change
    add_column :dogs, :thumbnail, :string
    add_column :dogs, :gender, :string
  end
end
