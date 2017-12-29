def iterative(a, value)
    low, hi = get_limits(a)
    while low < hi
      mid = (low + hi) / 2
      if a[mid] == value
        return mid
      elsif a[mid] < value
        low = mid + 1
      else
        hi = mid
      end
    end
    false
  end
  
  def get_limits(a)
    [0, a.length - 1]
  end