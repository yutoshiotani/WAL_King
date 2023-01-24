class Step < ApplicationRecord
  belongs_to :user
  def self.chart_date
    order(date: :asc).pluck('date', 'count').to_h
  end
end
