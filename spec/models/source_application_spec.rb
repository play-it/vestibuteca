RSpec.describe SourceApplication do
  it { should belong_to :source }
  it { should have_many :questions }
end
