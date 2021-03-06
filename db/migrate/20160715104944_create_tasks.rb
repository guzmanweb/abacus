class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :subject
      t.text :description
      t.integer :progress,  default: 0
      t.integer :task_type, default: 0, null: false
      t.integer :status,    default: 0, null: false
      t.integer :author_id
      t.integer :project_id
      t.datetime :closed_at

      t.timestamps
    end

    add_index :tasks, :author_id
    add_index :tasks, :project_id
  end
end
