class CreateInsurances < ActiveRecord::Migration
  def change
    create_table :insurances do |t|
      t.string :policyno, :limit => 30
      t.date :sdate 
      t.date :edate
      t.string :student_id, :limit => 30 
      t.string :password, :limit =>30
      t.integer :amount

      t.timestamps
    end
  end
end
