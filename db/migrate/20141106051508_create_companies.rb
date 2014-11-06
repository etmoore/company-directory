class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :city
      t.boolean :nonprofit
      
      t.timestamps
    end
  end
end
