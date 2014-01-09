ThinkingSphinx::Index.define :movie, :with => :active_record do
  indexes writer, :sortable => true
	indexes description
	indexes released_on
end