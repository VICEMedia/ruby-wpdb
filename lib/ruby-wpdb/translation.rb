module WPDB
  class Translation < Sequel::Model(:"#{WPDB.user_prefix}icl_translations")
  end
end
