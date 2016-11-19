RSpec.describe Question do
  it { should belong_to :source_application }
  it { should have_many :alternatives }
end
