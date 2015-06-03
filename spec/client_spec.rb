describe Bidsketch::Client do
  describe '#all' do
    it 'returns all clients', vcr: true do
      clients = Bidsketch::Client.all
      client = clients.first
      attributes = [
        :id, :first_name, :last_name, :email, :name, :phone,
        :url, :app_url, :created_at, :updated_at
      ]   

      attributes.each do |attribute|
        expect(client.respond_to?(attribute)).to be true
      end
    end
  end

  describe '#find' do
    let(:client_id) { 356834 }
    it 'returns a client', vcr: true do
      client = Bidsketch::Client.find(client_id)
      attributes = [
        :id, :first_name, :last_name, :email, :name, :phone, :alt_phone,
        :website, :address_field_one, :address_field_two, :city, :state,
        :postal_zip, :country, :notes, :other_contact, :url, :app_url, 
        :created_at, :updated_at
      ]

      attributes.each do |attribute|
        expect(client.respond_to?(attribute)).to be true
      end
    end
  end
end
