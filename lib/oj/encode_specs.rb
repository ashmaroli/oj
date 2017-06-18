module Oj

  # This will be removed once the C extension is written but the API will
  # remain the same.
  class EncodeSpecs

    # Initialize the instance with the contents of the map which should use
    # classes as the keys and another map as the value. The value associated
    # with the map is should have symbol keys with one of the values :include,
    # :exclude, or :call.
    #
    # An example is:
    # {
    #    <my-class> => { include: [:name, :id] },
    #    <another-class> => { exclude: [:secret] },
    #    <rails-class> => { call: :as_json }
    # }
    def initialize(map=nil)
    end

    # 
    def call(clas, method)
    end

    # 
    def include(clas, attrs)
    end

    # 
    def exclude(clas, attrs)
    end

    # 
    def to_h()
    end

  end # EncodeSpecs
end # Oj
