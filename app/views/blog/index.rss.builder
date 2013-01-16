xml.instruct! :xml, version: '1.0'
xml.rss version: '2.0' do
  xml.channel do
    xml.title 'Five Tool Development'
    xml.description 'A blog about software development'
    xml.link blog_url

    @blog_entries.each do |blog_entry|
      xml.item do
        xml.title blog_entry.title
        xml.author blog_entry.author
        xml.description blog_entry.content
        xml.pubDate blog_entry.published_at.to_s(:rfc822)
        xml.link published_blog_entry_url(blog_entry)
        xml.guid published_blog_entry_url(blog_entry)
      end
    end
  end
end