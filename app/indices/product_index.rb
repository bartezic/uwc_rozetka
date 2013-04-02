ThinkingSphinx::Index.define :product, :with => :active_record do
  # fields
  indexes name
  indexes description

  # attributes
  # has author_id, created_at, updated_at
end