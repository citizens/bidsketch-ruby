RSpec.shared_examples 'a listable object' do |subject, attributes = []|
  let(:object) { VCR.use_cassette("#{subject.class.to_s}") { subject.class.all } }

  it "should return an array of objects" do
    expect(list.class).to eq Array
    expect(list.first.class).to eq subject
  end

  attributes.each do |attribute|
    it "should return a value for #{attribute}" do
      expect(list.first.respond_to?(attribute)).to be true
    end
  end
end
