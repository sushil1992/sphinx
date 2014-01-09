ThinkingSphinx::Index.define :movie, :with => :active_record do
  indexes writer, :sortable => true
  indexes writer
	indexes description
	indexes released_on
  #indexes description
end