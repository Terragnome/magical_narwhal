xml.instruct! :xml, :version => "1.0" 
xml.rss :version => "2.0" do
  xml.channel do
    xml.title @app_title
    xml.description @app_description
    xml.link feed_url()

    for post in @posts
      xml.item do
        xml.title post.title
        xml.icon "/favicon.ico"
        xml.link post_url(post.id)
        xml.guid post_url(post.id)
      end
    end
  end
end