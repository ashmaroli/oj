module Oj

  # This will be removed once the C extension is written but the API will
  # remain the same.
  class FileNoWriter

    # Creates a new instance with the file descriptor provided along with the
    # EncodingSpecs. Options are limited to just the :indent option as an
    # integer.
    #
    # - *fileno* [_Integer_] file descriptor to write to
    # - *specs* [_Oj::EncodeSpecs_] encoding specifications map
    # - *options* [_Hash_] options for encoding
    # 
    def initialize(fileno, specs, options=nil)
    end

    rb_define_method(oj_stream_writer_class, "push_value", stream_writer_push_value, -1);
    rb_define_method(oj_stream_writer_class, "push_json", stream_writer_push_json, -1);
    rb_define_method(oj_stream_writer_class, "pop", stream_writer_pop, 0);
    rb_define_method(oj_stream_writer_class, "pop_all", stream_writer_pop_all, 0);


    # Pushes a key onto the JSON document. The key will be used for the next
    # push if currently in a JSON object and ignored otherwise. If a key is
    # provided on the next push then that new key will be ignored.
    #
    # - *key* [_String_] the key pending for the next push
    def push_key(key)
    end

    # Pushes an object onto the JSON document. Future pushes will be to this object
    # until a pop() is called.
    #
    # - *key* [_String_] the key if adding to an object in the JSON document
    def push_object(key=nil)
    end

    # Pushes an array onto the JSON document. Future pushes will be to this
    # object until a pop() is called.
    #
    # - *key* [_String_] the key if adding to an object in the JSON document
    def push_array(key=nil)
    end

    # Pushes a value onto the JSON document.
    #
    # - *value* [_Object_] value to add to the JSON document
    # - *key* [_String_] the key if adding to an object in the JSON document
    def push_value(value, key=nil)
    end
    
    # Pushes a string onto the JSON document. The String must be a valid JSON
    # encoded string. No additional checking is done to verify the validity of
    # the string.
    #
    # - *json* [_String_] JSON string to add to the JSON document
    # - *key* [_String_] the key if adding to an object in the JSON document
    def push_json(json, key=nil)
    end

    # Pops up a level in the JSON document closing the array or object that is
    # currently open.
    def pop()
    end

    # Pops all level in the JSON document closing all the arrays or objects that
    # are currently open. The flush() method is also called.
    def pop_all()
    end

    # Flush any buffered data to the file descriptor.
    def flush()
    end

  end # Saj
end # Oj
