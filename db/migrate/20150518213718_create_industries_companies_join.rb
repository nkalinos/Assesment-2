class CreateIndustriesCompaniesJoin < ActiveRecord::Migration
  def change
    create_table :industries_companies_joins, id: false do |t|
      t.belongs_to :company, index: true
      t.belongs_to :industry, index: true
    end
  end
end
