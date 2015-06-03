describe Bidsketch::Client, vcr: true do
  it_should_behave_like 'a listable object', Bidsketch::Client, [
    :id, :first_name, :last_name, :email, :name, :phone,
    :url, :app_url, :created_at, :updated_at
  ]   

  it_should_behave_like 'a findable object',  356834, [
    :id, :first_name, :last_name, :email, :name, :phone, :alt_phone,
    :website, :address_field_one, :address_field_two, :city, :state,
    :postal_zip, :country, :notes, :other_contact, :url, :app_url, 
    :created_at, :updated_at
  ]
end
