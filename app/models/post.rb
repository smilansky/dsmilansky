class Post < ActiveRecord::Base

  extend FriendlyId
  before_save :store_markdown

  friendly_id :title, use: :slugged

  
  def store_markdown
    renderer = Redcarpet::Render::HTML.new(render_options = {})
    markdown = Redcarpet::Markdown.new(renderer, extensions = {})  
    self.markdown_content = markdown.render(self.content)
  end
  
end
