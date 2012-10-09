include Nanoc3::Helpers::Rendering

# All files in the 'lib' directory will be loaded
# before nanoc starts compiling.
def get_blog_posts
  return @items.select { |item| item.identifier.index('/blog/') == 0 }.reverse
end

def get_item_date(item)
  return Date.parse(item.identifier.split('/').last[0..9])
end