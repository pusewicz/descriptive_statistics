# Descriptive Statistics

[![Build Status](https://travis-ci.org/pusewicz/descriptive_statistics.png?branch=master)](https://travis-ci.org/pusewicz/descriptive_statistics)

Descriptive Statistics is a library that allows you to compute simple descriptive statistics in Elixir. Inspired by https://github.com/thirtysixthspan/descriptive_statistics.

## Examples

```
$ iex -r lib/descriptive_statistics.ex 

iex(1)> DescriptiveStatistics.sum [1,2,3]
6
iex(2)> DescriptiveStatistics.sum [2, 6, 9, 3, 5, 1, 8, 3, 6, 9, 2]
54
iex(3)> DescriptiveStatistics.mean [2, 6, 9, 3, 5, 1, 8, 3, 6, 9, 2]
4.909090909090909
iex(4)> DescriptiveStatistics.median [2, 6, 9, 3, 5, 1, 8, 3, 6, 9, 2]
5
```
