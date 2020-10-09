class CreateAquaria < ActiveRecord::Migration[5.2]
  def change
    create_table :aquaria do |t|
      t.string :name
      t.text :address
      t.string :phone_number
      t.text :official_url
      t.string :business_hours

      t.timestamps
    end
  end
end
