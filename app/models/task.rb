class Task < ApplicationRecord

  # what you want to display when the value changes
  #   enum is_done: {
  #          "not yet": false,
  #          "done": true,
  #        }

  # display only tasks that don't have deleted_at, it keeps into db, applied everywhere, priority above controller
  default_scope { where("deleted_at IS NULL") }
  # scope :not_deleted, -> { where("deleted_at IS NULL") }

  # scope :deleted, -> { where("deleted_at IS NOT NULL") }
  # in controller     @tasks = Task.deleted
  # if there is a scope but we don't want the scope
  # in controller @tasks = Task.unscope.deleted
end
