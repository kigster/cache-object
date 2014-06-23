module Cache
  module Object
    class InstanceDecorator < Struct.new(:instance, :mappings)
      def keys
        [canonical_cache_key] + mapping_cache_keys
      end

      private

      def mapping_cache_keys
        mappings.map do |mapping|
          attributes = mapping.inject({}) do |memo, attr|
            memo[attr] = instance.send(attr)
            memo
          end
          KeyGenerator.key_for_mapping(instance.class.name, attributes)
        end
      end

      def canonical_cache_key
        KeyGenerator.key_for_object(instance.class.name, instance.id)
      end
    end
  end
end

