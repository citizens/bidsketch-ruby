describe Bidsketch::Template, vcr: true do
  it_should_behave_like 'a listable object', Bidsketch::Template, [
    :id, :name, :url, :app_url, :created_at, :updated_at
  ]   


  it_should_behave_like 'a findable object',  121478, [
    :id, :name, :url, :app_url, :created_at, :updated_at,
    :sections, :fees
  ]
end
