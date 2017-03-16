require './lib/bike.rb'

describe Bike do
  it { is_expected.to respond_to :broken }

  it 'is set as broken when reported' do
    subject.report_broken
    expect(subject.broken).to eq true
  end

end
