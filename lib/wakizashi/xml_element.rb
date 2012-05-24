class GDataXMLElement
  module CreationMethods
    def with_html(html)
      error_ptr = Pointer.new(:id)
      elem = self.alloc.initWithHTMLString(html, error:error_ptr)
      raise Wakizashi::ParseError, error_ptr[0].description if error_ptr[0]
      elem
    end
  
    def with_xml(xml)
      error_ptr = Pointer.new(:id)
      elem = self.alloc.initWithXMLString(xml, error:error_ptr)
      raise Wakizashi::ParseError, error_ptr[0].description if error_ptr[0]
      elem
    end
  end

  extend CreationMethods
end