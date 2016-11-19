RSpec.describe Alternative do
  it { should belong_to :question }
  it { should have_many :attachments }
end
