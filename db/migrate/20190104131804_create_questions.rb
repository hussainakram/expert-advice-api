class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :title
      t.string :slug
      t.text :body
      t.references :user

      t.timestamps
    end

    add_index :questions, :slug, unique: true
  end
end
