require 'tailwindcss_merger'

RSpec.describe TailwindcssMerger do
  it 'has a version number' do
    expect(TailwindcssMerger::VERSION).not_to be nil
  end
end
