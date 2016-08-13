class CreateKinds < ActiveRecord::Migration
  def change
    create_table :kinds do |t|
      t.string :description

      t.timestamps null: false #created_at, updated_at (atualiza o campo de dados com data e hora do registro)
    end
  end
end
