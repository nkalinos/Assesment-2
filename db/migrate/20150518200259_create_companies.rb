class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :company_name
      t.string :description
      t.integer :price
      t.belongs_to :industry, index: true, foreign_key: true
    end
  end
end
