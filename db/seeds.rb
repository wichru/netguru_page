# frozen_string_literal: true

10.times do
  Citation.create(
    text: 'However beautiful the strategy you should occasionally look at the results')
end

10.times { Citation.create(text: 'Make it as simple as possible, but not simpler.') }
