class CreateHostelWardens < ActiveRecord::Migration
  def change
    create_table :hostel_wardens do |t|
      t.string :hostel
      t.string :warden_id

      t.timestamps
    end
  end
end
