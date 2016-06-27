class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.integer :course_id
      t.string :content
      t.datetime :date_due
      t.string :reminder_type
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
