# ImageMagick can be unavailable or fail to convert an image. Only advertise
# variants actually produced by the generator, and never invent URLs for remote images.
module Jekyll
  module ResponsiveImages
    def available_image_variants(image_path)
      return [] unless image_path.to_s.match?(%r{\A/?assets/.*\.(?:jpe?g|png|tiff|gif)\z}i)

      site = @context.registers[:site]
      stem = image_path.sub(%r{\A/}, '').sub(/\.[^.]+\z/, '')
      (site.config.dig('imagemagick', 'widths') || []).filter_map do |width|
        path = "#{stem}-#{width}.webp"
        if File.file?(File.join(site.dest, path)) || File.file?(File.join(site.source, path))
          { 'path' => path, 'width' => width }
        end
      end
    end
  end
end

Liquid::Template.register_filter(Jekyll::ResponsiveImages)
