defmodule Months do
  @january 1
  @february 2
  @march 3
  @april 4
  @may 5
  @june 6
  @july 7
  @august 8
  @september 9
  @october 10
  @november 11
  @december 12

  def months, do: [@january, @february, @march, @april, @may, @june, @july, @august, @september, @october, @november, @december]
end

IO.inspect Months.months
