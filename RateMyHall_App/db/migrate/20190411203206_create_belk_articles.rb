class CreateBelkArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :belk_articles do |t|
      t.text :text

      t.timestamps
    end
  end
end
