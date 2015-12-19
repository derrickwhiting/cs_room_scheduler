class CreateMeetings < ActiveRecord::Migration
  def change
    create_table :meetings do |t|
      t.integer :room
      t.integer :time
      t.string :email
      t.string :title
      t.string :host
      t.text :description
      t.boolean :reminder
      t.belongs_to :room
      t.belongs_to :day

      t.timestamps null: false
    end
  end
end
