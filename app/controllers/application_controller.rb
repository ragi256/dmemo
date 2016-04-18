class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :set_database_memos

  private

  def set_database_memos
    @database_memos = DatabaseMemo.all.includes(:data_source, :table_memos)
  end
end
