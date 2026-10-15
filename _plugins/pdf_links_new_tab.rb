# Open links to PDFs hosted on this site (e.g. the CV icon in the navbar) in a new tab.
# External links already get target="_blank" from jekyll-link-attributes.
Jekyll::Hooks.register [:pages, :documents], :post_render do |doc|
  next unless doc.output_ext == ".html" && doc.output.include?(".pdf")

  doc.output = doc.output.gsub(/<a\s[^>]*\bhref="[^"]+\.pdf(?:[?#][^"]*)?"[^>]*>/) do |tag|
    next tag if tag.include?("target=")

    attrs = tag.include?("rel=") ? ' target="_blank"' : ' target="_blank" rel="noopener noreferrer"'
    tag.sub(/>\z/, "#{attrs}>")
  end
end
