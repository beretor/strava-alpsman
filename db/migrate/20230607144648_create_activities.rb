class CreateActivities < ActiveRecord::Migration[7.0]
  def change
    create_table :activities do |t|
      t.string :name
      t.string :type
      t.time :duration
      t.decimal :distance

      t.timestamps
    end
  end
end
