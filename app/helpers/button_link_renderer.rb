class ButtonLinkRenderer < WillPaginate::ActionView::LinkRenderer
  protected

  def page_number(page)
    if page == current_page
      tag(:button, page, class: 'page current')
    else
      link(page, page, rel: rel_value(page), class: 'page')
    end
  end

  def previous_or_next_page(page, text, classname)
    if page
      link(text, page, class: "page #{classname}")
    else
      tag(:button, text, class: "page #{classname} disabled")
    end
  end

  def html_container(html)
    tag(:div, html, container_attributes)
  end
end
