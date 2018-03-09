class CreateTwts < ActiveRecord::Migration[5.1]
  def change
    create_table :twts do |t|
      t.text :content
    end
  end
end
