RSpec.describe Source do
  it { should have_many :source_applications }
  it { should have_many :questions }
end
