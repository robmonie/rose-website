module SiteHelpers

  def page_title
    title = "Rosemary Janc, Naturopath"
    if data.page.title
      title << " | " + data.page.title
    end
    title
  end

  def page_description
    if data.page.description
      description = data.page.description
    else
      description = "page description"
    end
    description
  end

  def link_to(label, url)
    current = false
    if url == '/'
      current = url == '/' && request.path == 'index.html'
    else
      current = "/#{request.path}".include?(url)
    end
    "<a href='#{url}' #{'class="active"' if current}>#{label}</a>"
  end

end