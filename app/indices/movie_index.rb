ThinkingSphinx::Index.define :movie, :with => :active_record do
  	indexes title,genre,director,cast,category
  	set_property :enable_star => 1
    set_property :min_infix_len => 2
end