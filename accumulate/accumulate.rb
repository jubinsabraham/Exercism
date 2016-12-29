class Array
  def accumulate
    accumulated = []
    each do |e|
      accumulated << yield(e)
    end
    accumulated
  end
end
