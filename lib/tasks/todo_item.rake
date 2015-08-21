namespace :todo_item do
  desc "delete items older than seven days"
  task delete_items: :environment do
    TodoItem.where("created_at <= ?", Time.now - 7.days).destroy_all
  end

end
