module Jekyll
  class CrochetPatternBlock < Liquid::Block

    def render(context)
      text = super

      text.each_line do |line|
        if line =~ /\A\d+/ 
          "Number: #{@line}"
        else
          "A line: #{@line}"
        end
      end
    end

  end
end

Liquid::Template.register_tag('crochet', Jekyll::CrochetPatternBlock)
