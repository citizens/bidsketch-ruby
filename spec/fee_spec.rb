describe Bidsketch::Fee do
  describe '#all' do
    it 'returns all clients', vcr: true do
      fees = Bidsketch::Fee.all
      fee = fees.first
      attributes = [
        :id, :name, :url, :app_url, :created_at, :updated_at,
        :category, :total, :feetype, :details
      ]   

      attributes.each do |attribute|
        expect(fee.respond_to?(attribute)).to be true
      end
    end
  end

  describe '#find' do
    let(:fee_id) { 180219 }
    it 'returns a client', vcr: true do
      fee = Bidsketch::Fee.find(fee_id)
      attributes = [
        :id, :name, :url, :app_url, :created_at, :updated_at,
        :quantity, :category, :total, :currency, :amount, :unit,
        :details, :feetype, :description
      ]   

      attributes.each do |attribute|
        expect(fee.respond_to?(attribute)).to be true
      end
    end
  end
end
