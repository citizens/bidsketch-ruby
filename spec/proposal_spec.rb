describe Bidsketch::Proposal, vcr: true do
  it_should_behave_like 'a listable object', Bidsketch::Proposal, [ 
    :id, :url, :app_url, :created_at, :updated_at,
    :name, :description, :status, :is_draft
  ]

  it_should_behave_like 'a findable object',  189362, [
    :id, :url, :app_url, :created_at, :updated_at,
    :proposal_date, :name, :description, :status,
    :is_draft, :user, :currency, :tax, :tax2, :monthly_fees,
    :yearly_fees, :one_time_fees, :discount, :total,
    :settings, :client, :content
  ]
end
