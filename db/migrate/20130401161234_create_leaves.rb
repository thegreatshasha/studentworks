class CreateLeaves < ActiveRecord::Migration
  def change
    create_table :leaves do |t|
      t.string :student_id
      t.text :reason
      t.datetime :start
      t.datetime :end
      t.boolean :approved
      t.string :warden_id
      t.string :consent
      t.text :levaddress
      t.string :phone

      t.timestamps
    end
  end
end
