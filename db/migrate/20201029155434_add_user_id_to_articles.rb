class AddUserIdToArticles < ActiveRecord::Migration[6.0]
  def change
    # Add new column to the article table, the field name
    # is user_id and the type is int
    add_column :articles, :user_id, :int
  end
end
