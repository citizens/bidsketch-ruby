describe Bidsketch::Section, vcr: true do
  it_should_behave_like 'a listable object', Bidsketch::Section, [
    :id, :name, :url, :app_url, :created_at, :updated_at,
    :category, :sectiontype
  ]   


  it_should_behave_like 'a findable object',  390816, [
    :id, :name, :url, :app_url, :created_at, :updated_at,
    :category, :sectiontype, :description 
  ]
end
