require 'json'
module Alfred
  class Workflow
    attr_accessor :items

    def initialize
      @items = []
    end

    def <<(item)
      @items << item if item.is_a? Alfred::Item
    end

    alias_method :add, :<<

    def to_json
      JSON.pretty_generate({items: items.map(&:to_h)})
    end

    def output!
      puts to_json
    end
  end

  class Item
    attr_accessor :title, :subtitle, :arg, :uid, :icon_path, :icon_type, :type, :valid, :autocomplete

    def initialize(attributes = {})
      attributes.each do |attribute,value|
        send("#{attribute}=", value) if respond_to? "#{attribute}="
      end
    end

    def uid
      @uid || title
    end

    def icon_type
      @icon_type if %w{fileicon filetype}.include? @icon_type
    end

    def valid
      if @valid == false
        'no'
      else
        'yes'
      end
    end

    def autocomplete
      @autocomplete || title
    end

    def type
      @type if @type == 'file'
    end

    def to_h
      h = {
        arg: arg,
        uid: uid,
        title: title,
        subtitle: subtitle
      }
      if icon_path || icon_type
        h[:icon] = {}
        h[:icon_type] = icon_type
        h[:icon_path] = icon_path
      end
      h[:type] = type if type
      h
    end
  end
end
