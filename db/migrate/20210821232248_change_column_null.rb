class ChangeColumnNull < ActiveRecord::Migration[6.1]
  def change
    change_column_null(:gifts, :recipient_id, true)
  end
end
