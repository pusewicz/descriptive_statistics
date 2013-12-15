defmodule DescriptiveStatistics do
  def sum ary do
    :lists.sum ary
  end

  def sort ary do
    Enum.sort ary
  end

  def max([]), do: nil
  def max ary do
    Enum.max ary
  end

  def min([]), do: nil
  def min ary do
    Enum.min ary
  end

  def length ary do
    Kernel.length ary
  end

  def mean([]), do: nil
  def mean ary do
    sum(ary) / __MODULE__.length(ary)
  end

  def median([]), do: nil
  def median ary do
    sorted = sort(ary)
    length = __MODULE__.length(ary)
    half   = div(length, 2)

    if(rem(length, 2) == 0) do
      mean([
        Enum.at(sorted, half - 1),
        Enum.at(sorted, half)
      ])
    else
      Enum.at(sorted, half)
    end
  end

  def variance([]), do: nil
  def variance ary do
    mean = mean(ary)
    sum(Enum.map(ary, &((mean - &1) * (mean - &1)))) /  __MODULE__.length(ary)
  end

  def standard_deviation([]), do: nil
  def standard_deviation(ary) do
    :math.sqrt(variance(ary))
  end
end
