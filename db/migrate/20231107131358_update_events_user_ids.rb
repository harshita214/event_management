class UpdateEventsUserIds < ActiveRecord::Migration[7.1]
  def up
    Event.update_all(user_id: nil)
  end

  def down
    # If you need to reverse this migration, you can specify the rollback behavior here.
    # If you don't need to reverse it, you can leave this method empty.
  end
end
