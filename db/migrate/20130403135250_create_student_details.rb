class CreateStudentDetails < ActiveRecord::Migration
  def change
    create_table :student_details do |t|
      t.string :student_id ,:limit => 30 
      t.string :college_id ,:limit => 30
      t.string :name ,:limit => 30
      t.date :dob
      t.string :sex , :limit => 1
      t.string :bloodgroup, :limit => 5
      t.string :mobile, :limit => 14
      t.string :email
      t.string :fname, :limit => 30
      t.string :mname, :limit => 30
      t.string :feepayingP, :limit => 30
      t.string :relation, :limit => 2
      t.date :pdob
      t.string :psex, :limit => 2
      t.string :pmobile, :limit => 14
      t.string :plandline, :limit => 14
      t.string :pmail
      t.string :hostel, :limit => 5 
      t.string :room, :limit => 5

      t.timestamps
    end
  end
end
