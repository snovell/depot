module ApplicationHelper
  def hidden_div_if(condition, attributes = {}, &block)
    if condition
      attributes["style"] = "display: none"
    end
      content_tag("div", attributes, &block)
  end


  def dark_feature(key, &block)
    if dark_feature_enabled? key
      content_tag('div', :class => "feature #{key}", &block)
    end
  end

  def dark_feature_enabled?(key)
    if feature = DarkFeature.find_by_key(key)
      return feature.enabled?
    else
      return false
      # or if you want to throw an error for an invalid key:
      # raise StandardError, "Feature '#{key}' not found"
    end
  end


end
