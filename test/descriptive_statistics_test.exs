defmodule DescriptiveStatisticsTest do
  use ExUnit.Case, async: true

  test "#sum" do
    assert 0   == DescriptiveStatistics.sum([])
    assert 6   == DescriptiveStatistics.sum([1, 2, 3])
  end

  test "#sort" do
    assert [1,2,3] == DescriptiveStatistics.sort([2,1,3])
  end

  test "#min" do
    assert nil == DescriptiveStatistics.min([])
    assert 1   == DescriptiveStatistics.min([1, 2, 3])
  end

  test "#max" do
    assert nil == DescriptiveStatistics.max([])
    assert 3   == DescriptiveStatistics.max([1, 2, 3])
  end

  test "#length" do
    assert 0 == DescriptiveStatistics.length([])
    assert 3 == DescriptiveStatistics.length([1, 2, 3])
  end

  test "#mean" do
    assert 1.5 == DescriptiveStatistics.mean([1,2])
    assert nil == DescriptiveStatistics.mean([])
  end

  test "#median" do
    assert nil == DescriptiveStatistics.median([])
    assert 2   == DescriptiveStatistics.median([1,2,6])
    assert 2.5 == DescriptiveStatistics.median([1,2,3,6])
    assert 2   == DescriptiveStatistics.median([1,2,2,6])
  end
end
