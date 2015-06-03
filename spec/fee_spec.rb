describe Bidsketch::Fee, vcr: true do
  it_should_behave_like 'a listable object', Bidsketch::Fee, [
    :id, :name, :url, :app_url, :created_at, :updated_at,
    :category, :total, :feetype, :details
  ]   


  it_should_behave_like 'a findable object',  180219, [:id, :name, :url, :app_url, :created_at, :updated_at,
    :quantity, :category, :total, :currency, :amount, :unit,
    :details, :feetype, :description
  ]
end
