module ApplicationHelper
  def format_date(date)
    date.strftime("%-d %B, %Y")
  end

  def format_datetime datetime
    datetime.strftime("%-d %B %Y, %l:%M %P")
  end
end
