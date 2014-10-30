module ImageZoomer
  class Configuration
    attr_accessor :width, :height, :zoom_level
 
    def initialize
      @width = 150
      @height = 150
      @zoom_level = 3
    end

    # Override default options with the provided ones in block
	def set_options(&amp)
	  block.yield(self)
	end
  end
end