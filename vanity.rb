# frozen_string_literal: true

DAYS = [
  '2018-07-02',
  '2018-07-03',
  '2018-07-04',
  '2018-07-05',
  '2018-07-06',
  '2018-07-09',
  '2018-07-11',
  '2018-07-13',
  '2018-07-16',
  '2018-07-18',
  '2018-07-20',
  '2018-07-25',
  '2018-07-26',
  '2018-07-27'
].freeze

def main
  DAYS.each do |day|
    make_commit_on_day(day)
  end
end

def make_commit_on_day(day)
  make_one_commit("#{day}T12:00:00")
end

def make_one_commit(date)
  `GIT_COMMITTER_DATE='#{date}' git commit --allow-empty -m '[vanity]' --date='#{date}'`
end

main
