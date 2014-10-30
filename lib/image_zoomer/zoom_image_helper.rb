module ImageZoomer
  def zoom_image_tag(*args, &amp)
    p "prams zoom_image_tag"
    p *args
    p &amp
    options = insert_zoom_class(args.extract_options!)
    args << options
    image_tag(*args, &amp )
  end
 
  def insert_zoom_class(options)
    class_name = "image_zoomer"
    if options.key?(:class)
      options[:class] += " #{class_name}"
    elsif options.key?('class')
      options['class'] += " #{class_name}"
    else
      options[:class] = class_name
    end
    options
  end
end