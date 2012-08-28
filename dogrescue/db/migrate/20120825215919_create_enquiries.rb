class CreateEnquiries < ActiveRecord::Migration
  def change
    create_table :enquiries do |t|
      t.string :name
      t.string :email
      t.integer :dog_id
      t.text :body
      t.string :phone

      t.timestamps
    end
  end
end
