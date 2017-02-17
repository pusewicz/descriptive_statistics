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

  test "#variance" do
    assert 0 == DescriptiveStatistics.variance([1,1,1,1])
    assert 8.25 == DescriptiveStatistics.variance([1,2,3,4,5,6,7,8,9,10])
  end

  test "#standard_deviation" do
    assert 0 == DescriptiveStatistics.standard_deviation([1,1,1,1])
    assert 2.8722813232690143 == DescriptiveStatistics.standard_deviation([1,2,3,4,5,6,7,8,9,10])
  end

  test '#range' do
    assert nil == DescriptiveStatistics.range([])
    assert 5   == DescriptiveStatistics.range([1,2,6])
  end

  test '#percentile_from_value' do
    assert nil == DescriptiveStatistics.percentile_from_value([], 1)

    data = [95.1772, 95.1567, 95.1937, 95.1959, 95.1442, 95.061, 95.1591, 95.1195,95.1065, 95.0925, 95.199, 95.1682]
    percentiles = [0,9,17,25,34,42,50,59,67,75,84,92]

    data
    |> Enum.sort
    |> Enum.with_index
    |> Enum.each(fn { datum, idx } ->
      assert Enum.fetch!(percentiles, idx) == DescriptiveStatistics.percentile_from_value(data, datum)
    end)
  end

  test '#value_from_percentile' do
    assert nil == DescriptiveStatistics.value_from_percentile([], 1)

    data = [95.1772, 95.1567, 95.1937, 95.1959, 95.1442, 95.061, 95.1591, 95.1195,95.1065, 95.0925, 95.199, 95.1682]
    percentiles = [0,10,20,30,40,50,60,70,80,90]
    values = [95.061,95.1065,95.1195,95.1442,95.1567,95.1591,95.1772,95.1937,95.1959,95.199]

    percentiles
    |> Enum.sort
    |> Enum.with_index
    |> Enum.each(fn { percentile, idx } ->
      assert Enum.fetch!(values, idx) == DescriptiveStatistics.value_from_percentile(data, percentile)
    end)
  end
end
