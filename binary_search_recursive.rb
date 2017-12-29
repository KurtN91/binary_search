  def recursive(a, value)
    low, hi = get_limits(a)
    if low >= hi
      return false
    end
    mid = (low + hi) / 2
    if a[mid] == value
      mid
    elsif a[mid] < value
      recursive(a[(mid+1)..hi], value)
    else
      recursive(a[low..mid], value)
    end
  end
  
  def get_limits(a)
    [0, a.length - 1]
  end